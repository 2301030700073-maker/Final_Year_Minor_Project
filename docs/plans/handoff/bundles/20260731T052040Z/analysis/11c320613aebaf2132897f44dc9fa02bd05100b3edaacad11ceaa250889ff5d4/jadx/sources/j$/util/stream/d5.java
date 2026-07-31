package j$.util.stream;

import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class d5 extends g5 {
    @Override // j$.util.stream.a
    public final boolean I() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.g5, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (this.a.k) {
            super.forEach(consumer);
        } else {
            L().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.g5, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (this.a.k) {
            super.forEachOrdered(consumer);
        } else {
            L().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !d7.ORDERED.u(this.f) ? this : new a5(this, d7.r);
    }
}
