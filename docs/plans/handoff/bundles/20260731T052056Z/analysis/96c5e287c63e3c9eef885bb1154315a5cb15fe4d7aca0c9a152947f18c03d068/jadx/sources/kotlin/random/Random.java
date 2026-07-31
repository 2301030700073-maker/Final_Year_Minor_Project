package kotlin.random;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import kotlin.internal.jdk8.JDK8PlatformImplementations$ReflectSdkVersion;
import kotlin.random.jdk8.PlatformThreadLocalRandom;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Random {
    public static final AbstractPlatformRandom defaultRandom;

    static {
        Integer num = JDK8PlatformImplementations$ReflectSdkVersion.sdkVersion;
        defaultRandom = (num == null || num.intValue() >= 34) ? new PlatformThreadLocalRandom() : new FallbackThreadLocalRandom();
    }

    public abstract int nextBits(int i);

    public abstract int nextInt();

    public int nextInt(int i, int i2) {
        int nextInt;
        int i3;
        int i4;
        if (i2 <= i) {
            Gson$$ExternalSyntheticBUOutline0.m("Random range is empty: [", Integer.valueOf(i), ", ", Integer.valueOf(i2), ").");
            return 0;
        }
        int i5 = i2 - i;
        if (i5 > 0 || i5 == Integer.MIN_VALUE) {
            if (((-i5) & i5) == i5) {
                i4 = nextBits(31 - Integer.numberOfLeadingZeros(i5));
            } else {
                do {
                    nextInt = nextInt() >>> 1;
                    i3 = nextInt % i5;
                } while ((i5 - 1) + (nextInt - i3) < 0);
                i4 = i3;
            }
            return i + i4;
        }
        while (true) {
            int nextInt2 = nextInt();
            if (i <= nextInt2 && nextInt2 < i2) {
                return nextInt2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Default extends Random implements Serializable {
        @Override // kotlin.random.Random
        public final int nextBits(int i) {
            return Random.defaultRandom.nextBits(i);
        }

        @Override // kotlin.random.Random
        public final int nextInt() {
            return Random.defaultRandom.nextInt();
        }

        @Override // kotlin.random.Random
        public final int nextInt(int i, int i2) {
            return Random.defaultRandom.nextInt(i, i2);
        }
    }
}
