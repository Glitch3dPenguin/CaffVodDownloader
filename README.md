# What is Caffeine VOD Downloader?

- A very short script directly in batch that allows Caffeine.TV streamers to download their VODs to save and edit.
- Uses ffmpeg to read HLS stream data from Caffeine.TV.
- Coverts stream data and saves VOD file as .mp4 for easy editing and compatibility with most editors/devices. 

### How to Use:

- Step 1:
On desktop, open your Caffeine profile. You want to be able to see all your vods. The page should look like this:

![](https://share.klabsdev.com/files//QdWEQNta.png)


- Step 2: 
Press `F12` to open the browser console.

![](https://share.klabsdev.com/files//hWXpsXdu.gif)


- Step 3: 
Open the network tab

![](https://share.klabsdev.com/files//XOZcLHAq.gif)


- Step 4: 
Now it's time to pick the VOD that you want to download. **With the Network tab still open**, scroll through your VODs and click on the video you want to download. 
Then look on the network tab and find the new row that appeared called `main.m3u8`. 

![](https://share.klabsdev.com/files//wBnysuZJ.gif)


- Step 5:
Right click on `main.m3u8`. Then hover over `Copy`. 
You will want to choose `Copy link address`.

![](https://share.klabsdev.com/files//JxSwjml.gif)


- Step 6: 
Paste the URL into the script once you run it and press `ENTER`.

![](https://share.klabsdev.com/files//LWujbmnf.png)


- Step 7: 
Now choose a name for your VOD to be saved as and press `ENTER`.

![](https://share.klabsdev.com/files//PZUMgfHj.png)


- Step 8: 
Now choose what format to save the VOD as and press `ENTER`.

![](https://share.klabsdev.com/files//lkZCnOki.png)


**DONE!** Your VOD will now be downloaded and saved the new "CaffeineVODs" folder located in Downloads.