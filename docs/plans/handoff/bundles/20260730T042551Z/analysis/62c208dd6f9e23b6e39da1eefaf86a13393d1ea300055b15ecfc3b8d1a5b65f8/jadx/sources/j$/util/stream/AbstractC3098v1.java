package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.v1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3098v1 extends CountedCompleter implements InterfaceC3079r2 {
    protected final Spliterator a;
    protected final AbstractC3117z0 b;
    protected final long c;
    protected long d;
    protected long e;
    protected int f;
    protected int g;

    AbstractC3098v1(int i, Spliterator spliterator, AbstractC3117z0 abstractC3117z0) {
        this.a = spliterator;
        this.b = abstractC3117z0;
        this.c = AbstractC3017f.h(spliterator.estimateSize());
        this.d = 0L;
        this.e = i;
    }

    AbstractC3098v1(AbstractC3098v1 abstractC3098v1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC3098v1);
        this.a = spliterator;
        this.b = abstractC3098v1.b;
        this.c = abstractC3098v1.c;
        this.d = j;
        this.e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    abstract AbstractC3098v1 a(Spliterator spliterator, long j, long j2);

    public /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3117z0.G();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        long j2 = this.e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.d;
        this.f = i;
        this.g = i + ((int) j2);
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        AbstractC3098v1 abstractC3098v1 = this;
        while (spliterator.estimateSize() > abstractC3098v1.c && (trySplit = spliterator.trySplit()) != null) {
            abstractC3098v1.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3098v1.a(trySplit, abstractC3098v1.d, estimateSize).fork();
            abstractC3098v1 = abstractC3098v1.a(spliterator, abstractC3098v1.d + estimateSize, abstractC3098v1.e - estimateSize);
        }
        abstractC3098v1.b.H0(spliterator, abstractC3098v1);
        abstractC3098v1.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }
}
