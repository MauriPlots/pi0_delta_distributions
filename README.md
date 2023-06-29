
# Conform to htmlImageBrowserCreator


## Rename files


To batch rename files in a directory, open find, select all, and right click to rename.

Examples:

`plain_cro_theta_W1.25_Q26.00` must become `cro-theta_W-1.25_Q-26.00`:

- `cro_` > `cro-` 
- `_W` > `_W-`
- `_Q2` > `_Q6-`


- To convert to png use the script `convert.zsh`:

```
cd img
../../convert.zsh
```


### Experimental Cross sections

```
rm -rf imageslist.txt ; ls img > imageslist.txt
../../../htmlBrowserCreator/pageCreator \
                                        -addRowTableVariable=W  \
                                        -addColumnTableVariable=Q2 \
                                        -addSelectableVariable=cro  \
                                        -defaultPlot=img/cro-phi_W-1.23_Q2-3.50.png \
                                        -imagesSize="500 600"
```




### Theoretical Cross sections

```
rm -rf imageslist.txt ; ls img > imageslist.txt
../../../htmlBrowserCreator/pageCreator \
                                        -addRowTableVariable=W  \
                                        -addColumnTableVariable=Q2 \
                                        -addSelectableVariable=cro  \
                                        -defaultPlot=img/cro-phi_W-1.23_Q2-3.50.png \
                                        -imagesSize="500 600"
```



---


If the distribution type name is at the beginning of the file, the html file can be modified.



For example:

			    var dist = "img/"
			    dist += "W-"
			    dist += row;
			    dist += "_"
			    dist += "Q2-"
			    dist += col;
			    dist += "_cro-";
			    dist += cro;
			    dist += ".png"

becomes:

			    var dist = "img/"
			    dist += "cro-";
			    dist += cro;
			    dist += "_W-"
			    dist += row;
			    dist += "_"
			    dist += "Q2-"
			    dist += col;
			    dist += ".png"
			    document.DIST.src = dist

The popPic dimensions could be adjusted as well 