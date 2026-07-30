package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class PD {

    /* renamed from: do, reason: not valid java name */
    public volatile C0607Xj f2747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f2748do = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f2749do;

    public PD(AbstractC3904wA abstractC3904wA) {
        this.f2749do = abstractC3904wA;
    }

    /* renamed from: do, reason: not valid java name */
    public final C0607Xj m1752do() {
        this.f2749do.m8558do();
        if (!this.f2748do.compareAndSet(false, true)) {
            String mo1150if = mo1150if();
            AbstractC3904wA abstractC3904wA = this.f2749do;
            abstractC3904wA.m8558do();
            abstractC3904wA.m8562if();
            return new C0607Xj(((C0519Tj) abstractC3904wA.f16282do.mo2460else()).f3741do.compileStatement(mo1150if));
        }
        if (this.f2747do == null) {
            String mo1150if2 = mo1150if();
            AbstractC3904wA abstractC3904wA2 = this.f2749do;
            abstractC3904wA2.m8558do();
            abstractC3904wA2.m8562if();
            this.f2747do = new C0607Xj(((C0519Tj) abstractC3904wA2.f16282do.mo2460else()).f3741do.compileStatement(mo1150if2));
        }
        return this.f2747do;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1753for(C0607Xj c0607Xj) {
        if (c0607Xj == this.f2747do) {
            this.f2748do.set(false);
        }
    }

    /* renamed from: if */
    public abstract String mo1150if();
}
