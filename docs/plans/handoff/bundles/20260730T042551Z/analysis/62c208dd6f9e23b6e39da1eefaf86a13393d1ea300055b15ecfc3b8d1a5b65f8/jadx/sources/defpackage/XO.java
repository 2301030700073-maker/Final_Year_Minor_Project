package defpackage;

import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public final class XO<T> implements InterfaceC0619Xv, InterfaceC0487Rv, InterfaceC0377Mv {

    /* renamed from: do, reason: not valid java name */
    public final int f4500do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final XV f4501do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Exception f4502do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f4503do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4504do;

    /* renamed from: for, reason: not valid java name */
    public int f4505for;

    /* renamed from: if, reason: not valid java name */
    public int f4506if;

    /* renamed from: new, reason: not valid java name */
    public int f4507new;

    public XO(int i, XV xv) {
        this.f4500do = i;
        this.f4501do = xv;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2831do() {
        int i = this.f4506if + this.f4505for + this.f4507new;
        int i2 = this.f4500do;
        if (i == i2) {
            Exception exc = this.f4502do;
            XV xv = this.f4501do;
            if (exc == null) {
                if (this.f4504do) {
                    xv.m2837return();
                    return;
                } else {
                    xv.m2836public(null);
                    return;
                }
            }
            xv.m2835native(new ExecutionException(this.f4505for + " out of " + i2 + " underlying tasks failed", this.f4502do));
        }
    }

    @Override // defpackage.InterfaceC0377Mv
    /* renamed from: for */
    public final void mo355for() {
        synchronized (this.f4503do) {
            this.f4507new++;
            this.f4504do = true;
            m2831do();
        }
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(T t) {
        synchronized (this.f4503do) {
            this.f4506if++;
            m2831do();
        }
    }

    @Override // defpackage.InterfaceC0487Rv
    public final void onFailure(Exception exc) {
        synchronized (this.f4503do) {
            this.f4505for++;
            this.f4502do = exc;
            m2831do();
        }
    }
}
