package defpackage;

import android.animation.ValueAnimator;
import android.database.Cursor;
import android.util.JsonReader;
import android.view.View;
import androidx.transition.Transition;
import com.facebook.appevents.AppEventsManager;
import com.facebook.appevents.AppEventsManager$start$1;
import com.facebook.internal.FeatureManager;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import defpackage.C0332Kt;
import defpackage.C0577Wb;
import defpackage.C2619dB;
import defpackage.C3518pe;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: oe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3459oe implements C3518pe.Cdo, Transition.Ctry, FeatureManager.Callback, C2619dB.Cdo, C0332Kt.Cdo, C0577Wb.Cdo, InterfaceC3314m9 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14814do;

    public /* synthetic */ C3459oe(int i) {
        this.f14814do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public Object apply(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }

    @Override // defpackage.C0332Kt.Cdo
    /* renamed from: do */
    public void mo1220do(ValueAnimator valueAnimator, View view) {
        Float f = (Float) valueAnimator.getAnimatedValue();
        view.setScaleX(f.floatValue());
        view.setScaleY(f.floatValue());
    }

    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    public Object mo2065else(JsonReader jsonReader) {
        return C0577Wb.m2740if(jsonReader);
    }

    @Override // androidx.transition.Transition.Ctry
    /* renamed from: for */
    public void mo2066for(Transition.Cnew cnew, Transition transition) {
        cnew.mo4610try();
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public void onCompleted(boolean z) {
        switch (this.f14814do) {
            case 2:
                C3756th c3756th = C3756th.f15751do;
                if (z) {
                    AppEventsManager.start();
                    break;
                }
                break;
            default:
                AppEventsManager$start$1.m5326onSuccess$lambda4(z);
                break;
        }
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        InterfaceC3853vI lambda$getComponents$0;
        switch (this.f14814do) {
            case 0:
                C0503Sp<ScheduledExecutorService> c0503Sp = ExecutorsRegistrar.f11870do;
                return EnumC0744bJ.f8386do;
            case 1:
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(xz);
                return lambda$getComponents$0;
            default:
                Set m2882goto = xz.m2882goto(AbstractC0657Zp.class);
                C2768fl c2768fl = C2768fl.f12983do;
                if (c2768fl == null) {
                    synchronized (C2768fl.class) {
                        c2768fl = C2768fl.f12983do;
                        if (c2768fl == null) {
                            c2768fl = new C2768fl();
                            C2768fl.f12983do = c2768fl;
                        }
                    }
                }
                return new C0096Ad(m2882goto, c2768fl);
        }
    }
}
