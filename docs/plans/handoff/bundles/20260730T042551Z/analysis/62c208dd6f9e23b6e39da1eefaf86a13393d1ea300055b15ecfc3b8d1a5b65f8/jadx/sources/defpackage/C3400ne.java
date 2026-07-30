package defpackage;

import android.database.Cursor;
import android.util.JsonReader;
import androidx.transition.Transition;
import com.facebook.appevents.AppEventsManager$start$1;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.InstrumentManager;
import com.google.firebase.datatransport.TransportRegistrar;
import com.google.firebase.perf.FirebasePerfRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import defpackage.C0577Wb;
import defpackage.C2619dB;
import defpackage.C3518pe;
import defpackage.InterfaceC0118Bd;

/* renamed from: ne, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3400ne implements C3518pe.Cif, Transition.Ctry, FeatureManager.Callback, C2619dB.Cdo, InterfaceC0118Bd.Cdo, C0577Wb.Cdo, InterfaceC0598Xa, InterfaceC3314m9 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14541do;

    public /* synthetic */ C3400ne(int i) {
        this.f14541do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        C0823cg c0823cg = C2619dB.f12436do;
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    public Object mo2065else(JsonReader jsonReader) {
        return C0577Wb.m2740if(jsonReader);
    }

    @Override // androidx.transition.Transition.Ctry
    /* renamed from: for */
    public void mo2066for(Transition.Cnew cnew, Transition transition) {
        cnew.mo4609new(transition);
    }

    @Override // defpackage.InterfaceC0118Bd.Cdo
    /* renamed from: new */
    public void mo192new(InterfaceC3655ry interfaceC3655ry) {
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public void onCompleted(boolean z) {
        switch (this.f14541do) {
            case 2:
                C3756th c3756th = C3756th.f15751do;
                if (z) {
                    InstrumentManager.start();
                    break;
                }
                break;
            default:
                AppEventsManager$start$1.m5325onSuccess$lambda3(z);
                break;
        }
    }

    @Override // defpackage.InterfaceC0598Xa
    public Object then(FG fg) {
        Object obj = C0276Ih.f1552do;
        return -1;
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        C0299Ji components$lambda$0;
        InterfaceC3853vI lambda$getComponents$1;
        C3875vi providesFirebasePerformance;
        switch (this.f14541do) {
            case 0:
                lambda$getComponents$1 = TransportRegistrar.lambda$getComponents$1(xz);
                return lambda$getComponents$1;
            case 1:
                providesFirebasePerformance = FirebasePerfRegistrar.providesFirebasePerformance(xz);
                return providesFirebasePerformance;
            default:
                components$lambda$0 = FirebaseSessionsRegistrar.getComponents$lambda$0(xz);
                return components$lambda$0;
        }
    }
}
