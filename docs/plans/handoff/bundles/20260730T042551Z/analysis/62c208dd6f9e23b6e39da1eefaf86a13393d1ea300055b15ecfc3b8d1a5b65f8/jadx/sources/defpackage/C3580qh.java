package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.JsonReader;
import android.view.View;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.InstrumentManager;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0332Kt;
import defpackage.C0577Wb;
import defpackage.C0774bq;

/* renamed from: qh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3580qh implements FeatureManager.Callback, C0332Kt.Cdo, C0774bq.Cdo, C0577Wb.Cdo, NF {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f15147do;

    public /* synthetic */ C3580qh(int i) {
        this.f15147do = i;
    }

    @Override // defpackage.C0332Kt.Cdo
    /* renamed from: do */
    public final void mo1220do(ValueAnimator valueAnimator, View view) {
        view.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    public final Object mo2065else(JsonReader jsonReader) {
        C3293lp c3293lp = C0577Wb.f4389do;
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        String str3 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            nextName.hashCode();
            switch (nextName) {
                case "libraryName":
                    str2 = jsonReader.nextString();
                    if (str2 == null) {
                        throw new NullPointerException("Null libraryName");
                    }
                    break;
                case "arch":
                    str = jsonReader.nextString();
                    if (str == null) {
                        throw new NullPointerException("Null arch");
                    }
                    break;
                case "buildId":
                    str3 = jsonReader.nextString();
                    if (str3 == null) {
                        throw new NullPointerException("Null buildId");
                    }
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (str != null && str2 != null && str3 != null) {
            return new C3897w3(str, str2, str3);
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            sb.append(" arch");
        }
        if (str2 == null) {
            sb.append(" libraryName");
        }
        if (str3 == null) {
            sb.append(" buildId");
        }
        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
    }

    @Override // defpackage.C0774bq.Cdo
    /* renamed from: if */
    public final String mo2067if(Context context) {
        int i;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null || Build.VERSION.SDK_INT < 24) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        i = applicationInfo.minSdkVersion;
        return String.valueOf(i);
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public final void onCompleted(boolean z) {
        switch (this.f15147do) {
            case 0:
                if (z) {
                    C3756th.f15757if = true;
                    break;
                }
                break;
            default:
                InstrumentManager.m5456start$lambda1(z);
                break;
        }
    }

    @Override // defpackage.NF
    public final FG then(Object obj) {
        return LG.m1320try(null);
    }
}
