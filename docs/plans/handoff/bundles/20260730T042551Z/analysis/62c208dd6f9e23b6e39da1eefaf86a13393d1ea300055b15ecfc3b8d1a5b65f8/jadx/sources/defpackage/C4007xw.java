package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import defpackage.C2957iz;
import java.text.SimpleDateFormat;

/* renamed from: xw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4007xw {
    /* renamed from: do, reason: not valid java name */
    public static void m8678do(Activity activity, String str, long j, boolean z) {
        Trace trace = VJ.f4080do;
        try {
            C3443oK m7703new = C3443oK.m7703new(activity);
            ProgressWheelv2 progressWheelv2 = m7703new != null ? m7703new.f14737do : null;
            if (progressWheelv2 != null) {
                progressWheelv2.f12276new = false;
                progressWheelv2.f12266for = 0.0f;
                progressWheelv2.f12274new = 0.0f;
                progressWheelv2.invalidate();
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        MainActivity.f12238goto = true;
        C3443oK m7703new2 = C3443oK.m7703new(activity);
        if (str == null || str.contains("Error") || RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str)) {
            MainActivity.f12241this = false;
            TextView textView = m7703new2 != null ? m7703new2.f14734do : null;
            ImageView imageView = m7703new2 != null ? m7703new2.f14733do : null;
            TextView textView2 = m7703new2 != null ? m7703new2.f14743if : null;
            if (textView != null && imageView != null) {
                try {
                    textView.setText(m8679if(activity, false));
                    textView.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
                    textView.setVisibility(0);
                    imageView.setImageDrawable(activity.getResources().getDrawable(R.drawable.root_status_no));
                    if (j != 0 && textView2 != null) {
                        textView2.setText(activity.getResources().getString(R.string.resultsHistoryDateTime) + " " + new SimpleDateFormat().format(Long.valueOf(j)));
                        textView2.setVisibility(0);
                    }
                } catch (Resources.NotFoundException | IndexOutOfBoundsException | NullPointerException | OutOfMemoryError e2) {
                    C0766bi.m4854do().m4855for(e2);
                }
            }
        } else {
            MainActivity.f12241this = true;
            TextView textView3 = m7703new2 != null ? m7703new2.f14734do : null;
            ImageView imageView2 = m7703new2 != null ? m7703new2.f14733do : null;
            TextView textView4 = m7703new2 != null ? m7703new2.f14743if : null;
            if (textView3 != null && imageView2 != null) {
                try {
                    textView3.setText(m8679if(activity, true));
                    textView3.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
                    textView3.setVisibility(0);
                    imageView2.setImageDrawable(activity.getResources().getDrawable(R.drawable.root_status_yes));
                    if (j != 0 && textView4 != null) {
                        textView4.setText(activity.getResources().getString(R.string.resultsHistoryDateTime) + " " + new SimpleDateFormat().format(Long.valueOf(j)));
                        textView4.setVisibility(0);
                    }
                } catch (Resources.NotFoundException | NullPointerException | OutOfMemoryError e3) {
                    C0766bi.m4854do().m4855for(e3);
                }
            }
        }
        MainActivity.f12239if = j;
        if (str != null) {
            MainActivity.f12233catch = str;
        }
        if (activity instanceof AppCompatActivity) {
            try {
                ((AppCompatActivity) activity).invalidateOptionsMenu();
            } catch (Exception e4) {
                C0766bi.m4854do().m4855for(e4);
            }
        }
        if (z) {
            Context applicationContext = activity.getApplicationContext();
            boolean z2 = MainActivity.f12241this;
            String str2 = MainActivity.f12233catch;
            long j2 = MainActivity.f12239if;
            int i = AsyncTaskC3619rK.f15259new;
            String str3 = Build.MODEL;
            C3772tx.m8328continue(applicationContext, z2, str2, j2, i, str3, Build.VERSION.RELEASE);
            try {
                C0583Wh.m2747for(str3, MainActivity.f12241this);
                if (str != null) {
                    C3210kN.m7243break(str, MainActivity.f12241this ? "Success" : "Fail");
                }
            } catch (Exception unused) {
            }
            boolean z3 = MainActivity.f12241this;
            String str4 = MainActivity.f12233catch;
            int i2 = AsyncTaskC3619rK.f15259new;
            MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
            if (mobileAnalyticsManager != null) {
                try {
                    DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                    EventConstraintDecorator m5101for = defaultEventClient.m5101for("RootResultsStatus");
                    m5101for.mo5062else("StatusOfRootInstall", String.valueOf(z3));
                    defaultEventClient.m5099case(m5101for.f8929do.mo5065new("DetailsOfRootInstall", str4).mo5060case("DurationOfRootResult", Double.valueOf(i2)));
                    C4012y0.f16658do.f8800do.m5100else();
                } catch (Exception unused2) {
                }
            }
            boolean z4 = MainActivity.f12241this;
            try {
                Bundle bundle = new Bundle();
                bundle.putString(AppEventsConstants.EVENT_PARAM_SUCCESS, z4 ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
                AppEventsLogger appEventsLogger = C3645ro.f15317do;
                if (appEventsLogger != null) {
                    appEventsLogger.logEvent("RootResult", bundle);
                }
            } catch (Exception unused3) {
            }
            C0583Wh.m2747for(Build.MODEL, MainActivity.f12241this);
        }
        if (activity != null && !C3772tx.m8352try(activity).isEmpty() && MainActivity.f12238goto) {
            C3289ll.m7374import(activity);
        }
        if (z || (activity != null && C3772tx.m8352try(activity).isEmpty())) {
            new C2957iz.Cif().execute(Boolean.TRUE);
        }
        TextView textView5 = m7703new2 != null ? m7703new2.f14745new : null;
        TextView textView6 = m7703new2 != null ? m7703new2.f14748try : null;
        TextView textView7 = m7703new2 != null ? m7703new2.f14728case : null;
        if (textView5 != null && activity != null) {
            textView5.setText(activity.getString(R.string.verifyRootCAPS));
        }
        VJ.m2589throw(activity);
        if (textView6 != null) {
            textView6.setVisibility(8);
        }
        if (textView7 != null) {
            textView7.setVisibility(8);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m8679if(Activity activity, boolean z) {
        return z ? activity.getString(R.string.rootSuccessMsgv4) : activity.getString(R.string.rootFailMsgv4);
    }
}
