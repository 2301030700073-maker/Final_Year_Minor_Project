package j$.util.stream;

import j$.util.Spliterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class q3 extends r3 {
    public final Object[] h;

    public q3(q3 q3Var, Spliterator spliterator, long j, long j2) {
        super(q3Var, spliterator, j, j2, q3Var.h.length);
        this.h = q3Var.h;
    }

    @Override // j$.util.stream.r3
    public final r3 a(Spliterator spliterator, long j, long j2) {
        return new q3(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(i));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }

    public q3(Spliterator spliterator, a aVar, Object[] objArr) {
        super(spliterator, aVar, objArr.length);
        this.h = objArr;
    }
}
