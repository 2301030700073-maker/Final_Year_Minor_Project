package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.s1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3083s1 extends AbstractC3098v1 implements InterfaceC3070p2 {
    private final int[] h;

    C3083s1(Spliterator spliterator, AbstractC3117z0 abstractC3117z0, int[] iArr) {
        super(iArr.length, spliterator, abstractC3117z0);
        this.h = iArr;
    }

    C3083s1(C3083s1 c3083s1, Spliterator spliterator, long j, long j2) {
        super(c3083s1, spliterator, j, j2, c3083s1.h.length);
        this.h = c3083s1.h;
    }

    @Override // j$.util.stream.AbstractC3098v1
    final AbstractC3098v1 a(Spliterator spliterator, long j, long j2) {
        return new C3083s1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC3098v1, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        int i2 = this.f;
        if (i2 >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        int[] iArr = this.h;
        this.f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        AbstractC3117z0.C(this, num);
    }
}
