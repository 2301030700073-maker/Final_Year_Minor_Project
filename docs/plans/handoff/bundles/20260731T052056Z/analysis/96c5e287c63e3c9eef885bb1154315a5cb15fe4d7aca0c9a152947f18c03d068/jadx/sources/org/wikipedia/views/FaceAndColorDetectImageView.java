package org.wikipedia.views;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import coil3.Extras;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.target.ImageViewTarget;
import com.google.android.material.imageview.ShapeableImageView;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.views.imageservice.ImageLoadListener;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/views/FaceAndColorDetectImageView;", "Lcom/google/android/material/imageview/ShapeableImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FaceAndColorDetectImageView extends ShapeableImageView {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaceAndColorDetectImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    public final void loadImage(Uri uri, ImageLoadListener imageLoadListener) {
        String valueOf = String.valueOf(uri);
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        if (Okio__OkioKt._implementation == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
            return;
        }
        Context context = getContext();
        context.getClass();
        ImageRequest.Builder requestBuilder = ByteString.Companion.getRequestBuilder(context, valueOf, bool, bool2, null, imageLoadListener);
        Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
        requestBuilder.target = new ImageViewTarget(this);
        SingletonImageLoader.get(context).enqueue(requestBuilder.build());
    }
}
