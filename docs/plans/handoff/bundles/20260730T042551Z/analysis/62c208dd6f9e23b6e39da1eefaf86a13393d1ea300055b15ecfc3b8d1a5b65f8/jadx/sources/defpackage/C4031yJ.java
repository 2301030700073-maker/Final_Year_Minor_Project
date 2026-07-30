package defpackage;

import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cif;
import defpackage.InterfaceC0118Bd;
import defpackage.InterfaceC3380nG;
import java.util.Date;

/* renamed from: yJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C4031yJ implements InterfaceC3380nG.Cdo, InterfaceC0118Bd.Cdo, InterfaceC0598Xa {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f16730do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f16731if;

    public /* synthetic */ C4031yJ(Object obj, Object obj2) {
        this.f16730do = obj;
        this.f16731if = obj2;
    }

    @Override // defpackage.InterfaceC0118Bd.Cdo
    /* renamed from: new */
    public final void mo192new(InterfaceC3655ry interfaceC3655ry) {
        InterfaceC0118Bd.Cdo cdo = (InterfaceC0118Bd.Cdo) this.f16730do;
        InterfaceC0118Bd.Cdo cdo2 = (InterfaceC0118Bd.Cdo) this.f16731if;
        cdo.mo192new(interfaceC3655ry);
        cdo2.mo192new(interfaceC3655ry);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        Cif cif = (Cif) this.f16730do;
        Date date = (Date) this.f16731if;
        int[] iArr = Cif.f12004do;
        cif.getClass();
        if (fg.mo604throw()) {
            Cfor cfor = cif.f12008do;
            synchronized (cfor.f11996do) {
                cfor.f11995do.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
            }
        } else {
            Exception mo591catch = fg.mo591catch();
            if (mo591catch != null) {
                if (mo591catch instanceof C0167Di) {
                    cif.f12008do.m6139else();
                } else {
                    cif.f12008do.m6137case();
                }
            }
        }
        return fg;
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        CJ cj = (CJ) this.f16730do;
        return cj.f358do.d((AbstractC3794uI) this.f16731if);
    }
}
