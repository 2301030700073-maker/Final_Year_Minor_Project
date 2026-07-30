package defpackage;

import defpackage.WB;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes3.dex */
public abstract class WB<S extends WB<S>> extends AbstractC4080z9<S> implements InterfaceC0719av {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f4344do = AtomicIntegerFieldUpdater.newUpdater(WB.class, "cleanedAndPointers");
    private volatile int cleanedAndPointers;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f4345do;

    public WB(long j, S s, int i) {
        super(s);
        this.f4345do = j;
        this.cleanedAndPointers = i << 16;
    }

    /* renamed from: case, reason: not valid java name */
    public abstract int mo2709case();

    /* renamed from: else, reason: not valid java name */
    public abstract void mo2710else(int i, InterfaceC3161jb interfaceC3161jb);

    @Override // defpackage.AbstractC4080z9
    /* renamed from: for, reason: not valid java name */
    public final boolean mo2711for() {
        if (f4344do.get(this) == mo2709case()) {
            return !(m8788if() == null);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m2712goto() {
        if (f4344do.incrementAndGet(this) == mo2709case()) {
            m8789new();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2713this() {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.WB.f4344do
            int r1 = r0.get(r5)
            int r2 = r5.mo2709case()
            r3 = 1
            r4 = 0
            if (r1 != r2) goto L1c
            z9 r2 = r5.m8788if()
            if (r2 != 0) goto L16
            r2 = 1
            goto L17
        L16:
            r2 = 0
        L17:
            if (r2 == 0) goto L1a
            goto L1c
        L1a:
            r2 = 0
            goto L1d
        L1c:
            r2 = 1
        L1d:
            if (r2 != 0) goto L21
            r3 = 0
            goto L2a
        L21:
            r2 = 65536(0x10000, float:9.1835E-41)
            int r2 = r2 + r1
            boolean r0 = r0.compareAndSet(r5, r1, r2)
            if (r0 == 0) goto L0
        L2a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.WB.m2713this():boolean");
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m2714try() {
        if (f4344do.addAndGet(this, -65536) == mo2709case()) {
            return !(m8788if() == null);
        }
        return false;
    }
}
