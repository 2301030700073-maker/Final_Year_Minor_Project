package coil3;

import android.content.Context;
import coil3.Extras;
import coil3.ImageLoader;
import coil3.SingletonImageLoader;
import kotlin.Unit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingletonImageLoaderKt {
    private static final SingletonImageLoader.Factory DefaultSingletonImageLoaderFactory = new SingletonImageLoaderKt$$ExternalSyntheticLambda0();
    private static final Extras.Key<Unit> DefaultSingletonImageLoaderKey = new Extras.Key<>(Unit.INSTANCE);

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageLoader DefaultSingletonImageLoaderFactory$lambda$0(Context context) {
        ImageLoader.Builder builder = new ImageLoader.Builder(context);
        builder.getExtras().set(DefaultSingletonImageLoaderKey, Unit.INSTANCE);
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isDefault(ImageLoader imageLoader) {
        return imageLoader.getDefaults().getExtras().get(DefaultSingletonImageLoaderKey) != null;
    }
}
