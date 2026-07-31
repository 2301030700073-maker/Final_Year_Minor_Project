package coil3;

import android.content.Context;
import coil3.Extras;
import coil3.SingletonImageLoader;
import kotlin.Unit;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SingletonImageLoaderKt$$ExternalSyntheticLambda0 implements SingletonImageLoader.Factory {
    @Override // coil3.SingletonImageLoader.Factory
    public final RealImageLoader newImageLoader(Context context) {
        Dispatcher dispatcher = new Dispatcher(context);
        Extras.Builder builder = (Extras.Builder) dispatcher.runningSyncCalls;
        builder.data.put(SingletonImageLoaderKt.DefaultSingletonImageLoaderKey, Unit.INSTANCE);
        return dispatcher.build();
    }
}
