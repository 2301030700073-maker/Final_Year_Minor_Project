package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.util.JsonReader;
import android.view.View;
import androidx.transition.Transition;
import com.facebook.appevents.AppEventsManager$start$1;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.InstrumentManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import defpackage.C0332Kt;
import defpackage.C0577Wb;
import defpackage.C0774bq;
import defpackage.C2619dB;
import defpackage.C3554qD;
import java.util.ArrayList;

/* renamed from: Rg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0472Rg implements InterfaceC3314m9, Transition.Ctry, FeatureManager.Callback, EI, C2619dB.Cdo, C3554qD.Cif, C0332Kt.Cdo, C0774bq.Cdo, C0577Wb.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f3218do;

    public /* synthetic */ C0472Rg(int i) {
        this.f3218do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public Object apply(Object obj) {
        switch (this.f3218do) {
            case 5:
                C0823cg c0823cg = C2619dB.f12436do;
                throw new C3321mG("Timed out while trying to acquire the lock.", (Throwable) obj);
            default:
                Cursor cursor = (Cursor) obj;
                C0823cg c0823cg2 = C2619dB.f12436do;
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (cursor.moveToNext()) {
                    byte[] blob = cursor.getBlob(0);
                    arrayList.add(blob);
                    i += blob.length;
                }
                byte[] bArr = new byte[i];
                int i2 = 0;
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    byte[] bArr2 = (byte[]) arrayList.get(i3);
                    System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
                    i2 += bArr2.length;
                }
                return bArr;
        }
    }

    @Override // defpackage.EI
    /* renamed from: case */
    public void mo444case(Exception exc) {
    }

    @Override // defpackage.C0332Kt.Cdo
    /* renamed from: do */
    public void mo1220do(ValueAnimator valueAnimator, View view) {
        view.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else, reason: not valid java name */
    public Object mo2065else(JsonReader jsonReader) {
        return C0577Wb.m2737else(jsonReader);
    }

    @Override // androidx.transition.Transition.Ctry
    /* renamed from: for, reason: not valid java name */
    public void mo2066for(Transition.Cnew cnew, Transition transition) {
        cnew.mo4608if();
    }

    @Override // defpackage.C0774bq.Cdo
    /* renamed from: if, reason: not valid java name */
    public String mo2067if(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // defpackage.C3554qD.Cif
    /* renamed from: new, reason: not valid java name */
    public InterfaceC2817gb mo2068new(InterfaceC2817gb interfaceC2817gb) {
        int i = MaskableFrameLayout.f10733for;
        return interfaceC2817gb instanceof Celse ? new P7(((Celse) interfaceC2817gb).f12706do) : interfaceC2817gb;
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public void onCompleted(boolean z) {
        switch (this.f3218do) {
            case 1:
                if (!z) {
                    C3756th c3756th = C3756th.f15751do;
                    break;
                } else {
                    C3756th.f15752do = true;
                    break;
                }
            case 2:
                AppEventsManager$start$1.m5327onSuccess$lambda5(z);
                break;
            default:
                InstrumentManager.m5455start$lambda0(z);
                break;
        }
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        LC components$lambda$5;
        switch (this.f3218do) {
            case 0:
                return ExecutorsRegistrar.f11870do.get();
            default:
                components$lambda$5 = FirebaseSessionsRegistrar.getComponents$lambda$5(xz);
                return components$lambda$5;
        }
    }
}
