package coil3.request;

import android.graphics.Bitmap;
import coil3.Extras;
import coil3.UriKt;
import coil3.transition.Transition;
import coil3.util.Utils_androidKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImageRequests_androidKt {
    public static final Extras.Key allowHardwareKey;
    public static final Extras.Key allowRgb565Key;
    public static final Extras.Key lifecycleKey;
    public static final Extras.Key premultipliedAlphaKey;
    public static final Extras.Key transitionFactoryKey = new Extras.Key(Transition.Factory.NONE);
    public static final Extras.Key bitmapConfigKey = new Extras.Key(Utils_androidKt.DEFAULT_BITMAP_CONFIG);
    public static final Extras.Key colorSpaceKey = new Extras.Key(null);

    static {
        Boolean bool = Boolean.TRUE;
        premultipliedAlphaKey = new Extras.Key(bool);
        lifecycleKey = new Extras.Key(null);
        allowHardwareKey = new Extras.Key(bool);
        allowRgb565Key = new Extras.Key(Boolean.FALSE);
    }

    public static final Bitmap.Config getBitmapConfig(Options options) {
        return (Bitmap.Config) UriKt.getExtra(options, bitmapConfigKey);
    }
}
