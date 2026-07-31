package coil3.request;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import coil3.Extras;
import coil3.UriKt;
import coil3.request.ImageRequest;
import coil3.transition.NoneTransition$Factory;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.Utils_androidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ImageRequests_androidKt {
    public static final Extras.Key allowHardwareKey;
    public static final Extras.Key allowRgb565Key;
    public static final Extras.Key lifecycleKey;
    public static final Extras.Key premultipliedAlphaKey;
    public static final Extras.Key transitionFactoryKey = new Extras.Key(NoneTransition$Factory.NONE);
    public static final Extras.Key bitmapConfigKey = new Extras.Key(Utils_androidKt.DEFAULT_BITMAP_CONFIG);
    public static final Extras.Key colorSpaceKey = new Extras.Key(null);

    static {
        Boolean bool = Boolean.TRUE;
        premultipliedAlphaKey = new Extras.Key(bool);
        lifecycleKey = new Extras.Key(null);
        allowHardwareKey = new Extras.Key(bool);
        allowRgb565Key = new Extras.Key(Boolean.FALSE);
    }

    public static final void allowHardware(ImageRequest.Builder builder) {
        Extras.Builder extras = builder.getExtras();
        extras.data.put(allowHardwareKey, Boolean.FALSE);
    }

    public static final Bitmap.Config getBitmapConfig(Options options) {
        return (Bitmap.Config) UriKt.getExtra(options, bitmapConfigKey);
    }

    public static final ColorSpace getColorSpace(Options options) {
        return ContextsKt$$ExternalSyntheticBUOutline0.m(UriKt.getExtra(options, colorSpaceKey));
    }
}
