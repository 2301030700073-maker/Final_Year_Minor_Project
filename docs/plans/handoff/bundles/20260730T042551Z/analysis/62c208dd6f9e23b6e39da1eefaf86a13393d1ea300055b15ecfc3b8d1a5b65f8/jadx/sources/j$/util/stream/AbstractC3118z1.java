package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.z1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3118z1 extends CountedCompleter {
    protected final I0 a;
    protected final int b;

    AbstractC3118z1(I0 i0) {
        this.a = i0;
        this.b = 0;
    }

    AbstractC3118z1(AbstractC3118z1 abstractC3118z1, I0 i0, int i) {
        super(abstractC3118z1);
        this.a = i0;
        this.b = i;
    }

    abstract void a();

    abstract C3113y1 b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        AbstractC3118z1 abstractC3118z1 = this;
        while (abstractC3118z1.a.n() != 0) {
            abstractC3118z1.setPendingCount(abstractC3118z1.a.n() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3118z1.a.n() - 1) {
                C3113y1 b = abstractC3118z1.b(i, abstractC3118z1.b + i2);
                i2 = (int) (i2 + b.a.count());
                b.fork();
                i++;
            }
            abstractC3118z1 = abstractC3118z1.b(i, abstractC3118z1.b + i2);
        }
        abstractC3118z1.a();
        abstractC3118z1.propagateCompletion();
    }
}
