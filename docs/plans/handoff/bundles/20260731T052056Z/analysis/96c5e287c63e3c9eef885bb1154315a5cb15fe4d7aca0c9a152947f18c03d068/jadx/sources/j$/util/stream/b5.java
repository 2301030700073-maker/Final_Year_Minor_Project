package j$.util.stream;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class b5 extends d5 {
    @Override // j$.util.stream.a
    public final boolean L() {
        return true;
    }

    @Override // j$.util.stream.g
    public final g unordered() {
        return !z6.ORDERED.i(this.f) ? this : new z4(this, z6.r);
    }
}
