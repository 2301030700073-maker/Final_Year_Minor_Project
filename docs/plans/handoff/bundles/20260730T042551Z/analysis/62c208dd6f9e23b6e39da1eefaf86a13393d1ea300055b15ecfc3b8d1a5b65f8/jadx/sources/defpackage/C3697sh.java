package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.util.JsonReader;
import com.facebook.appevents.AppEventsManager$start$1;
import com.facebook.internal.FeatureManager;
import com.google.firebase.datatransport.TransportRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import defpackage.C0577Wb;
import defpackage.C2619dB;
import java.nio.charset.Charset;
import java.util.List;

/* renamed from: sh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3697sh implements FeatureManager.Callback, C2619dB.Cdo, C0577Wb.Cdo, InterfaceC3146jI, InterfaceC3314m9 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f15508do;

    public /* synthetic */ C3697sh(int i) {
        this.f15508do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public Object apply(Object obj) {
        switch (this.f15508do) {
            case 2:
                C0823cg c0823cg = C2619dB.f12436do;
                return (List) C2619dB.m6431const(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new C2850h7(1));
            default:
                C0534Uc.f3934do.getClass();
                return C0577Wb.f4389do.m7396do((AbstractC0533Ub) obj).getBytes(Charset.forName("UTF-8"));
        }
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    public Object mo2065else(JsonReader jsonReader) {
        return C0577Wb.m2736do(jsonReader);
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public void onCompleted(boolean z) {
        AppEventsManager$start$1.m5322onSuccess$lambda0(z);
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        GC components$lambda$1;
        InterfaceC3853vI lambda$getComponents$2;
        InterfaceC3227ki lambda$getComponents$0;
        switch (this.f15508do) {
            case 0:
                lambda$getComponents$2 = TransportRegistrar.lambda$getComponents$2(xz);
                return lambda$getComponents$2;
            case 1:
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(xz);
                return lambda$getComponents$0;
            default:
                components$lambda$1 = FirebaseSessionsRegistrar.getComponents$lambda$1(xz);
                return components$lambda$1;
        }
    }
}
