# Paper fork template

Create a paper fork with ease.  

## Using the template
Firstly just click the use template button within github.  
This will start a action on your github repository, which should only take a couple seconds.  
  
When the action is finished you can clone your repository.  

You can set up your project using the following command.
```bash
./gradlew applyPatches
```
This will clone the paper repository and apply its patches to minecraft server.  
**Note that the \*-API and \*-Server repo should always be in the gitignore.  
Failing to do so will probably lead in a takedown request by Microsoft and possible legal action!**

## Modifying the source code.
Modifying the source code is slightly different from what you are used to in java projects.  
Once you edited something you will create a commit as normal (You might need to do this via the command line since IntellIJ doesn't always enjoy this git setup).
After you created your commit you need to run:
```bash
./gradlew rebuildPatches
```
This will generate the new patches from your commit(s).

## Building
To build the project run:
```bash
./gradlew reobfJar
```

## Extra documentation
For a more in depth explanation of this structure please visit paper's [Contributing](https://github.com/PaperMC/Paper/blob/master/CONTRIBUTING.md) page.

## Tips

### Slow performance on windows
If you are experiencing slow performance I recommend installing WSL2 ubuntu, and using that to build the project.
(The project should then also be in the WSL's drive)