function mp4tomov() {
    ffmpeg -i  -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le -f mov .mov
}

