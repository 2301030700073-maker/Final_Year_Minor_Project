package defpackage;

import android.database.Cursor;
import android.util.Base64;
import android.util.JsonReader;
import androidx.transition.Transition;
import com.facebook.appevents.AppEventsManager$start$1;
import com.facebook.internal.FeatureManager;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.C0577Wb;
import defpackage.C2619dB;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

/* renamed from: nI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3382nI implements Transition.Ctry, FeatureManager.Callback, C2619dB.Cdo, InterfaceC3491p9, C0577Wb.Cdo, InterfaceC0598Xa, InterfaceC3146jI {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14490do;

    public /* synthetic */ C3382nI(int i) {
        this.f14490do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        switch (this.f14490do) {
            case 2:
                C0823cg c0823cg = C2619dB.f12436do;
                return Boolean.valueOf(((Cursor) obj).getCount() > 0);
            default:
                C0594Ws c0594Ws = (C0594Ws) obj;
                c0594Ws.getClass();
                C3420ny c3420ny = AbstractC2722ey.f12778do;
                c3420ny.getClass();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    c3420ny.m7625do(c0594Ws, byteArrayOutputStream);
                } catch (IOException unused) {
                }
                return byteArrayOutputStream.toByteArray();
        }
    }

    @Override // defpackage.InterfaceC3491p9
    /* renamed from: do, reason: not valid java name */
    public final List mo7562do(ComponentRegistrar componentRegistrar) {
        return componentRegistrar.getComponents();
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    public final Object mo2065else(JsonReader jsonReader) {
        switch (this.f14490do) {
            case 4:
                C3293lp c3293lp = C0577Wb.f4389do;
                jsonReader.beginObject();
                String str = null;
                byte[] bArr = null;
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    nextName.getClass();
                    if (nextName.equals("filename")) {
                        str = jsonReader.nextString();
                        if (str == null) {
                            throw new NullPointerException("Null filename");
                        }
                    } else if (nextName.equals("contents")) {
                        bArr = Base64.decode(jsonReader.nextString(), 2);
                        if (bArr == null) {
                            throw new NullPointerException("Null contents");
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                if (str != null && bArr != null) {
                    return new C4074z3(str, bArr);
                }
                StringBuilder sb = new StringBuilder();
                if (str == null) {
                    sb.append(" filename");
                }
                if (bArr == null) {
                    sb.append(" contents");
                }
                throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
            default:
                return C0577Wb.m2736do(jsonReader);
        }
    }

    @Override // androidx.transition.Transition.Ctry
    /* renamed from: for */
    public final void mo2066for(Transition.Cnew cnew, Transition transition) {
        cnew.mo4604case(transition);
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public final void onCompleted(boolean z) {
        AppEventsManager$start$1.m5323onSuccess$lambda1(z);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        Object obj = C0276Ih.f1552do;
        return 403;
    }
}
