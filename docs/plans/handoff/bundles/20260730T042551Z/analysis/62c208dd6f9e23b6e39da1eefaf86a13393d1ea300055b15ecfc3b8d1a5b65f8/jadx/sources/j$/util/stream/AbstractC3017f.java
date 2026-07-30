package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* renamed from: j$.util.stream.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3017f extends CountedCompleter {
    private static final int g = ForkJoinPool.getCommonPoolParallelism() << 2;
    protected final AbstractC3117z0 a;
    protected Spliterator b;
    protected long c;
    protected AbstractC3017f d;
    protected AbstractC3017f e;
    private Object f;

    protected AbstractC3017f(AbstractC3017f abstractC3017f, Spliterator spliterator) {
        super(abstractC3017f);
        this.b = spliterator;
        this.a = abstractC3017f.a;
        this.c = abstractC3017f.c;
    }

    protected AbstractC3017f(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        super(null);
        this.a = abstractC3117z0;
        this.b = spliterator;
        this.c = 0L;
    }

    public static int b() {
        return g;
    }

    public static long h(long j) {
        long j2 = j / g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    protected abstract Object a();

    protected Object c() {
        return this.f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.c;
        if (j == 0) {
            j = h(estimateSize);
            this.c = j;
        }
        boolean z = false;
        AbstractC3017f abstractC3017f = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC3017f f = abstractC3017f.f(trySplit);
            abstractC3017f.d = f;
            AbstractC3017f f2 = abstractC3017f.f(spliterator);
            abstractC3017f.e = f2;
            abstractC3017f.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC3017f = f;
                f = f2;
            } else {
                abstractC3017f = f2;
            }
            z = !z;
            f.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC3017f.g(abstractC3017f.a());
        abstractC3017f.tryComplete();
    }

    protected final AbstractC3017f d() {
        return (AbstractC3017f) getCompleter();
    }

    protected final boolean e() {
        return d() == null;
    }

    protected abstract AbstractC3017f f(Spliterator spliterator);

    protected void g(Object obj) {
        this.f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.b = null;
        this.e = null;
        this.d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
