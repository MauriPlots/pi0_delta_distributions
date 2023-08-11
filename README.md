
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


### Structure Functions
```
rm -rf imageslist.txt ; ls img > imageslist.txt
../../../htmlBrowserCreator/pageCreator \
                                        -addRowTableVariable=dist  \
                                        -addColumnTableVariable=Q2 \
                                        -addSelectableVariable=L  \
                                        -defaultPlot=img/dist-lpt_Q2-3.00_L-2.png \
                                        -imagesSize="500 600"
```

### Legendre Coefficients

```
rm -rf imageslist.txt ; ls img > imageslist.txt
../../../htmlBrowserCreator/pageCreator \
                                        -addRowTableVariable=coeff  \
                                        -addColumnTableVariable=q2 \
                                        -addSelectableVariable=L  \
                                        -defaultPlot=img/coeff-A_q2-3.50_L-2.png \
                                        -imagesSize="500 600"
```

### Multipoles

Two directories for two different distributions


```
rm img ; ln -s img_poles img
rm -rf imageslist.txt ; ls img > imageslist.txt
../../../htmlBrowserCreator/pageCreator \
                                        -addRowTableVariable=pole  \
                                        -addColumnTableVariable=L  \
                                        -defaultPlot=img/pole-m1p2_L-1.png \
                                        -imagesSize="500 600"
mv page.html poles.html                                      
```

```
rm img ; ln -s img_q2 img
rm -rf imageslist.txt ; ls img > imageslist.txt
../../../htmlBrowserCreator/pageCreator \
                                        -addRowTableVariable=q2  \
                                        -addColumnTableVariable=L  \
                                        -defaultPlot=img/q2-2.40_L-2.png \
                                        -imagesSize="500 600"
mv page.html q2.html                                      
```

Edit both poles.html and q2.html to point to the img_< name> instead of img




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