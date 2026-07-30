package defpackage;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

/* renamed from: yi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4052yi implements InterfaceC3597qy {

    /* renamed from: case, reason: not valid java name */
    public final InterfaceC3597qy<L9> f16815case;

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3597qy<C0706ai> f16816do;

    /* renamed from: else, reason: not valid java name */
    public final InterfaceC3597qy<SessionManager> f16817else;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3227ki> f16818for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3655ry<C3421nz>> f16819if;

    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3655ry<InterfaceC3853vI>> f16820new;

    /* renamed from: try, reason: not valid java name */
    public final InterfaceC3597qy<RemoteConfigManager> f16821try;

    public C4052yi(C3576qd c3576qd, C0174Dp c0174Dp, GP gp, C2776ft c2776ft, C0481Rp c0481Rp, C3393nT c3393nT, C4082zB c4082zB) {
        this.f16816do = c3576qd;
        this.f16819if = c0174Dp;
        this.f16818for = gp;
        this.f16820new = c2776ft;
        this.f16821try = c0481Rp;
        this.f16815case = c3393nT;
        this.f16817else = c4082zB;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new C3875vi(this.f16816do.get(), this.f16819if.get(), this.f16818for.get(), this.f16820new.get(), this.f16821try.get(), this.f16815case.get(), this.f16817else.get());
    }
}
