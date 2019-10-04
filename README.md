# README

https://www.theodinproject.com/lessons/apis#project-2-using-a-third-party-api



    1. Go back to the Flickr API Docs and click Create an App at the top.
    
    2. Follow the steps for getting your API key. You’ll have to sign in or sign up for Yahoo (someone has to these days) and give them some basic information about your app. Select “Apply for a non-commercial key” and let them know how awesome your photo feed app will be. You’ll automatically get a key generated for you, in addition to a secret key. Copy both of these somewhere you can get to them later.
    
    3. Use the idGettr website to look up your ID by pasting in your flickr username in the example URL, e.g. http://www.flickr.com/photos/eriktrautman/. You’ll need that later for some of the API methods.

    4. Upload a few photos to your photostream!

    5. Create a new Rails app and add a gem for the Flickr API. There are gems for pretty much every API out there. They will all require you to include your API keys and secret keys somehow. Look for gems that are maintained (have recent commits) and well-adopted (GitHub stars is one way to get a good gauge for how valuable a gem is).
    
    6. One note is that it’s not good practice to have your secret key hard coded into your app because then it’s hardly a secret, especially if you’re pushing to Github. A better practice is to store the key in an environment variable instead and/or use a gem like figaro (see docs). Environment variables allow you to push your key to your app directly from the command line when it fires up. Figaro operates under the same principle, though it helps you out by allowing you to store the keys in an actual file that just doesn’t get committed with the rest of your code. Use one of these techniques unless you’re a cowboy. They are well described in Daniel Kehoe’s RailsApps article.
    7. Build a simple StaticPagesController to display a home page with a simple form. The form should just be a single text field which takes the ID for a Flickr user. Once the form is submitted, the page should refresh and display the photos from that user.
    
    8. Ask for your friends’ flickr IDs or find random photofeeds on the web. View them in your app and react appropriately.

