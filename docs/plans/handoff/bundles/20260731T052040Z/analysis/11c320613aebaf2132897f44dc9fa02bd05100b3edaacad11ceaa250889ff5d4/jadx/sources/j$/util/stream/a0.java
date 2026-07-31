package j$.util.stream;

import j$.util.Spliterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class a0 extends b0 {
    @Override // j$.util.stream.a
    public final boolean I() {
        return false;
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final e0 parallel() {
        this.a.k = true;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final e0 sequential() {
        this.a.k = false;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !d7.ORDERED.u(this.f) ? this : new x(this, d7.r, 0);
    }
}
