package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import com.facebook.GraphRequest;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.AppEventQueue;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.SessionEventsState;
import com.facebook.appevents.aam.MetadataViewObserver;
import com.facebook.appevents.codeless.ViewIndexer;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.ScheduledFutureC0425Pd;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: abstract, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cabstract implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f4965do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4966for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f4967if;

    public /* synthetic */ Cabstract(int i, Object obj, Object obj2) {
        this.f4966for = i;
        this.f4965do = obj;
        this.f4967if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f4966for;
        Object obj = this.f4967if;
        Object obj2 = this.f4965do;
        switch (i) {
            case 0:
                Cinterface cinterface = (Cinterface) obj2;
                C4122zt.m8817break(obj);
                C0173Do.m401try(cinterface, "this$0");
                cinterface.m6937do();
                return;
            case 1:
                Context context = (Context) obj2;
                String str = (String) obj;
                C3756th c3756th = C3756th.f15751do;
                C0173Do.m401try(str, "$applicationId");
                C0173Do.m399new(context, "applicationContext");
                C3756th c3756th2 = C3756th.f15751do;
                c3756th2.getClass();
                try {
                    if (CrashShieldHandler.isObjectCrashing(c3756th2)) {
                        return;
                    }
                    try {
                        AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.Companion.getAttributionIdentifiers(context);
                        SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                        String m397goto = C0173Do.m397goto("ping", str);
                        long j = sharedPreferences.getLong(m397goto, 0L);
                        try {
                            AppEventsLoggerUtility appEventsLoggerUtility = AppEventsLoggerUtility.INSTANCE;
                            JSONObject jSONObjectForGraphAPICall = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.MOBILE_INSTALL_EVENT, attributionIdentifiers, AppEventsLogger.Companion.getAnonymousAppDeviceGUID(context), C3756th.m8300else(context), context);
                            String format = String.format("%s/activities", Arrays.copyOf(new Object[]{str}, 1));
                            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
                            C3756th.f15750do.getClass();
                            String str2 = GraphRequest.f9271for;
                            GraphRequest m5289goto = GraphRequest.Cfor.m5289goto(null, format, jSONObjectForGraphAPICall, null);
                            if (j == 0 && m5289goto.m5267for().f1995do == null) {
                                SharedPreferences.Editor edit = sharedPreferences.edit();
                                edit.putLong(m397goto, System.currentTimeMillis());
                                edit.apply();
                                return;
                            }
                            return;
                        } catch (JSONException e) {
                            throw new C3344mh("An error occurred while publishing install.", e);
                        }
                    } catch (Exception e2) {
                        Utility.logd("Facebook-publish", e2);
                        return;
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, c3756th2);
                    return;
                }
            case 2:
                AppEventQueue.m5308handleResponse$lambda5((AccessTokenAppIdPair) obj2, (SessionEventsState) obj);
                return;
            case 3:
                MetadataViewObserver.m5338process$lambda0((View) obj2, (MetadataViewObserver) obj);
                return;
            case 4:
                ViewIndexer.m5356sendToServer$lambda1((String) obj2, (ViewIndexer) obj);
                return;
            case 5:
                OnDeviceProcessingManager.m5391sendCustomEventAsync$lambda1((String) obj2, (AppEvent) obj);
                return;
            case 6:
                ((InterfaceC3637rg) ((Map.Entry) obj2).getKey()).mo4835do((C3284lg) obj);
                return;
            default:
                ScheduledFutureC0425Pd.Cif cif = (ScheduledFutureC0425Pd.Cif) obj;
                try {
                    ((Runnable) obj2).run();
                    return;
                } catch (Exception e3) {
                    ScheduledFutureC0425Pd.this.mo1470while(e3);
                    return;
                }
        }
    }
}
