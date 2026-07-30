package defpackage;

import android.util.JsonReader;
import androidx.transition.Transition;
import com.facebook.appevents.AppEventsManager$start$1;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.internal.FeatureManager;
import defpackage.C0577Wb;
import defpackage.C2619dB;
import defpackage.P3;

/* renamed from: oI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3441oI implements Transition.Ctry, FeatureManager.Callback, C2619dB.Cdo, C0577Wb.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14722do;

    public /* synthetic */ C3441oI(int i) {
        this.f14722do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        C0823cg c0823cg = C2619dB.f12436do;
        throw new C3321mG("Timed out while trying to open db.", (Throwable) obj);
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    public final Object mo2065else(JsonReader jsonReader) {
        C3293lp c3293lp = C0577Wb.f4389do;
        P3.Cdo cdo = new P3.Cdo();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            nextName.hashCode();
            switch (nextName) {
                case "parameterKey":
                    String nextString = jsonReader.nextString();
                    if (nextString == null) {
                        throw new NullPointerException("Null parameterKey");
                    }
                    cdo.f2731do = nextString;
                    break;
                case "templateVersion":
                    cdo.f2729do = jsonReader.nextLong();
                    cdo.f2728do = (byte) (cdo.f2728do | 1);
                    break;
                case "rolloutVariant":
                    jsonReader.beginObject();
                    String str = null;
                    String str2 = null;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.getClass();
                        if (nextName2.equals("variantId")) {
                            str2 = jsonReader.nextString();
                            if (str2 == null) {
                                throw new NullPointerException("Null variantId");
                            }
                        } else if (nextName2.equals("rolloutId")) {
                            str = jsonReader.nextString();
                            if (str == null) {
                                throw new NullPointerException("Null rolloutId");
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (str != null && str2 != null) {
                        cdo.f2730do = new Q3(str, str2);
                        break;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        if (str == null) {
                            sb.append(" rolloutId");
                        }
                        if (str2 == null) {
                            sb.append(" variantId");
                        }
                        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
                    }
                case "parameterValue":
                    String nextString2 = jsonReader.nextString();
                    if (nextString2 == null) {
                        throw new NullPointerException("Null parameterValue");
                    }
                    cdo.f2732if = nextString2;
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return cdo.m1743do();
    }

    @Override // androidx.transition.Transition.Ctry
    /* renamed from: for */
    public final void mo2066for(Transition.Cnew cnew, Transition transition) {
        cnew.mo4607for(transition);
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public final void onCompleted(boolean z) {
        switch (this.f14722do) {
            case 1:
                AppEventsManager$start$1.m5324onSuccess$lambda2(z);
                break;
            default:
                ActivityLifecycleTracker.m5377startTracking$lambda0(z);
                break;
        }
    }
}
