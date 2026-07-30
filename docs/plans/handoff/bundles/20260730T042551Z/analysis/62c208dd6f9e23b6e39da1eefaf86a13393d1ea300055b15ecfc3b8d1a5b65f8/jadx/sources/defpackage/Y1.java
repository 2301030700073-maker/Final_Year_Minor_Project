package defpackage;

import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventQueue;
import com.facebook.appevents.FlushReason;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.appevents.suggestedevents.ViewObserver;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.login.DeviceAuthDialog;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;
import defpackage.Oy;

/* loaded from: classes.dex */
public final /* synthetic */ class Y1 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f4634do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4635for;

    public /* synthetic */ Y1(Object obj, int i) {
        this.f4635for = i;
        this.f4634do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f4635for;
        Object obj = this.f4634do;
        switch (i) {
            case 0:
                AppEventQueue.m5305flush$lambda2((FlushReason) obj);
                return;
            case 1:
                AppEventsConversionsAPITransformerWebRequests.m5342transformGraphRequestAndSendToCAPIGEndPoint$lambda0((GraphRequest) obj);
                return;
            case 2:
                ViewObserver.m5396process$lambda0((ViewObserver) obj);
                return;
            case 3:
                ((FetchedAppSettingsManager.FetchedAppSettingsCallback) obj).onError();
                return;
            case 4:
                DeviceAuthDialog deviceAuthDialog = (DeviceAuthDialog) obj;
                int i2 = DeviceAuthDialog.f9312for;
                C0173Do.m401try(deviceAuthDialog, "this$0");
                deviceAuthDialog.m5491catch();
                return;
            case 5:
                ((CarouselLayoutManager) obj).p0();
                return;
            case 6:
                SideSheetBehavior.Cfor cfor = (SideSheetBehavior.Cfor) obj;
                cfor.f11365do = false;
                SideSheetBehavior sideSheetBehavior = cfor.f11364do;
                VK vk = sideSheetBehavior.f11340do;
                if (vk != null && vk.m2606goto()) {
                    cfor.m5883do(cfor.f11362do);
                    return;
                } else {
                    if (sideSheetBehavior.f11352for == 2) {
                        sideSheetBehavior.m5878default(cfor.f11362do);
                        return;
                    }
                    return;
                }
            case 7:
                AppStartTrace appStartTrace = (AppStartTrace) obj;
                if (appStartTrace.f11944goto != null) {
                    return;
                }
                appStartTrace.f11933do.getClass();
                appStartTrace.f11944goto = new Timer();
                long j = appStartTrace.m6113try().f11971do;
                C2684eI.Cdo cdo = appStartTrace.f11938do;
                cdo.m6554public(j);
                Timer m6113try = appStartTrace.m6113try();
                Timer timer = appStartTrace.f11944goto;
                m6113try.getClass();
                cdo.m6555return(timer.f11972if - m6113try.f11972if);
                appStartTrace.m6109catch(cdo);
                return;
            default:
                AI ai = (AI) obj;
                Oy oy = ai.f59do;
                boolean z = ai.f72do;
                Oy.Cdo cdo2 = oy.f2696do;
                synchronized (cdo2) {
                    cdo2.f2703do = z ? cdo2.f2710if : cdo2.f2708for;
                    cdo2.f2702do = z ? cdo2.f2709if : cdo2.f2707for;
                }
                oy.f2698if.m1719do(z);
                return;
        }
    }
}
