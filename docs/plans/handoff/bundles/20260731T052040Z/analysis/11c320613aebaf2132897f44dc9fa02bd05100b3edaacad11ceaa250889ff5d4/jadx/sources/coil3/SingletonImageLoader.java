package coil3;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SingletonImageLoader {
    public static final /* synthetic */ AtomicReference reference = new AtomicReference(null);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Factory {
        RealImageLoader newImageLoader(Context context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v15, types: [coil3.ImageLoader] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [coil3.SingletonImageLoader$Factory] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [coil3.SingletonImageLoader$Factory] */
    /* JADX WARN: Type inference failed for: r4v8, types: [coil3.SingletonImageLoaderKt$$ExternalSyntheticLambda0] */
    public static final ImageLoader get(Context context) {
        RealImageLoader realImageLoader;
        RealImageLoader realImageLoader2;
        AtomicReference atomicReference = reference;
        Object obj = atomicReference.get();
        ImageLoader imageLoader = obj instanceof ImageLoader ? (ImageLoader) obj : null;
        if (imageLoader != null) {
            return imageLoader;
        }
        RealImageLoader realImageLoader3 = null;
        while (true) {
            Object obj2 = atomicReference.get();
            if (obj2 instanceof ImageLoader) {
                realImageLoader = realImageLoader3;
                realImageLoader2 = (ImageLoader) obj2;
            } else {
                if (realImageLoader3 == null) {
                    ?? applicationContext = context.getApplicationContext();
                    ?? r4 = obj2 instanceof Factory ? (Factory) obj2 : 0;
                    if (r4 != 0) {
                        realImageLoader3 = r4.newImageLoader(applicationContext);
                    } else {
                        ?? r42 = applicationContext instanceof Factory ? (Factory) applicationContext : 0;
                        realImageLoader3 = r42 != 0 ? r42.newImageLoader(applicationContext) : SingletonImageLoaderKt.DefaultSingletonImageLoaderFactory.newImageLoader(applicationContext);
                    }
                }
                RealImageLoader realImageLoader4 = realImageLoader3;
                realImageLoader = realImageLoader4;
                realImageLoader2 = realImageLoader4;
            }
            while (!atomicReference.compareAndSet(obj2, realImageLoader2)) {
                if (atomicReference.get() != obj2) {
                    break;
                }
            }
            return realImageLoader2;
            realImageLoader3 = realImageLoader;
        }
    }
}
