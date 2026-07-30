package defpackage;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import defpackage.C0420Ou;

/* renamed from: kN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3210kN {
    /* renamed from: break, reason: not valid java name */
    public static void m7243break(String str, String str2) {
        if (C0583Wh.f4395do == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("stages", str);
            bundle.putString("details", C0583Wh.m2749new(100, str2));
            C0583Wh.f4395do.m6073do("root_stages_completed", bundle);
        } catch (Exception unused) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m7244case(String str) {
        if (C0583Wh.f4395do == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS, str);
            C0583Wh.f4395do.m6073do("play_integrity_status", bundle);
        } catch (Exception unused) {
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m7245catch(int i) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_ID, C0830cn.m4938catch(i));
            AppEventsLogger appEventsLogger = C3645ro.f15317do;
            if (appEventsLogger != null) {
                appEventsLogger.logEvent(AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT, Double.valueOf(C0830cn.m4937case(i)).doubleValue(), bundle);
            }
        } catch (Exception unused) {
        }
        try {
            Bundle bundle2 = new Bundle();
            bundle2.putDouble("value", Double.valueOf(C0830cn.m4937case(i)).doubleValue());
            bundle2.putString("currency", "USD");
            bundle2.putString("item_id", C0830cn.m4938catch(i));
            C0583Wh.f4395do.m6073do("add_to_cart", bundle2);
            C0583Wh.f4395do.m6073do("begin_checkout", bundle2);
        } catch (Exception unused2) {
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m7246class(String str) {
        if (C0583Wh.f4395do == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, C0583Wh.m2749new(100, str));
            C0583Wh.f4395do.m6073do("su_app_detected", bundle);
        } catch (Exception unused) {
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m7247const(int i) {
        if (C0583Wh.f4395do == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("duration_seconds", i);
            bundle.putString("device_model", C0583Wh.m2749new(100, Build.MODEL));
            C0583Wh.f4395do.m6073do("verify_root_timing", bundle);
        } catch (Exception unused) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7248do(String str) {
        if (C0583Wh.f4395do != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("item_name", str);
                C0583Wh.f4395do.m6073do("card_pressed", bundle);
            } catch (Exception unused) {
            }
        }
        C4012y0.m8692for(str);
        AppEventsLogger appEventsLogger = C3645ro.f15317do;
        if (appEventsLogger != null) {
            appEventsLogger.logEvent(str);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7249else(Activity activity, int i) {
        C0420Ou.Cfor cfor = C0420Ou.f2679do;
        if (cfor != null) {
            m7251goto(activity, cfor.m1703throws(i));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7250for(String str, String str2) {
        if (C0583Wh.f4395do == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("dialog_name", str);
            bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, str2);
            C0583Wh.f4395do.m6073do("dialog_action", bundle);
        } catch (Exception unused) {
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7251goto(Activity activity, String str) {
        if (activity != null) {
            try {
                C0583Wh.f4395do.setCurrentScreen(activity, str, null);
                Bundle bundle = new Bundle();
                bundle.putString("content_type", "ScreenView");
                bundle.putString("item_id", str);
                C0583Wh.f4395do.m6073do("select_content", bundle);
            } catch (Exception unused) {
            }
        }
        if (C4012y0.f16658do == null) {
            return;
        }
        try {
            if (O4.m1610if().isEmpty()) {
                DefaultEventClient defaultEventClient = C4012y0.f16658do.f8800do;
                EventConstraintDecorator m5101for = defaultEventClient.m5101for("ScreenViews");
                m5101for.mo5062else("ScreenName", str);
                defaultEventClient.m5099case(m5101for.f8929do);
            } else {
                DefaultEventClient defaultEventClient2 = C4012y0.f16658do.f8800do;
                EventConstraintDecorator m5101for2 = defaultEventClient2.m5101for("ScreenViews");
                m5101for2.mo5062else("ScreenName", str);
                defaultEventClient2.m5099case(m5101for2.f8929do.mo5065new("ABTestName", O4.m1610if()));
            }
            C3772tx.m8346strictfp(str);
        } catch (Exception unused2) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7252if(String str, String str2) {
        if (C0583Wh.f4395do != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString(AppEventsConstants.EVENT_PARAM_AD_TYPE, str);
                bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, str2);
                C0583Wh.f4395do.m6073do("ad_event", bundle);
            } catch (Exception unused) {
            }
        }
        if (!"Clicked".equals(str2) || C4012y0.f16658do == null) {
            return;
        }
        try {
            if (O4.m1610if().isEmpty()) {
                DefaultEventClient defaultEventClient = C4012y0.f16658do.f8800do;
                EventConstraintDecorator m5101for = defaultEventClient.m5101for("AdPressed");
                m5101for.mo5062else("AdName", str);
                defaultEventClient.m5099case(m5101for.f8929do);
            } else {
                DefaultEventClient defaultEventClient2 = C4012y0.f16658do.f8800do;
                EventConstraintDecorator m5101for2 = defaultEventClient2.m5101for("AdPressed");
                m5101for2.mo5062else("AdName", str);
                defaultEventClient2.m5099case(m5101for2.f8929do.mo5065new("ABTestName", O4.m1610if()));
            }
            C3772tx.m8351throws(str);
        } catch (Exception unused2) {
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7253new(String str, boolean z) {
        if (C0583Wh.f4395do != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("feedback_type", str);
                bundle.putBoolean("feedback_useful", z);
                C0583Wh.f4395do.m6073do("feedback_submitted", bundle);
            } catch (Exception unused) {
            }
        }
        String concat = str.concat(z ? "-Useful" : "-NotUseful");
        MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
        if (mobileAnalyticsManager == null) {
            return;
        }
        try {
            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
            EventConstraintDecorator m5101for = defaultEventClient.m5101for("FeedbackSubmitted");
            m5101for.mo5062else("FeedbackResult", concat);
            defaultEventClient.m5099case(m5101for.f8929do);
            C3772tx.m8332extends(concat);
        } catch (Exception unused2) {
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m7254this(String str) {
        if (C0583Wh.f4395do != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("item_name", str);
                C0583Wh.f4395do.m6073do("settings_item_selected", bundle);
            } catch (Exception unused) {
            }
        }
        MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
        if (mobileAnalyticsManager == null) {
            return;
        }
        try {
            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
            EventConstraintDecorator m5101for = defaultEventClient.m5101for("SettingItemPressed");
            m5101for.mo5062else("SettingItemName", str);
            defaultEventClient.m5099case(m5101for.f8929do);
        } catch (Exception unused2) {
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7255try(String str) {
        if (C0583Wh.f4395do != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("item_name", str);
                C0583Wh.f4395do.m6073do("menu_item_selected", bundle);
            } catch (Exception unused) {
            }
        }
        MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
        if (mobileAnalyticsManager == null) {
            return;
        }
        try {
            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
            EventConstraintDecorator m5101for = defaultEventClient.m5101for("MenuItemPressed");
            m5101for.mo5062else("MenuItemName", str);
            defaultEventClient.m5099case(m5101for.f8929do);
            C3772tx.m8341package(str);
        } catch (Exception unused2) {
        }
    }
}
