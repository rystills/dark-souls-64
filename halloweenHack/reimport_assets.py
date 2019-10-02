import fileinput, shutil, glob, os, fnmatch, re

def globInsensitive(which, where='.'):
    rule = re.compile(fnmatch.translate(which), re.IGNORECASE)
    return [where + "/" + name for name in os.listdir(where) if rule.match(name)]

# !Please run this tool from inside your modconv build folder!

region = "us"
levelName = "bob"

# directory in which your fbx model and texture files are stored (note that these will all be copied into your modconv build folder)
#TODO: consider deleting these copied files after you're done with them 
inputDir = "/mnt/c/Users/Ryan/Documents/git-projects/sm64HalloweenHack"
# directory in which to place the final rom. set to "" to not copy the rom anywhere
outputRomDir = "/mnt/c/Users/Ryan/Documents/git-projects/sm64HalloweenHack"
# directory of the cloned sm64 decomp source in which your romhack resides
sm64RepoDir = "/home/rystills/Desktop/sm64"

# Actor shadow size. If not specified here, the default value of 60 is used
# TODO: calculate shadow size from geo verts
shadowSizes = {"pipeMimic":125, "bonfire":0, "unstablePlatform":0, "shortcutElevator":0}
# view frustrum culling radius. If not specified here, the node is left out, resulting in a default value of 300
cullingRadii = {"unstablePlatform":"3000"}
# scrolling textures to label for easy access
scrollingTextures = {"model_texture_0":"clouds_texLoad", "model_texture_8":"purpleGoop_texLoad"}

# all files in levelFiles will be treated as a level; all other files will be treated as an actor
# TODO: currently only one level file at a time is supported, since the tool automatically places the level files in bob
levelFiles = {"room1.fbx"}

# TODO: textures for new actors may not be discovered until the tool is run a second time (determine cause and resolve)

# copy in actors
for file in globInsensitive("*.fbx",inputDir):
	fileName = file.split("/")[-1]
	# skip level files at first, and skip collision meshes until their parent is found
	if fileName in levelFiles or "_collision" in fileName:
		continue
	
	fileNameNoExt = fileName.split(".")[0]
	# copy actor fbx
	shutil.copyfile(file, fileName)

	# build actor, optionally using a dedicated collision mesh if found
	colFile = file[:-4] + "_collision" + file[-4:]
	if (os.path.exists(colFile)):
		colFileName = colFile.split("/")[-1]
		shutil.copyfile(colFile, colFileName)
		os.system("./modconv2 --type collision " + colFileName + " & ./modconv2 " + fileName)
	else:
		os.system("./modconv2 --type collision " + fileName + " & ./modconv2 " + fileName)

	# delete older folder if it exists
	if os.path.exists(fileNameNoExt) and os.path.isdir(fileNameNoExt):
		shutil.rmtree(fileNameNoExt)

	# rename build folder
	os.rename("model",fileNameNoExt)

	# create actor folder if it doesnt exist
	if not (os.path.exists(sm64RepoDir + "/actors/{0}".format(fileNameNoExt))):
		os.mkdir(sm64RepoDir + "/actors/{0}".format(fileNameNoExt))

	# edit and copy actor collision
	with open("{0}/collision.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_collision","glabel {0}_collision".format(fileNameNoExt))
	fdataScaled = []

	# scale collision down by 4.05x to roughly match geo (TODO: temporary hack; determine cause and resolve)
	for line in (fdata.split("\n")):
		if (not "colVertex " in line):
			fdataScaled.append(line)
		else:
			nums = line[10:].replace(" ","").split(",")
			for n in range(len(nums)):
				nums[n] = int(int(nums[n])//4.05)
			fdataScaled.append("colVertex " + str(nums).replace("[","").replace("]",""))
	fdata = "\n".join(fdataScaled)

	with open("{0}/collision.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./" + fileNameNoExt + "/collision.s", sm64RepoDir + "/actors/{0}/collision.s".format(fileNameNoExt))

	# edit and copy actor model
	with open("{0}/model.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_dl_opaque","glabel {0}_dl_opaque".format(fileNameNoExt)).replace('.incbin "actors/model/','.incbin "actors/{0}/'.format(fileNameNoExt))
	fdata = fdata.replace("model_","{0}_".format(fileNameNoExt))
	# label scrolling textures
	for i in scrollingTextures.keys():
		if i in fdata:
			fdata = fdata.replace("gsDPLoadTextureBlock {0}".format(i),"glabel " + scrollingTextures[i]+"\ngsDPLoadTextureBlock {0}".format(i))

	with open("{0}/model.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./" + fileNameNoExt + "/model.s", sm64RepoDir + "/actors/{0}/model.s".format(fileNameNoExt))

	# edit and copy actor geo
	with open("{0}/geo.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_geo","glabel {0}_geo".format(fileNameNoExt)).replace("model_dl_opaque","{0}_dl_opaque".format(fileNameNoExt))
	if (fileNameNoExt in cullingRadii):
		fdata = fdata.replace("geo_shadow","geo_culling_radius {0}\ngeo_open_node\ngeo_shadow".format(cullingRadii[fileNameNoExt]),1)
		fdata = fdata.replace("geo_end","geo_close_node\ngeo_end")
	if (fileNameNoExt in shadowSizes):
		if (shadowSizes[fileNameNoExt] == 0):
			# if the shadow size is 0, remove the line and the corresponding geo_open_node and geo_close_node entirely
			fdata = fdata.replace("geo_shadow SHADOW_CIRCLE_4_VERTS, 0xC8, 60\n","").replace("geo_open_node\n","",1)
			# TODO: for more complex geo scripts, the final close node may not correspond to the deleted open node
			fdata = fdata[::-1].replace("geo_close_node\n"[::-1],"",1)[::-1]
		else:
			fdata = fdata.replace("geo_shadow SHADOW_CIRCLE_4_VERTS, 0xC8, 60","geo_shadow SHADOW_CIRCLE_4_VERTS, 0xC8, {0}".format(shadowSizes[fileNameNoExt]))
	

	with open("{0}/geo.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./" + fileNameNoExt + "/geo.s", sm64RepoDir + "/actors/{0}/geo.s".format(fileNameNoExt))

	# copy actor textures
	for file in globInsensitive("*.png",fileNameNoExt):
		shutil.copyfile(file, sm64RepoDir + "/actors/{0}".format(fileNameNoExt) + "/" + file.split("/")[1])


# copy in levels
for file in globInsensitive("*.fbx",inputDir):
	fileName = file.split("/")[-1]
	# skip level files at first, and skip collision meshes until their parent is found
	if fileName not in levelFiles:
		continue

	fileNameNoExt = fileName.split(".")[0]
	shutil.copyfile(inputDir + "/{0}".format(fileName), "./{0}".format(fileName))

	# copy in textures from windows
	for file in globInsensitive("*.png",inputDir):
		shutil.copyfile(file,file.split("/")[-1])


	# build level, optionally using a dedicated collision mesh if found
	colFile = file[:-4] + "_collision" + file[-4:]
	if (os.path.exists(colFile)):
		colFileName = colFile.split("/")[-1]
		shutil.copyfile(colFile, colFileName)
		os.system("./modconv2 --type collision --level " + colFileName + " & ./modconv2 --level " + fileName)
	else:
		os.system("./modconv2 --type collision --level {0} & ./modconv2 --level {0}".format(fileName))

	# delete older folder if it exists
	if os.path.exists(fileNameNoExt) and os.path.isdir(fileNameNoExt):
		shutil.rmtree(fileNameNoExt)

	# rename model folder
	os.rename("model",fileNameNoExt)

	# edit and copy collision.s
	with open("{0}/collision.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_collision","glabel {0}_collision".format(levelName))

	with open("{0}/collision.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./{0}/collision.s".format(fileNameNoExt), sm64RepoDir + "/levels/{0}/areas/1/collision.s".format(levelName))

	# edit and copy model.s
	with open("{0}/model.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_dl_opaque","glabel {0}_dl".format(levelName))
	# label scrolling textures
	for i in scrollingTextures.keys():
		if i in fdata:
			fdata = fdata.replace("gsDPLoadTextureBlock {0}".format(i),"glabel " + scrollingTextures[i]+"\ngsDPLoadTextureBlock {0}".format(i))

	with open("{0}/model.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./{0}/model.s".format(fileNameNoExt), sm64RepoDir + "/levels/{0}/areas/1/1/model.s".format(levelName))

	# edit and copy texture.s
	with open("{0}/texture.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("levels/model/","levels/{0}/".format(levelName))

	with open("{0}/texture.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./{0}/texture.s".format(fileNameNoExt), sm64RepoDir + "/levels/{0}/texture.s".format(levelName))

	# copy texture files
	for file in globInsensitive("*.png",fileNameNoExt):
		shutil.copyfile(file,sm64RepoDir + "/levels/{0}".format(levelName) + "/" + file.split("/")[1])

# rereun make
os.chdir(sm64RepoDir)
os.system("make")

# copy new rom back into windows
if (outputRomDir != ""):
	shutil.copyfile(sm64RepoDir + "/build/{0}/sm64.{0}.z64".format(region),outputRomDir + "/sm64.{0}.z64".format(region))