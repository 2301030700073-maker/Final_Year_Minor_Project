package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3093u1 extends AbstractC3098v1 {
    private final Object[] h;

    C3093u1(Spliterator spliterator, AbstractC3117z0 abstractC3117z0, Object[] objArr) {
        super(objArr.length, spliterator, abstractC3117z0);
        this.h = objArr;
    }

    C3093u1(C3093u1 c3093u1, Spliterator spliterator, long j, long j2) {
        super(c3093u1, spliterator, j, j2, c3093u1.h.length);
        this.h = c3093u1.h;
    }

    @Override // j$.util.stream.AbstractC3098v1
    final AbstractC3098v1 a(Spliterator spliterator, long j, long j2) {
        return new C3093u1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }
}
