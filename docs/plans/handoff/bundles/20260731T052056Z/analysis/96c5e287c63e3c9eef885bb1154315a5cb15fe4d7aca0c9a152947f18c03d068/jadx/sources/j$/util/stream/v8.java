package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class v8 extends w8 implements Consumer {
    public final Predicate e;
    public Object f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v8(Spliterator spliterator, v8 v8Var, int i) {
        super(spliterator, v8Var);
        this.g = i;
        this.e = v8Var.e;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.d = (this.d + 1) & 63;
        this.f = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.w8
    public final Spliterator b(Spliterator spliterator) {
        switch (this.g) {
            case 0:
                return new v8(spliterator, this, 0);
            default:
                return new v8(spliterator, this, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0053, code lost:
    
        if (r4 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0055, code lost:
    
        r6.b.set(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005a, code lost:
    
        r7.accept(r6.f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return r0;
     */
    @Override // j$.util.Spliterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean tryAdvance(java.util.function.Consumer r7) {
        /*
            r6 = this;
            int r0 = r6.g
            java.util.function.Predicate r1 = r6.e
            j$.util.Spliterator r2 = r6.a
            r3 = 1
            r4 = 0
            switch(r0) {
                case 0: goto L35;
                default: goto Lb;
            }
        Lb:
            boolean r0 = r6.c
            if (r0 == 0) goto L29
            boolean r0 = r6.a()
            if (r0 == 0) goto L29
            boolean r0 = r2.tryAdvance(r6)
            if (r0 == 0) goto L29
            java.lang.Object r0 = r6.f
            boolean r0 = r1.test(r0)
            if (r0 == 0) goto L2a
            java.lang.Object r6 = r6.f
            r7.accept(r6)
            goto L34
        L29:
            r0 = r3
        L2a:
            r6.c = r4
            if (r0 != 0) goto L33
            java.util.concurrent.atomic.AtomicBoolean r6 = r6.b
            r6.set(r3)
        L33:
            r3 = r4
        L34:
            return r3
        L35:
            boolean r0 = r6.c
            if (r0 == 0) goto L60
            r6.c = r4
        L3b:
            boolean r0 = r2.tryAdvance(r6)
            if (r0 == 0) goto L51
            boolean r5 = r6.a()
            if (r5 == 0) goto L51
            java.lang.Object r5 = r6.f
            boolean r5 = r1.test(r5)
            if (r5 == 0) goto L51
            r4 = r3
            goto L3b
        L51:
            if (r0 == 0) goto L64
            if (r4 == 0) goto L5a
            java.util.concurrent.atomic.AtomicBoolean r1 = r6.b
            r1.set(r3)
        L5a:
            java.lang.Object r6 = r6.f
            r7.accept(r6)
            goto L64
        L60:
            boolean r0 = r2.tryAdvance(r7)
        L64:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.v8.tryAdvance(java.util.function.Consumer):boolean");
    }

    @Override // j$.util.stream.w8, j$.util.Spliterator
    public Spliterator trySplit() {
        switch (this.g) {
            case 1:
                if (!this.b.get()) {
                    break;
                }
                break;
        }
        return super.trySplit();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v8(Spliterator spliterator, Predicate predicate, int i) {
        super(spliterator);
        this.g = i;
        this.e = predicate;
    }
}
