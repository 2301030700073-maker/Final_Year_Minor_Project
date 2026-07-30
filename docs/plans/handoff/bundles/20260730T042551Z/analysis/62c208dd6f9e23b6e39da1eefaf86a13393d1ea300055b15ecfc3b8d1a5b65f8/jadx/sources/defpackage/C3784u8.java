package defpackage;

import com.facebook.appevents.codeless.CodelessManager;
import com.facebook.appevents.codeless.ViewIndexingTrigger;
import com.facebook.internal.FetchedAppSettings;
import com.google.firebase.remoteconfig.internal.Cif;
import defpackage.InterfaceC3380nG;
import java.util.Map;

/* renamed from: u8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3784u8 implements ViewIndexingTrigger.OnShakeListener, InterfaceC3380nG.Cdo, InterfaceC0598Xa {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f15857do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f15858if;

    public /* synthetic */ C3784u8(Object obj, Object obj2) {
        this.f15857do = obj;
        this.f15858if = obj2;
    }

    @Override // com.facebook.appevents.codeless.ViewIndexingTrigger.OnShakeListener
    public final void onShake() {
        CodelessManager.m5350onActivityResumed$lambda0((FetchedAppSettings) this.f15857do, (String) this.f15858if);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        Cif cif = (Cif) this.f15857do;
        Map map = (Map) this.f15858if;
        int[] iArr = Cif.f12004do;
        return cif.m6145for(0L, fg, map);
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        CJ cj = (CJ) this.f15857do;
        cj.f358do.o((Iterable) this.f15858if);
        return null;
    }
}
