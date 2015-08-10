Link: https://charm-city-blotter.herokuapp.com/regions

Approach:

Since I'm new to Ruby and Rails, I decided to make a fairly simple app but also force myself to write as much of my own code as possible to accomplish the requirements without relying too much on gems. I figured this would be a good approach during the learning stage, but I'll probably use more gems for future projects.

Some things I did --

Models: I started off making the app with just two models because that's how we've been doing it in class. I got an MVP product from that within a day. But I still had a third non-users model to add. I really struggled trying to implement this, but eventually got it working by using shallow nesting. This also meant I had to rewrite a good amount of code I had for my controllers. Through some hardcore error driven development, I got this working.

Permissions: If you look at the show files in regions and incidents, and the incidents and comments controllers, you can see how I implemented exceptions to allow users to delete and edit only their own posts and delete only their own comments. I also gave an admin user the ability to delete all posts and comments. If I had some more time and didn't have to do CSS, I would have also implemented exceptions to make it so users don't have to be logged in to see posts and comments since that's how most sites of this nature operate.

Automated Username: If you look at the create methods in the controllers for incidents and comments, you can see how I set it so that a user doesn't have to input their name in a form but instead it would autogenerate their username when they post or comment. I modeled this after what I've observed in the wild.

Admin User: The seeds.rb file will show you how I set an admin user.


Technologies:

I attempted to use bootstrap, but couldn't get it to load properly for some reason.

Next Steps:

Get better at CSS and make this site prettier.
Make posts and comments visible to users who are not logged in.
Include verifications for admin users and public official users (public information officers, politicians, community leaders).
Use Google Map API to display regions on map, possibly incidents.
An option to upload photos connected to incidents.
A way for admins to preview posts and comments before they're posted since we're dealing with pretty sensitive information.
