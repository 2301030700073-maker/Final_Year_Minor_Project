package org.wikipedia.views;

import android.content.Context;
import android.widget.ImageView;
import coil3.Extras;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.target.ImageViewTarget;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.views.AutoFitRecyclerView;
import org.wikipedia.views.imageservice.ImageLoadListener;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewUtil implements AutoFitRecyclerView.Callback {
    public static void loadImage$default(ImageView imageView, String str, ImageLoadListener imageLoadListener, int i) {
        Integer valueOf = Integer.valueOf(R.mipmap.launcher);
        boolean z = (i & 4) == 0;
        Integer num = (i & 8) != 0 ? null : valueOf;
        ImageLoadListener imageLoadListener2 = (i & 16) != 0 ? null : imageLoadListener;
        imageView.getClass();
        Boolean bool = Boolean.FALSE;
        Boolean valueOf2 = Boolean.valueOf(z);
        if (Okio__OkioKt._implementation == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
            return;
        }
        Context context = imageView.getContext();
        context.getClass();
        ImageRequest.Builder requestBuilder = ByteString.Companion.getRequestBuilder(context, str, bool, valueOf2, num, imageLoadListener2);
        Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
        requestBuilder.target = new ImageViewTarget(imageView);
        SingletonImageLoader.get(context).enqueue(requestBuilder.build());
    }
}
