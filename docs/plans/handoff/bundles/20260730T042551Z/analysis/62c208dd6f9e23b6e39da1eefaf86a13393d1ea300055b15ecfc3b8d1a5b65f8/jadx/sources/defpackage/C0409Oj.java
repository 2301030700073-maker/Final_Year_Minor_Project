package defpackage;

import androidx.transition.Transition;
import defpackage.V6;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: Oj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0409Oj implements V6.Cdo, InterfaceC0598Xa {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2667do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2668do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Object f2669for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2670if;

    public /* synthetic */ C0409Oj(Transition transition, Runnable runnable) {
        this.f2667do = 0;
        this.f2668do = null;
        this.f2669for = transition;
        this.f2670if = runnable;
    }

    public /* synthetic */ C0409Oj(Object obj, Object obj2, Object obj3, int i) {
        this.f2667do = i;
        this.f2668do = obj;
        this.f2670if = obj2;
        this.f2669for = obj3;
    }

    @Override // defpackage.V6.Cdo
    public final void onCancel() {
        Runnable runnable = (Runnable) this.f2668do;
        Transition transition = (Transition) this.f2669for;
        Runnable runnable2 = (Runnable) this.f2670if;
        if (runnable != null) {
            runnable.run();
        } else {
            transition.mo4639new();
            runnable2.run();
        }
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        int i = this.f2667do;
        Object obj = this.f2669for;
        Object obj2 = this.f2670if;
        Object obj3 = this.f2668do;
        switch (i) {
            case 1:
                GG gg = (GG) obj3;
                AtomicBoolean atomicBoolean = (AtomicBoolean) obj2;
                W6 w6 = (W6) obj;
                if (fg.mo604throw()) {
                    gg.m722new(fg.mo592class());
                } else if (fg.mo591catch() != null) {
                    gg.m720for(fg.mo591catch());
                } else if (atomicBoolean.getAndSet(true)) {
                    XV xv = (XV) w6.f4341do.f14527do;
                    synchronized (xv.f4522do) {
                        if (!xv.f4523do) {
                            xv.f4523do = true;
                            xv.f4524if = null;
                            xv.f4520do.m740if(xv);
                        }
                    }
                }
                return LG.m1320try(null);
            default:
                C0101Ai c0101Ai = (C0101Ai) obj3;
                FG fg2 = (FG) obj2;
                FG fg3 = (FG) obj;
                c0101Ai.getClass();
                if (!fg2.mo604throw() || fg2.mo592class() == null) {
                    return LG.m1320try(Boolean.FALSE);
                }
                E9 e9 = (E9) fg2.mo592class();
                if (fg3.mo604throw()) {
                    E9 e92 = (E9) fg3.mo592class();
                    if (!(e92 == null || !e9.f740do.equals(e92.f740do))) {
                        return LG.m1320try(Boolean.FALSE);
                    }
                }
                D9 d9 = c0101Ai.f133if;
                d9.getClass();
                CallableC0394Nq callableC0394Nq = new CallableC0394Nq(1, d9, e9);
                Executor executor = d9.f519do;
                return LG.m1316for(callableC0394Nq, executor).mo600import(executor, new C9(d9, e9)).mo598goto(c0101Ai.f130do, new C0674a9(c0101Ai, 2));
        }
    }
}
