package defpackage;

import android.os.Bundle;
import androidx.lifecycle.Cconst;
import androidx.lifecycle.Cfinal;
import androidx.savedstate.Cdo;
import java.util.Map;

/* renamed from: mB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3316mB implements Cdo.Cif {

    /* renamed from: do, reason: not valid java name */
    public Bundle f14317do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.savedstate.Cdo f14318do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3439oG f14319do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14320do;

    /* renamed from: mB$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0459Qp implements InterfaceC0768bk<C3375nB> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC2746fL f14321do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(InterfaceC2746fL interfaceC2746fL) {
            super(0);
            this.f14321do = interfaceC2746fL;
        }

        @Override // defpackage.InterfaceC0768bk
        /* renamed from: new */
        public final C3375nB mo585new() {
            return Cfinal.m4257if(this.f14321do);
        }
    }

    public C3316mB(androidx.savedstate.Cdo cdo, InterfaceC2746fL interfaceC2746fL) {
        C0173Do.m401try(cdo, "savedStateRegistry");
        C0173Do.m401try(interfaceC2746fL, "viewModelStoreOwner");
        this.f14318do = cdo;
        this.f14319do = new C3439oG(new Cdo(interfaceC2746fL));
    }

    @Override // androidx.savedstate.Cdo.Cif
    /* renamed from: do */
    public final Bundle mo94do() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f14317do;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((C3375nB) this.f14319do.m7702do()).f14471do.entrySet()) {
            String str = (String) entry.getKey();
            Bundle mo94do = ((Cconst) entry.getValue()).f7103do.mo94do();
            if (!C0173Do.m394do(mo94do, Bundle.EMPTY)) {
                bundle.putBundle(str, mo94do);
            }
        }
        this.f14320do = false;
        return bundle;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7447if() {
        if (this.f14320do) {
            return;
        }
        Bundle m4580do = this.f14318do.m4580do("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f14317do;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (m4580do != null) {
            bundle.putAll(m4580do);
        }
        this.f14317do = bundle;
        this.f14320do = true;
    }
}
