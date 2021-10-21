# General 
The general guidelines for the design of the application, where the prototypes can be found in this file:

[Prototypes](prototypes/Prototypes2020E.xd)

Which can be opened in Axure XD, which can be downloaded from the AAU software portal.

## Typography

The font used in the applications is [Quicksand font](https://fonts.google.com/specimen/Quicksand), and it should be used for all text in the application. In regard to font size the following guidelines have been set:
- Pictograms : 150
- Timers : 50
- Buttons : 23
- Small text : 20
- Medium text : 24
- Large text : 30

These font sizes have been declared in the file *font_sizes* in the weekplanner repo. In regard to styling *bold, italic or underlined*, it is prohibited to use any form of styling.

## Color codes

The main theme of the application is orange, where there are different color codes for each part of the application.

### Text and background

|Usage|RGB | HEX| Color |
|---|---|---|---|
| Regular text-color | `0,0,0` | `#000000`|![#000000](https://placehold.it/15/000000/000000?text=+) |
| Text-color used to indicate placeholder or hint-texts |`170,170,170`|`#AAAAAA` |![#AAAAAA](https://placehold.it/15/AAAAAA/000000?text=+) |
| Background-color for any applications window background | `0,0,0`|`#000000` | ![#000000](https://placehold.it/15/000000/000000?text=+)|
| Background-color for any activity | `233,233,233`|`#E9E9E9` | ![#E9E9E9](https://placehold.it/15/E9E9E9/000000?text=+)|
| Showcase help text-color |`255,255,255` |  `#FFFFFF` |![#FFFFFF](https://placehold.it/15/FFFFFF/000000?text=+)|

### Buttons

|Usage|RGB|HEX|Color|
|---|---|---|---|
| Regular button background | `255,205,89` <br> `255,157,0`|`#FFCD59` <br> `#FF9D00` |![#FFCD59](https://placehold.it/15/FFCD59/000000?text=+)<br> ![#FF9D00](https://placehold.it/15/FF9D00/000000?text=+)
| Regular button stroke/border | `138,110,0` |`#8A6E00`| ![#8A6E00](https://placehold.it/15/8A6E00/000000?text=+) |
| Pressed button background|`212,173,47`<br> `255,157,0`| `#D4AD2F` <br> `#FF9D00` |  ![#D4AD2F](https://placehold.it/15/D4AD2F/000000?text=+) <br>![#FF9D00](https://placehold.it/15/FF9D00/000000?text=+)
| Pressed button stroke/border | `#493700` |`73,55,0`|![#493700](https://placehold.it/15/493700/000000?text=+)

### Images

|Usage|RGB|HEX|Color|
|---|---|---|---|
| Image background-color|`255,255,255`| `#FFFFFF`| ![#FFFFFF](https://placehold.it/15/FFFFFF/000000?text=+)
|Image border-color |`0,0,0`| `#000000`| ![#000000](https://placehold.it/15/000000/000000?text=+)
|Image marking-color |`254,215,108`| `#FED76C`| ![#FED76C](https://placehold.it/15/FED76C/000000?text=+)

### Bars

|Usage|RGB|HEX|Color|
|---|---|---|---|
| Background of any bar|`253,187,85` <br>`254,215,108`| `#FDBB55`<br> `#FED76C` | ![#FDBB55](https://placehold.it/15/FDBB55/000000?text=+) <br> ![#FED76C](https://placehold.it/15/FED76C/000000?text=+)
|Stroke/border of the bar|`229,190,83`| `#E5BE53`| ![#E5BE53](https://placehold.it/15/E5BE53/000000?text=+)

### Week indicators

|Usage|RGB|HEX|Color|
|---|---|---|---|
| Monday |`8,160,69` | `#08A045`| ![#08A045](https://placehold.it/15/08A045/000000?text=+)
| Tuesday |`84,13,110` |`#540D6E`| ![#540D6E](https://placehold.it/15/540D6E/000000?text=+)
| Wednesday |`247,127,0`| `#F77F00`| ![#F77F00](https://placehold.it/15/F77F00/000000?text=+)
| Thursday |`0,71,119`| `#004777`| ![#004777](https://placehold.it/15/004777/000000?text=+)
| Friday |`249,200,14` |`#F9C80E`| ![#F9C80E](https://placehold.it/15/F9C80E/000000?text=+)
| Saturday |`219,43,57` |`#DB2B39`| ![#DB2B39](https://placehold.it/15/DB2B39/000000?text=+)
| Sunday |`255,255,255` |`#FFFFFF`| ![#FFFFFF](https://placehold.it/15/FFFFFF/000000?text=+)

### Page indicator

|Usage|RGB|HEX|Color|
|---|---|---|---|
| Active page |`255,157,0` |`#FF9D00` |![#FF9D00](https://placehold.it/15/FF9D00/000000?text=+)
| Inactive page | `255,205,89` |`#FFCD59`| ![#FFCD59](https://placehold.it/15/FFCD59/000000?text=+)

## Buttons
*The design of buttons for the weekplanner application*

| ![ButtonDefault](images/ButtonDefault.png) | ![ButtonPressed](images/ButtonPressed.png "ButtonPressed") | ![ButtonDisabled](images/ButtonDisabled.png "ButtonDisabled") |
|:--:| :--: | :--: |
| *Default button* | *Pressed button* | *Disabled button* |

![TripleStateButton](images/TrippleStateButton.png)

## Icons
*Icons to be used in the application*

| **Name**           | **Icon**                                                                 | **Description**                                                    |
|--------------------|--------------------------------------------------------------------------|--------------------------------------------------------------------|
| Add                | ![add](./images/Icons%20GIRAF/35x35px/add.png)                           | Adds a new instance of an object                                   |
| AddFolder          | ![addFolder](./images/Icons%20GIRAF/35x35px/addFolder.png)               | Creates a new Folder                                               |
| AddTimer           | ![addTimer](./images/Icons%20GIRAF/35x35px/addTimer.png)                 | Adds a new timer to object                                         |
| Back               | ![Back](./images/Icons%20GIRAF/35x35px/back.png)                         | Returns the user to the previous page                              |
| BurgerMenu         | ![burgerMenu](./images/Icons%20GIRAF/35x35px/burgermenu.png)             | Opens the side menu                                                |
| Camera             | ![camera](./images/Icons%20GIRAF/35x35px/camera.png)                     | Indicates a camera can be used to take pictures or to film a video |
| Cancel             | ![cancel](./images/Icons%20GIRAF/35x35px/cancel.png)                     | Cancels whatever the user is doing                                 |
| ChangeToCitizen    | ![ChangeToCitizen](./images/Icons%20GIRAF/35x35px/changeToCitizen.png)   | Changes from guardian to citizen mode                              |
| ChangeToGuardian   | ![ChangeToGuardian](./images/Icons%20GIRAF/35x35px/changeToGuardian.png) | Changes from citizen to guardian mode                              |
| Checkmark (accept) | ![Accept](./images/Icons%20GIRAF/35x35px/accept.png)                     | Can be used for when a task is completed by a citizen              |
| Copy               | ![copy](./images/Icons%20GIRAF/35x35px/copy.png)                         | Indicates that an instance of some object can be copied            |
| Delete             | ![delete](./images/Icons%20GIRAF/35x35px/delete.png)                     | Deletes selected instances of an object                            |
| Edit               | ![edit](./images/Icons%20GIRAF/35x35px/edit.png)                         | Edits the given object                                             |
| FallbackImage      | ![fallbackImage](./images/Icons%20GIRAF/35x35px/fallbackImage.png)       | Shows that a image was not loaded correctly                        |
| Folder             | ![folder](./images/Icons%20GIRAF/35x35px/folder.png)                     | Folder for categorizing (e.g. citizens)                            |
| Gallery            | ![gallery](./images/Icons%20GIRAF/35x35px/gallery.png)                   | Opens the gallery of device                                        |
| Help               | ![help](./images/Icons%20GIRAF/35x35px/help.png)                         | Opens a help menu                                                  |
| Home               | ![home](./images/Icons%20GIRAF/35x35px/home.png)                         | Returns user to the overview of the weekplan                       |
| Information        | ![information](./images/Icons%20GIRAF/35x35px/information.png)           | Opens a screen with information like the users legal rights                                                  |
| Log in             | TBD                                                                      | Logs in the given user, if credentials are correct                 |
| Log out            | ![LogOut](./images/Icons%20GIRAF/35x35px/logout.png)                     | Signs out the current user and sign into another account           |
| Pause              | ![Pause](./images/Icons%20GIRAF/35x35px/pause.png)                       | Pauses the timer                                                   |
| NotSynced          | TBD                                                                      | Indicates that the current object is not syncronized               |
| Profile            | ![profile](./images/Icons%20GIRAF/35x35px/profile.png)                   | Goes to the users profile                                          |
| ProfileSettings    | ![ProfileSettings](./images/Icons%20GIRAF/35x35px/profileSettings.png)   | Goes to the users profile settings                                 |
| Redo               | ![redo](./images/Icons%20GIRAF/35x35px/redo.png)                         | Reverts an undo to previous state                                  |
| Save               | ![Save](./images/Icons%20GIRAF/35x35px/save.png)                         | Saves changes made                                                 |
| Search             | ![search](./images/Icons%20GIRAF/35x35px/search.png)                     | Indicates that it is possible to search for something              |
| Settings           | ![Settings](./images/Icons%20GIRAF/35x35px/settings.png)                 | Accesses the settings menu                                         |
| Start              | ![start](./images/Icons%20GIRAF/35x35px/start.png)                       | Starts the timer                                                   |
| Stop               | ![stop](./images/Icons%20GIRAF/35x35px/stop.png)                         | Stops and resets the timer                                         |
| Pause              | ![pause](./images/Icons%20GIRAF/35x35px/pause.png)                       | Pauses the timer                                                   |
| Synced             | TBD                                                                      | Indicates that the current object is syncronized                   |
| Undo               | ![undo](./images/Icons%20GIRAF/35x35px/undo.png)                         | Reverts latest action                                              |
| AddCitizen         | ![AddCitizen](./images/Icons%20GIRAF/35x35px/addCitizen.png)             | Adds a new instance of a citizen                                   |
| LoadingSpinner     | ![LoadingSpinner](./images/Icons%20GIRAF/35x35px/loadingSpinner.png)     | Shown when something needs to be loaded                            |

## Dialogue boxes
*Dialogue boxes should be used whenever a user need to be notified or confirm an action*

![ConfirmDialog](images/ConfirmDialog.png "ConfirmDialog")
![NotifyDialog](images/NotifyDialog.png "NotifyDialog")
![CustomButtonsDialog](images/CustomButtonsDialog.png "CustomButtonsDialog")
![CustomDialog](images/CustomDialog.png "CustomDialog")

