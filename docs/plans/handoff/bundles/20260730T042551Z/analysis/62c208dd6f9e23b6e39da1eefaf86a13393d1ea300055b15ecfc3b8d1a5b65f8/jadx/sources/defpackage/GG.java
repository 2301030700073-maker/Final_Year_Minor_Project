package defpackage;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
public final class GG<TResult> {

    /* renamed from: do, reason: not valid java name */
    public final XV f1160do = new XV();

    public GG() {
    }

    public GG(C3393nT c3393nT) {
        C3795uJ c3795uJ = new C3795uJ(this);
        c3393nT.getClass();
        ((XV) c3393nT.f14527do).mo590case(JG.f1621do, new LO(c3795uJ));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m719do(Exception exc) {
        this.f1160do.m2835native(exc);
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m720for(Exception exc) {
        XV xv = this.f1160do;
        xv.getClass();
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (xv.f4522do) {
            if (xv.f4523do) {
                return false;
            }
            xv.f4523do = true;
            xv.f4521do = exc;
            xv.f4520do.m740if(xv);
            return true;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m721if(TResult tresult) {
        this.f1160do.m2836public(tresult);
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m722new(TResult tresult) {
        XV xv = this.f1160do;
        synchronized (xv.f4522do) {
            if (xv.f4523do) {
                return false;
            }
            xv.f4523do = true;
            xv.f4524if = tresult;
            xv.f4520do.m740if(xv);
            return true;
        }
    }
}
