package defpackage;

import com.google.android.gms.internal.appset.zzq;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class FG<TResult> {
    /* renamed from: break, reason: not valid java name */
    public <TContinuationResult> FG<TContinuationResult> mo589break(Executor executor, InterfaceC0598Xa<TResult, FG<TContinuationResult>> interfaceC0598Xa) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: case, reason: not valid java name */
    public abstract XV mo590case(Executor executor, InterfaceC0619Xv interfaceC0619Xv);

    /* renamed from: catch, reason: not valid java name */
    public abstract Exception mo591catch();

    /* renamed from: class, reason: not valid java name */
    public abstract TResult mo592class();

    /* renamed from: const, reason: not valid java name */
    public abstract Object mo593const();

    /* renamed from: do, reason: not valid java name */
    public void mo594do(Executor executor, InterfaceC0377Mv interfaceC0377Mv) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: else, reason: not valid java name */
    public <TContinuationResult> FG<TContinuationResult> mo595else(InterfaceC0598Xa<TResult, TContinuationResult> interfaceC0598Xa) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: final, reason: not valid java name */
    public abstract boolean mo596final();

    /* renamed from: for, reason: not valid java name */
    public void mo597for(Executor executor, InterfaceC0399Nv interfaceC0399Nv) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: goto, reason: not valid java name */
    public <TContinuationResult> FG<TContinuationResult> mo598goto(Executor executor, InterfaceC0598Xa<TResult, TContinuationResult> interfaceC0598Xa) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: if, reason: not valid java name */
    public void mo599if(InterfaceC0399Nv interfaceC0399Nv) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: import, reason: not valid java name */
    public <TContinuationResult> FG<TContinuationResult> mo600import(Executor executor, NF<TResult, TContinuationResult> nf) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: new, reason: not valid java name */
    public abstract XV mo601new(InterfaceC0487Rv interfaceC0487Rv);

    /* renamed from: super, reason: not valid java name */
    public abstract boolean mo602super();

    /* renamed from: this, reason: not valid java name */
    public FG mo603this(zzq zzqVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: throw, reason: not valid java name */
    public abstract boolean mo604throw();

    /* renamed from: try, reason: not valid java name */
    public abstract XV mo605try(Executor executor, InterfaceC0487Rv interfaceC0487Rv);

    /* renamed from: while, reason: not valid java name */
    public <TContinuationResult> FG<TContinuationResult> mo606while(NF<TResult, TContinuationResult> nf) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
