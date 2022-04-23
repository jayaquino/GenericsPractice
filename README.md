# GenericsPractice

<p float="left">
<img src = "https://user-images.githubusercontent.com/46248987/164887512-2cb51039-4c22-4180-9d26-440877c08799.PNG", height = "300">
<img src = "https://user-images.githubusercontent.com/46248987/164887516-cb4c4f4e-44e7-4dd6-8f64-a370fe8aa7e6.PNG", height = "300">
</p>

## Description
* To practice generics, a APIManager singleton is created to handle multiple types of data.
* Beer, Dessert, Vehicle, Nation, and Restaurant models are created.
* The API method requires a url, the type of model, and a completion handler.
* The manager executes an API call and receives the data.
* The JSONDecoder decodes the data based on the type of the model and passes result in the completion handler.
* The result is displayed on the screen.

# What I Learned
* To increase modularity and decouple code, generics can be used when dealing with multiple data types. 
* Codes with generics can be reused in several projects and decrease time creating code. 
