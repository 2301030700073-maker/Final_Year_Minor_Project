package j$.util.stream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class e5 extends g5 {
    @Override // j$.util.stream.a
    public final boolean I() {
        return true;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !d7.ORDERED.u(this.f) ? this : new a5(this, d7.r);
    }
}
