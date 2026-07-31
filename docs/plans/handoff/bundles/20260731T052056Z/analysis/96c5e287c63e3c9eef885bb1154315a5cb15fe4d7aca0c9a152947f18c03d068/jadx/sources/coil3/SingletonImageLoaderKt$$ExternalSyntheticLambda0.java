package coil3;

import android.content.Context;
import coil3.Extras;
import coil3.SingletonImageLoader;
import kotlin.Unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SingletonImageLoaderKt$$ExternalSyntheticLambda0 implements SingletonImageLoader.Factory {
    @Override // coil3.SingletonImageLoader.Factory
    public final RealImageLoader newImageLoader(Context context) {
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(context);
        Extras.Builder builder = (Extras.Builder) imageLoader$Builder.extras;
        builder.data.put(SingletonImageLoaderKt.DefaultSingletonImageLoaderKey, Unit.INSTANCE);
        return imageLoader$Builder.build();
    }
}
