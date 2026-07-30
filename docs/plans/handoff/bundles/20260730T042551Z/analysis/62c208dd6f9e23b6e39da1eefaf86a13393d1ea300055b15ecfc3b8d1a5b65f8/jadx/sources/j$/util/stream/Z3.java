package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
final class Z3 extends a4 {
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Z3(Spliterator spliterator, a4 a4Var, int i) {
        super(spliterator, a4Var);
        this.h = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Z3(Spliterator spliterator, Predicate predicate, int i) {
        super(spliterator, predicate);
        this.h = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    @Override // j$.util.Spliterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean tryAdvance(java.util.function.Consumer r9) {
        /*
            r8 = this;
            int r0 = r8.h
            java.util.concurrent.atomic.AtomicBoolean r1 = r8.c
            java.util.function.Predicate r2 = r8.f
            r3 = 0
            j$.util.Spliterator r4 = r8.a
            r5 = 1
            switch(r0) {
                case 0: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L47
        Le:
            boolean r0 = r8.d
            if (r0 == 0) goto L42
            r8.d = r3
            r0 = 0
        L15:
            boolean r6 = r4.tryAdvance(r8)
            if (r6 == 0) goto L35
            int r7 = r8.e
            if (r7 != 0) goto L28
            boolean r7 = r1.get()
            if (r7 != 0) goto L26
            goto L28
        L26:
            r7 = 0
            goto L29
        L28:
            r7 = 1
        L29:
            if (r7 == 0) goto L35
            java.lang.Object r7 = r8.g
            boolean r7 = r2.test(r7)
            if (r7 == 0) goto L35
            r0 = 1
            goto L15
        L35:
            if (r6 == 0) goto L46
            if (r0 == 0) goto L3c
            r1.set(r5)
        L3c:
            java.lang.Object r0 = r8.g
            r9.accept(r0)
            goto L46
        L42:
            boolean r6 = r4.tryAdvance(r9)
        L46:
            return r6
        L47:
            boolean r0 = r8.d
            if (r0 == 0) goto L70
            int r0 = r8.e
            if (r0 != 0) goto L58
            boolean r0 = r1.get()
            if (r0 != 0) goto L56
            goto L58
        L56:
            r0 = 0
            goto L59
        L58:
            r0 = 1
        L59:
            if (r0 == 0) goto L70
            boolean r0 = r4.tryAdvance(r8)
            if (r0 == 0) goto L70
            java.lang.Object r0 = r8.g
            boolean r0 = r2.test(r0)
            if (r0 == 0) goto L71
            java.lang.Object r0 = r8.g
            r9.accept(r0)
            r3 = 1
            goto L78
        L70:
            r0 = 1
        L71:
            r8.d = r3
            if (r0 != 0) goto L78
            r1.set(r5)
        L78:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.Z3.tryAdvance(java.util.function.Consumer):boolean");
    }

    @Override // j$.util.stream.b4, j$.util.Spliterator
    public final Spliterator trySplit() {
        switch (this.h) {
            case 1:
                if (!this.c.get()) {
                    break;
                }
                break;
        }
        return super.trySplit();
    }
}
