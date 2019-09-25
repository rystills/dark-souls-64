import fileinput
import shutil
import glob
import os

levelName = "bob"

# TODO: calculate shadow size from geo verts
shadowSizes = {"pipeMimic":500}

# copy in actors
for file in glob.glob("/mnt/c/Users/Ryan/Documents/git-projects/sm64HalloweenHack/*.fbx"):
	# skip room1 as that's the single hard-coded level (for now)
	if "room1.fbx" in file:
		continue
	fileName = file.split("/")[-1]
	fileNameNoExt = fileName.split(".")[0]
	# copy actor fbx
	shutil.copyfile(file, fileName)

	# build actor
	os.system("./modconv2 --type collision " + fileName + " & ./modconv2 " + fileName)

	# delete older folder if it exists
	if os.path.exists(fileNameNoExt) and os.path.isdir(fileNameNoExt):
		shutil.rmtree(fileNameNoExt)

	# rename build folder
	os.rename("model",fileNameNoExt)

	# create actor folder if it doesnt exist
	if not (os.path.exists("../../sm64/actors/{0}".format(fileNameNoExt))):
		os.mkdir("../../sm64/actors/{0}".format(fileNameNoExt))

	# edit and copy actor collision
	with open("{0}/collision.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_collision","glabel {0}_collision".format(fileNameNoExt))
	fdataScaled = []

	# scale collision down by 3.5x to match geo (temporary hack, until the cause is determined)
	for line in (fdata.split("\n")):
		if (not "colVertex " in line):
			fdataScaled.append(line)
		else:
			nums = line[10:].replace(" ","").split(",")
			for n in range(len(nums)):
				nums[n] = int(int(nums[n])//3.5)
			fdataScaled.append("colVertex " + str(nums).replace("[","").replace("]",""))
	fdata = "\n".join(fdataScaled)

	with open("{0}/collision.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./" + fileNameNoExt + "/collision.s", "../../sm64/actors/{0}/collision.s".format(fileNameNoExt))

	# edit and copy actor model
	with open("{0}/model.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_dl_opaque","glabel {0}_dl_opaque".format(fileNameNoExt)).replace('.incbin "actors/model/','.incbin "actors/{0}/'.format(fileNameNoExt))

	with open("{0}/model.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./" + fileNameNoExt + "/model.s", "../../sm64/actors/{0}/model.s".format(fileNameNoExt))

	# edit and copy actor geo
	with open("{0}/geo.s".format(fileNameNoExt),"r") as f:
		fdata = f.read()

	fdata = fdata.replace("glabel model_geo","glabel {0}_geo".format(fileNameNoExt)).replace("model_dl_opaque","{0}_dl_opaque".format(fileNameNoExt))
	if (fileNameNoExt in shadowSizes):
		fdata = fdata.replace("geo_shadow SHADOW_CIRCLE_4_VERTS, 0xC8, 60","geo_shadow SHADOW_CIRCLE_4_VERTS, 0xC8, {0}".format(shadowSizes[fileNameNoExt]))

	with open("{0}/geo.s".format(fileNameNoExt),"w") as f:
	  f.write(fdata)

	shutil.copyfile("./" + fileNameNoExt + "/geo.s", "../../sm64/actors/{0}/geo.s".format(fileNameNoExt))

	# copy actor textures
	for file in glob.glob("{0}/*.png".format(fileNameNoExt)):
		shutil.copyfile(file,"../../sm64/actors/{0}".format(fileNameNoExt) + "/" + file.split("/")[1])


# copy in new fbx from windows
shutil.copyfile("/mnt/c/Users/Ryan/Documents/git-projects/sm64HalloweenHack/room1.fbx", "./room1.fbx")

# copy in textures from windows
for file in glob.glob("/mnt/c/Users/Ryan/Documents/git-projects/sm64HalloweenHack/*.png"):
	shutil.copyfile(file,file.split("/")[-1])

# build level + collision via modconv
os.system("./modconv2 --type collision --level room1.fbx & ./modconv2 --level room1.fbx")

# delete older folder if it exists
if os.path.exists("room1") and os.path.isdir("room1"):
	shutil.rmtree("room1")

# rename model folder
os.rename("model","room1")

# edit and copy collision.s
with open("room1/collision.s","r") as f:
	fdata = f.read()

fdata = fdata.replace("glabel model_collision","glabel {0}_collision".format(levelName))

with open("room1/collision.s","w") as f:
  f.write(fdata)

shutil.copyfile("./room1/collision.s", "../../sm64/levels/{0}/areas/1/collision.s".format(levelName))

# edit and copy model.s
with open("room1/model.s","r") as f:
	fdata = f.read()

fdata = fdata.replace("glabel model_dl_opaque","glabel {0}_dl".format(levelName))

with open("room1/model.s","w") as f:
  f.write(fdata)

shutil.copyfile("./room1/model.s", "../../sm64/levels/{0}/areas/1/1/model.s".format(levelName))

# edit and copy texture.s
with open("room1/texture.s","r") as f:
	fdata = f.read()

fdata = fdata.replace("levels/model/","levels/{0}/".format(levelName))

with open("room1/texture.s","w") as f:
  f.write(fdata)

shutil.copyfile("./room1/texture.s", "../../sm64/levels/{0}/texture.s".format(levelName))

# copy texture files
for file in glob.glob("room1/*.png"):
	shutil.copyfile(file,"../../sm64/levels/{0}".format(levelName) + "/" + file.split("/")[1])

# rereun make
os.chdir("/home/rystills/Desktop/sm64")
os.system("make")

# copy new rom back into windows
shutil.copyfile("/home/rystills/Desktop/sm64/build/us/sm64.us.z64","/mnt/c/Users/Ryan/Documents/git-projects/sm64HalloweenHack/sm64.us.z64")