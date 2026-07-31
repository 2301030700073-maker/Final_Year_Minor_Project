package kotlin.random;

import java.io.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class XorWowRandom extends Random implements Serializable {
    public int addend;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public XorWowRandom(int i, int i2) {
        int i3 = ~i;
        this.x = i;
        this.y = i2;
        this.z = 0;
        this.w = 0;
        this.v = i3;
        this.addend = (i << 10) ^ (i2 >>> 4);
        if ((i | i2 | i3) == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Initial state must have at least one non-zero element.");
            throw null;
        }
        for (int i4 = 0; i4 < 64; i4++) {
            nextInt();
        }
    }

    @Override // kotlin.random.Random
    public final int nextBits(int i) {
        return (nextInt() >>> (32 - i)) & ((-i) >> 31);
    }

    @Override // kotlin.random.Random
    public final int nextInt() {
        int i = this.x;
        int i2 = i ^ (i >>> 2);
        this.x = this.y;
        this.y = this.z;
        this.z = this.w;
        int i3 = this.v;
        this.w = i3;
        int i4 = ((i2 ^ (i2 << 1)) ^ i3) ^ (i3 << 4);
        this.v = i4;
        int i5 = this.addend + 362437;
        this.addend = i5;
        return i4 + i5;
    }
}
