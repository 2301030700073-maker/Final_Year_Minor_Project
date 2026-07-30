package defpackage;

import android.os.Handler;
import android.os.Looper;
import defpackage.InterfaceC0634Yo;
import java.util.concurrent.CancellationException;

/* renamed from: Ql, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0455Ql extends AbstractC0477Rl {
    private volatile C0455Ql _immediate;

    /* renamed from: break, reason: not valid java name */
    public final String f3041break;

    /* renamed from: do, reason: not valid java name */
    public final C0455Ql f3042do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f3043do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f3044do;

    public C0455Ql(Handler handler, String str, boolean z) {
        this.f3043do = handler;
        this.f3041break = str;
        this.f3044do = z;
        this._immediate = z ? this : null;
        C0455Ql c0455Ql = this._immediate;
        if (c0455Ql == null) {
            c0455Ql = new C0455Ql(handler, str, true);
            this._immediate = c0455Ql;
        }
        this.f3042do = c0455Ql;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0455Ql) && ((C0455Ql) obj).f3043do == this.f3043do;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f3043do);
    }

    @Override // defpackage.AbstractC3338mb
    /* renamed from: if */
    public final void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable) {
        if (this.f3043do.post(runnable)) {
            return;
        }
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) interfaceC3161jb.mo814new(InterfaceC0634Yo.Cif.f4763do);
        if (interfaceC0634Yo != null) {
            interfaceC0634Yo.j(cancellationException);
        }
        C0185Ee.f870do.mo1340if(interfaceC3161jb, runnable);
    }

    @Override // defpackage.AbstractC3338mb
    public final boolean r() {
        return (this.f3044do && C0173Do.m394do(Looper.myLooper(), this.f3043do.getLooper())) ? false : true;
    }

    @Override // defpackage.AbstractC3531pr
    public final AbstractC3531pr s() {
        return this.f3042do;
    }

    @Override // defpackage.AbstractC3531pr, defpackage.AbstractC3338mb
    public final String toString() {
        AbstractC3531pr abstractC3531pr;
        String str;
        C3752td c3752td = C0185Ee.f871do;
        AbstractC3531pr abstractC3531pr2 = C3648rr.f15331do;
        if (this == abstractC3531pr2) {
            str = "Dispatchers.Main";
        } else {
            try {
                abstractC3531pr = abstractC3531pr2.s();
            } catch (UnsupportedOperationException unused) {
                abstractC3531pr = null;
            }
            str = this == abstractC3531pr ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String str2 = this.f3041break;
        if (str2 == null) {
            str2 = this.f3043do.toString();
        }
        return this.f3044do ? Cpublic.m7816case(str2, ".immediate") : str2;
    }

    public C0455Ql(Handler handler) {
        this(handler, null, false);
    }
}
