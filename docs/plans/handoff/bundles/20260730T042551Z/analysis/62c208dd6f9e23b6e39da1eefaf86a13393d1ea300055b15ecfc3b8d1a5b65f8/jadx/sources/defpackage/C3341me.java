package defpackage;

import android.util.Pair;
import com.facebook.internal.DialogPresenter;
import defpackage.InterfaceC3380nG;

/* renamed from: me, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3341me implements V, InterfaceC3380nG.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14373do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f14374do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f14375if;

    public /* synthetic */ C3341me(B6 b6, int i, C2723ez c2723ez) {
        this.f14374do = b6;
        this.f14373do = i;
        this.f14375if = c2723ez;
    }

    public /* synthetic */ C3341me(CJ cj, AbstractC3794uI abstractC3794uI, int i) {
        this.f14374do = cj;
        this.f14375if = abstractC3794uI;
        this.f14373do = i;
    }

    @Override // defpackage.V
    /* renamed from: do */
    public final void mo2492do(Object obj) {
        DialogPresenter.m5402startActivityForResultWithAndroidX$lambda2((B6) this.f14374do, this.f14373do, (C2723ez) this.f14375if, (Pair) obj);
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        CJ cj = (CJ) this.f14374do;
        cj.f352do.mo2151do((AbstractC3794uI) this.f14375if, this.f14373do + 1);
        return null;
    }
}
