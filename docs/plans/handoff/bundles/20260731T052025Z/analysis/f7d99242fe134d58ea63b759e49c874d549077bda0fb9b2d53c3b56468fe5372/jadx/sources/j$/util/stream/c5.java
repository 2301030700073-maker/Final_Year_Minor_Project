package j$.util.stream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class c5 extends d5 {
    @Override // j$.util.stream.a
    public final boolean L() {
        return false;
    }

    @Override // j$.util.stream.g
    public final g unordered() {
        return !z6.ORDERED.u(this.f) ? this : new z4(this, z6.r);
    }
}
