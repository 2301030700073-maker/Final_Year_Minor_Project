package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3007d extends AbstractC3017f {
    protected final AtomicReference h;
    protected volatile boolean i;

    protected AbstractC3007d(AbstractC3007d abstractC3007d, Spliterator spliterator) {
        super(abstractC3007d, spliterator);
        this.h = abstractC3007d.h;
    }

    protected AbstractC3007d(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        super(abstractC3117z0, spliterator);
        this.h = new AtomicReference(null);
    }

    @Override // j$.util.stream.AbstractC3017f
    public final Object c() {
        if (!e()) {
            return super.c();
        }
        Object obj = this.h.get();
        return obj == null ? k() : obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
    
        r8 = r7.a();
     */
    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void compute() {
        /*
            r10 = this;
            j$.util.Spliterator r0 = r10.b
            long r1 = r0.estimateSize()
            long r3 = r10.c
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto Lf
            goto L15
        Lf:
            long r3 = j$.util.stream.AbstractC3017f.h(r1)
            r10.c = r3
        L15:
            java.util.concurrent.atomic.AtomicReference r5 = r10.h
            r6 = 0
            r7 = r10
        L19:
            java.lang.Object r8 = r5.get()
            if (r8 != 0) goto L6f
            boolean r8 = r7.i
            if (r8 != 0) goto L34
            j$.util.stream.f r9 = r7.d()
        L27:
            j$.util.stream.d r9 = (j$.util.stream.AbstractC3007d) r9
            if (r8 != 0) goto L34
            if (r9 == 0) goto L34
            boolean r8 = r9.i
            j$.util.stream.f r9 = r9.d()
            goto L27
        L34:
            if (r8 == 0) goto L3b
            java.lang.Object r8 = r7.k()
            goto L6f
        L3b:
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r8 <= 0) goto L6b
            j$.util.Spliterator r1 = r0.trySplit()
            if (r1 != 0) goto L46
            goto L6b
        L46:
            j$.util.stream.f r2 = r7.f(r1)
            j$.util.stream.d r2 = (j$.util.stream.AbstractC3007d) r2
            r7.d = r2
            j$.util.stream.f r8 = r7.f(r0)
            j$.util.stream.d r8 = (j$.util.stream.AbstractC3007d) r8
            r7.e = r8
            r9 = 1
            r7.setPendingCount(r9)
            if (r6 == 0) goto L60
            r0 = r1
            r7 = r2
            r2 = r8
            goto L61
        L60:
            r7 = r8
        L61:
            r6 = r6 ^ 1
            r2.fork()
            long r1 = r0.estimateSize()
            goto L19
        L6b:
            java.lang.Object r8 = r7.a()
        L6f:
            r7.g(r8)
            r7.tryComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.AbstractC3007d.compute():void");
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final void g(Object obj) {
        if (!e()) {
            super.g(obj);
        } else if (obj != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return c();
    }

    protected void i() {
        this.i = true;
    }

    protected final void j() {
        AbstractC3007d abstractC3007d = this;
        for (AbstractC3007d abstractC3007d2 = (AbstractC3007d) d(); abstractC3007d2 != null; abstractC3007d2 = (AbstractC3007d) abstractC3007d2.d()) {
            if (abstractC3007d2.d == abstractC3007d) {
                AbstractC3007d abstractC3007d3 = (AbstractC3007d) abstractC3007d2.e;
                if (!abstractC3007d3.i) {
                    abstractC3007d3.i();
                }
            }
            abstractC3007d = abstractC3007d2;
        }
    }

    protected abstract Object k();
}
