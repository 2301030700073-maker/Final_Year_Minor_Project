package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.facebook.login.LoginClient;
import defpackage.C2619dB;
import defpackage.InterfaceC0118Bd;

/* renamed from: br, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0775br implements LoginClient.Cfor, C2619dB.Cdo, R5, InterfaceC0118Bd.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f8457do;

    public /* synthetic */ C0775br(Object obj) {
        this.f8457do = obj;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        C2619dB c2619dB = (C2619dB) this.f8457do;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        C0823cg c0823cg = C2619dB.f12436do;
        c2619dB.getClass();
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + c2619dB.f12439do.mo445do()).execute();
        return null;
    }

    @Override // defpackage.R5
    /* renamed from: if */
    public final void mo2014if(C0423Pb c0423Pb) {
        D0 d0 = (D0) this.f8457do;
        synchronized (d0) {
            if (d0.f460do instanceof C3989xe) {
                d0.f461do.add(c0423Pb);
            }
            d0.f460do.mo2014if(c0423Pb);
        }
    }

    @Override // defpackage.InterfaceC0118Bd.Cdo
    /* renamed from: new */
    public final void mo192new(InterfaceC3655ry interfaceC3655ry) {
        ((InterfaceC0211Fi) interfaceC3655ry.get()).mo630do((C0511Tb) this.f8457do);
    }
}
