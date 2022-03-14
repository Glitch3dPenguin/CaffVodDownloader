# What is Caffeine VOD Downloader?

- A very short script directly in batch that allows Caffeine.TV streamers to download their VODs to save and edit.
- Uses ffmpeg to read HLS stream data from Caffeine.TV.
- Coverts stream data and saves VOD file as .mp4 for easy editing and compatibility with most editors/devices. 

### How to Use:

- Step 1:
Go to your Caffeine.tv settings on desktop. 

- Step 2:
Open the "Videos" tab to show all your VODs.
![](https://i.imgur.com/37LZKf4.gif)

- Step 3: 
Press `F12` to open the browser console. 

- Step 4: 
Open the netowrk tab
![](https://i.imgur.com/l3vIivt.gif)

- Step 5: 
Now it's time to pick the VOD that you want to download. **With the Network tab still open**, scroll through your vods list and click on the video you want to download. 
Then look on the network tab and find the new row that appeared called `main.m3u8`. 
Then click on it!
![](https://i.imgur.com/BdxZEvj.gif)

- Step 6:
Once you have clicked on `main.m3u8` there will be a section that apperared called `Request URL:`. 
![](https://i.imgur.com/lN5h6Yd.png)
The link you will see is the HLS link to your Caffeine VOD. Because this is streamed to you in HLS chunks, you cannot save the video from here. This is the link that you will paste into the program. 

- Step 7: 
Pase the Request URL into the script once you run it and press `ENTER`.
![](https://i.imgur.com/B4qibSV.png)

- Step 8: 
Now choose a name for your VOD to be saved as and press `ENTER`.
![](https://i.imgur.com/AoxBSxu.png)

**DONE!** Your VOD will now be downloaded and saved to the same location as the place you saved the script. 
