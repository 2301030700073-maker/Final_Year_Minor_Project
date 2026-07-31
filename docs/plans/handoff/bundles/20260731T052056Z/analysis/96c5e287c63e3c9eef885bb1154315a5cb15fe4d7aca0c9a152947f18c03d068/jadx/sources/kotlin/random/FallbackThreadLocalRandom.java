package kotlin.random;

import com.airbnb.lottie.utils.Utils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FallbackThreadLocalRandom extends AbstractPlatformRandom {
    public final Utils.AnonymousClass1 implStorage = new Utils.AnonymousClass1(5);

    @Override // kotlin.random.AbstractPlatformRandom
    public final java.util.Random getImpl() {
        Object obj = this.implStorage.get();
        obj.getClass();
        return (java.util.Random) obj;
    }
}
