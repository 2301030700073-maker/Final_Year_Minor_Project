package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.t1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3088t1 extends AbstractC3098v1 implements InterfaceC3075q2 {
    private final long[] h;

    C3088t1(Spliterator spliterator, AbstractC3117z0 abstractC3117z0, long[] jArr) {
        super(jArr.length, spliterator, abstractC3117z0);
        this.h = jArr;
    }

    C3088t1(C3088t1 c3088t1, Spliterator spliterator, long j, long j2) {
        super(c3088t1, spliterator, j, j2, c3088t1.h.length);
        this.h = c3088t1.h;
    }

    @Override // j$.util.stream.AbstractC3098v1
    final AbstractC3098v1 a(Spliterator spliterator, long j, long j2) {
        return new C3088t1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC3098v1, j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        long[] jArr = this.h;
        this.f = i + 1;
        jArr[i] = j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }
}
