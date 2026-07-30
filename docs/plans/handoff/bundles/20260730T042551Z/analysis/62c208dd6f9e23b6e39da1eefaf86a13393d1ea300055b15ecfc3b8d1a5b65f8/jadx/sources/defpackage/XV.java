package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.appset.zzq;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class XV<TResult> extends FG<TResult> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Exception f4521do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4523do;

    /* renamed from: if, reason: not valid java name */
    public Object f4524if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public volatile boolean f4525if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f4522do = new Object();

    /* renamed from: do, reason: not valid java name */
    public final GV f4520do = new GV();

    @Override // defpackage.FG
    /* renamed from: break */
    public final <TContinuationResult> FG<TContinuationResult> mo589break(Executor executor, InterfaceC0598Xa<TResult, FG<TContinuationResult>> interfaceC0598Xa) {
        XV xv = new XV();
        this.f4520do.m739do(new JR(executor, interfaceC0598Xa, xv));
        m2839switch();
        return xv;
    }

    @Override // defpackage.FG
    /* renamed from: case */
    public final XV mo590case(Executor executor, InterfaceC0619Xv interfaceC0619Xv) {
        this.f4520do.m739do(new IU(executor, interfaceC0619Xv));
        m2839switch();
        return this;
    }

    @Override // defpackage.FG
    /* renamed from: catch */
    public final Exception mo591catch() {
        Exception exc;
        synchronized (this.f4522do) {
            exc = this.f4521do;
        }
        return exc;
    }

    @Override // defpackage.FG
    /* renamed from: class */
    public final TResult mo592class() {
        TResult tresult;
        synchronized (this.f4522do) {
            Preconditions.checkState(this.f4523do, "Task is not yet complete");
            if (this.f4525if) {
                throw new CancellationException("Task is already canceled.");
            }
            Exception exc = this.f4521do;
            if (exc != null) {
                throw new WA(exc);
            }
            tresult = (TResult) this.f4524if;
        }
        return tresult;
    }

    @Override // defpackage.FG
    /* renamed from: const */
    public final Object mo593const() {
        Object obj;
        synchronized (this.f4522do) {
            Preconditions.checkState(this.f4523do, "Task is not yet complete");
            if (this.f4525if) {
                throw new CancellationException("Task is already canceled.");
            }
            if (IOException.class.isInstance(this.f4521do)) {
                throw ((Throwable) IOException.class.cast(this.f4521do));
            }
            Exception exc = this.f4521do;
            if (exc != null) {
                throw new WA(exc);
            }
            obj = this.f4524if;
        }
        return obj;
    }

    @Override // defpackage.FG
    /* renamed from: do */
    public final void mo594do(Executor executor, InterfaceC0377Mv interfaceC0377Mv) {
        this.f4520do.m739do(new C3922wS(executor, interfaceC0377Mv));
        m2839switch();
    }

    @Override // defpackage.FG
    /* renamed from: else */
    public final <TContinuationResult> FG<TContinuationResult> mo595else(InterfaceC0598Xa<TResult, TContinuationResult> interfaceC0598Xa) {
        return mo598goto(JG.f1621do, interfaceC0598Xa);
    }

    @Override // defpackage.FG
    /* renamed from: final */
    public final boolean mo596final() {
        return this.f4525if;
    }

    @Override // defpackage.FG
    /* renamed from: for */
    public final void mo597for(Executor executor, InterfaceC0399Nv interfaceC0399Nv) {
        this.f4520do.m739do(new C3275lT(executor, interfaceC0399Nv));
        m2839switch();
    }

    @Override // defpackage.FG
    /* renamed from: goto */
    public final <TContinuationResult> FG<TContinuationResult> mo598goto(Executor executor, InterfaceC0598Xa<TResult, TContinuationResult> interfaceC0598Xa) {
        XV xv = new XV();
        this.f4520do.m739do(new C3685sR(executor, interfaceC0598Xa, xv));
        m2839switch();
        return xv;
    }

    @Override // defpackage.FG
    /* renamed from: if */
    public final void mo599if(InterfaceC0399Nv interfaceC0399Nv) {
        this.f4520do.m739do(new C3275lT(JG.f1621do, interfaceC0399Nv));
        m2839switch();
    }

    @Override // defpackage.FG
    /* renamed from: import */
    public final <TContinuationResult> FG<TContinuationResult> mo600import(Executor executor, NF<TResult, TContinuationResult> nf) {
        XV xv = new XV();
        this.f4520do.m739do(new C3748tV(executor, nf, xv));
        m2839switch();
        return xv;
    }

    /* renamed from: native, reason: not valid java name */
    public final void m2835native(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f4522do) {
            m2838static();
            this.f4523do = true;
            this.f4521do = exc;
        }
        this.f4520do.m740if(this);
    }

    @Override // defpackage.FG
    /* renamed from: new */
    public final XV mo601new(InterfaceC0487Rv interfaceC0487Rv) {
        mo605try(JG.f1621do, interfaceC0487Rv);
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m2836public(Object obj) {
        synchronized (this.f4522do) {
            m2838static();
            this.f4523do = true;
            this.f4524if = obj;
        }
        this.f4520do.m740if(this);
    }

    /* renamed from: return, reason: not valid java name */
    public final void m2837return() {
        synchronized (this.f4522do) {
            if (this.f4523do) {
                return;
            }
            this.f4523do = true;
            this.f4525if = true;
            this.f4520do.m740if(this);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final void m2838static() {
        if (this.f4523do) {
            int i = C3283lf.f14177for;
            if (!mo602super()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception mo591catch = mo591catch();
        }
    }

    @Override // defpackage.FG
    /* renamed from: super */
    public final boolean mo602super() {
        boolean z;
        synchronized (this.f4522do) {
            z = this.f4523do;
        }
        return z;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m2839switch() {
        synchronized (this.f4522do) {
            if (this.f4523do) {
                this.f4520do.m740if(this);
            }
        }
    }

    @Override // defpackage.FG
    /* renamed from: this */
    public final FG mo603this(zzq zzqVar) {
        return mo589break(JG.f1621do, zzqVar);
    }

    @Override // defpackage.FG
    /* renamed from: throw */
    public final boolean mo604throw() {
        boolean z;
        synchronized (this.f4522do) {
            z = false;
            if (this.f4523do && !this.f4525if && this.f4521do == null) {
                z = true;
            }
        }
        return z;
    }

    @Override // defpackage.FG
    /* renamed from: try */
    public final XV mo605try(Executor executor, InterfaceC0487Rv interfaceC0487Rv) {
        this.f4520do.m739do(new VT(executor, interfaceC0487Rv));
        m2839switch();
        return this;
    }

    @Override // defpackage.FG
    /* renamed from: while */
    public final <TContinuationResult> FG<TContinuationResult> mo606while(NF<TResult, TContinuationResult> nf) {
        SV sv = JG.f1621do;
        XV xv = new XV();
        this.f4520do.m739do(new C3748tV(sv, nf, xv));
        m2839switch();
        return xv;
    }
}
