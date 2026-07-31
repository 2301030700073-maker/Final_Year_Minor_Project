package coil3;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SingletonImageLoader {
    public static final /* synthetic */ AtomicReference reference = new AtomicReference(null);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Factory {
        RealImageLoader newImageLoader(Context context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final RealImageLoader get(Context context) {
        RealImageLoader realImageLoader;
        RealImageLoader realImageLoader2;
        AtomicReference atomicReference = reference;
        Object obj = atomicReference.get();
        RealImageLoader realImageLoader3 = obj instanceof RealImageLoader ? (RealImageLoader) obj : null;
        if (realImageLoader3 != null) {
            return realImageLoader3;
        }
        RealImageLoader realImageLoader4 = null;
        while (true) {
            Object obj2 = atomicReference.get();
            if (obj2 instanceof RealImageLoader) {
                realImageLoader = (RealImageLoader) obj2;
                realImageLoader2 = realImageLoader4;
            } else {
                if (realImageLoader4 == null) {
                    Context applicationContext = context.getApplicationContext();
                    Factory factory = obj2 instanceof Factory ? (Factory) obj2 : null;
                    if (factory != null) {
                        realImageLoader4 = factory.newImageLoader(applicationContext);
                    } else {
                        Factory factory2 = applicationContext instanceof Factory ? (Factory) applicationContext : null;
                        realImageLoader4 = factory2 != null ? factory2.newImageLoader(applicationContext) : SingletonImageLoaderKt.DefaultSingletonImageLoaderFactory.newImageLoader(applicationContext);
                    }
                }
                realImageLoader = realImageLoader4;
                realImageLoader2 = realImageLoader;
            }
            while (!atomicReference.compareAndSet(obj2, realImageLoader)) {
                if (atomicReference.get() != obj2) {
                    break;
                }
            }
            return realImageLoader;
            realImageLoader4 = realImageLoader2;
        }
    }
}
