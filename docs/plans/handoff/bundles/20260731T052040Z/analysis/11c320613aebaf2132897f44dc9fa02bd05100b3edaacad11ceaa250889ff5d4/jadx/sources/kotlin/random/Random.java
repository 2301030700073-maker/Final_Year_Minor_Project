package kotlin.random;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.internal.jdk8.JDK8PlatformImplementations$ReflectSdkVersion;
import kotlin.random.jdk8.PlatformThreadLocalRandom;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Random {
    public static final AbstractPlatformRandom defaultRandom;

    static {
        Integer num = JDK8PlatformImplementations$ReflectSdkVersion.sdkVersion;
        defaultRandom = (num == null || num.intValue() >= 34) ? new PlatformThreadLocalRandom() : new FallbackThreadLocalRandom();
    }

    public abstract int nextBits(int i);

    public abstract int nextInt();

    public abstract long nextLong();

    public long nextLong(long j, long j2) {
        long nextLong;
        long j3;
        long j4;
        int nextInt;
        if (j2 <= j) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Random range is empty: [", Long.valueOf(j), ", ", Long.valueOf(j2), ").");
            return 0L;
        }
        long j5 = j2 - j;
        if (j5 > 0) {
            if (((-j5) & j5) == j5) {
                int i = (int) j5;
                int i2 = (int) (j5 >>> 32);
                if (i != 0) {
                    nextInt = nextBits(31 - Integer.numberOfLeadingZeros(i));
                } else if (i2 == 1) {
                    nextInt = nextInt();
                } else {
                    j4 = (nextBits(31 - Integer.numberOfLeadingZeros(i2)) << 32) + (4294967295L & nextInt());
                }
                j4 = nextInt & 4294967295L;
            } else {
                do {
                    nextLong = nextLong() >>> 1;
                    j3 = nextLong % j5;
                } while ((j5 - 1) + (nextLong - j3) < 0);
                j4 = j3;
            }
            return j + j4;
        }
        while (true) {
            long nextLong2 = nextLong();
            if (j <= nextLong2 && nextLong2 < j2) {
                return nextLong2;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Default extends Random implements Serializable {
        private final void readObject(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        @Override // kotlin.random.Random
        public final int nextBits(int i) {
            return Random.defaultRandom.nextBits(i);
        }

        @Override // kotlin.random.Random
        public final int nextInt() {
            return Random.defaultRandom.nextInt();
        }

        @Override // kotlin.random.Random
        public final long nextLong() {
            return Random.defaultRandom.nextLong();
        }

        @Override // kotlin.random.Random
        public final long nextLong(long j, long j2) {
            return Random.defaultRandom.nextLong(j, j2);
        }
    }
}
