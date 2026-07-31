package org.wikipedia.gallery;

import android.media.MediaPlayer;
import android.net.Uri;
import android.view.KeyCharacterMap;
import android.view.View;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.VideoView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.GsonBuilder;
import java.util.Collections;
import java.util.Map;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GalleryItemFragment$videoThumbnailClickListener$1 implements View.OnClickListener {
    public boolean loading;
    public final /* synthetic */ GalleryItemFragment this$0;

    public GalleryItemFragment$videoThumbnailClickListener$1(GalleryItemFragment galleryItemFragment) {
        this.this$0 = galleryItemFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        MediaController mediaController;
        ImageInfo.Derivative bestDerivativeForSize;
        view.getClass();
        if (this.loading) {
            return;
        }
        final GalleryItemFragment galleryItemFragment = this.this$0;
        ImageInfo mediaInfo = galleryItemFragment.getMediaInfo();
        if (mediaInfo == null || (bestDerivativeForSize = mediaInfo.getBestDerivativeForSize()) == null || (str = bestDerivativeForSize.src) == null) {
            ImageInfo mediaInfo2 = galleryItemFragment.getMediaInfo();
            if (mediaInfo2 == null) {
                return;
            } else {
                str = mediaInfo2.originalUrl;
            }
        }
        this.loading = true;
        L.d("Loading video from url: " + str);
        GsonBuilder gsonBuilder = galleryItemFragment._binding;
        gsonBuilder.getClass();
        ((VideoView) gsonBuilder.reflectionFilters).setVisibility(0);
        galleryItemFragment.mediaController = new MediaController(galleryItemFragment.requireActivity());
        if ((!KeyCharacterMap.deviceHasKey(4) || !KeyCharacterMap.deviceHasKey(3)) && (mediaController = galleryItemFragment.mediaController) != null) {
            int identifier = galleryItemFragment.requireContext().getResources().getIdentifier("navigation_bar_height", "dimen", "android");
            mediaController.setPadding(0, 0, 0, (int) Okio__OkioKt.dpToPx(identifier > 0 ? Okio__OkioKt.getDimension(identifier) : RecyclerView.DECELERATION_RATE));
        }
        galleryItemFragment.onLoading(true);
        GsonBuilder gsonBuilder2 = galleryItemFragment._binding;
        gsonBuilder2.getClass();
        ((VideoView) gsonBuilder2.reflectionFilters).setMediaController(galleryItemFragment.mediaController);
        GsonBuilder gsonBuilder3 = galleryItemFragment._binding;
        gsonBuilder3.getClass();
        ((VideoView) gsonBuilder3.reflectionFilters).setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: org.wikipedia.gallery.GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                GalleryItemFragment galleryItemFragment2 = GalleryItemFragment.this;
                galleryItemFragment2.onLoading(false);
                ((GalleryActivity) galleryItemFragment2.requireActivity()).fetchGalleryDescription(galleryItemFragment2);
                GsonBuilder gsonBuilder4 = galleryItemFragment2._binding;
                gsonBuilder4.getClass();
                ((ImageView) gsonBuilder4.hierarchyFactories).setVisibility(8);
                GsonBuilder gsonBuilder5 = galleryItemFragment2._binding;
                gsonBuilder5.getClass();
                ((ImageView) gsonBuilder5.factories).setVisibility(8);
                GsonBuilder gsonBuilder6 = galleryItemFragment2._binding;
                gsonBuilder6.getClass();
                ((VideoView) gsonBuilder6.reflectionFilters).start();
                this.loading = false;
            }
        });
        GsonBuilder gsonBuilder4 = galleryItemFragment._binding;
        gsonBuilder4.getClass();
        ((VideoView) gsonBuilder4.reflectionFilters).setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: org.wikipedia.gallery.GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                GalleryItemFragment galleryItemFragment2 = GalleryItemFragment.this;
                galleryItemFragment2.onLoading(false);
                AppCompatActivity activity = galleryItemFragment2.getActivity();
                activity.getClass();
                ShareUtil.showMessage(activity, R.string.gallery_error_video_failed);
                GsonBuilder gsonBuilder5 = galleryItemFragment2._binding;
                gsonBuilder5.getClass();
                ((VideoView) gsonBuilder5.reflectionFilters).setVisibility(8);
                GsonBuilder gsonBuilder6 = galleryItemFragment2._binding;
                gsonBuilder6.getClass();
                ((ImageView) gsonBuilder6.hierarchyFactories).setVisibility(0);
                GsonBuilder gsonBuilder7 = galleryItemFragment2._binding;
                gsonBuilder7.getClass();
                ((ImageView) gsonBuilder7.factories).setVisibility(0);
                this.loading = false;
                return true;
            }
        });
        GsonBuilder gsonBuilder5 = galleryItemFragment._binding;
        gsonBuilder5.getClass();
        VideoView videoView = (VideoView) gsonBuilder5.reflectionFilters;
        Uri parse = Uri.parse(str);
        parse.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
        singletonMap.getClass();
        videoView.setVideoURI(parse, singletonMap);
    }
}
