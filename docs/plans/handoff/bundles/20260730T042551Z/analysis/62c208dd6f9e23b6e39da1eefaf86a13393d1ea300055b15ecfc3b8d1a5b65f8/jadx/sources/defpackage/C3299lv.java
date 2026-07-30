package defpackage;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: lv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3299lv {
    /* renamed from: do, reason: not valid java name */
    public static void m7400do(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                String string = activity.getString(R.string.notification_channel_name);
                String string2 = activity.getString(R.string.notification_channel_description);
                NotificationChannel notificationChannel = new NotificationChannel("notification_type_promo_upgrade", string, 2);
                notificationChannel.setDescription(string2);
                ((NotificationManager) activity.getApplicationContext().getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7401if(Context context, int i, String str, String str2, String str3, String str4) {
        if (context == null || str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            return;
        }
        if (i == 2 && (str4 == null || str4.isEmpty())) {
            return;
        }
        if ("RANKINGS".equalsIgnoreCase(str4) && C3772tx.m8352try(context).isEmpty()) {
            return;
        }
        if (!"RESULTS".equalsIgnoreCase(str4) || context.getSharedPreferences("PrefFile", 0).getLong("root_results_count", 0L) >= 2) {
            Intent intent = new Intent(context, (Class<?>) MainActivity.class);
            if (str4 == null || str4.isEmpty() || "UPGRADES".equalsIgnoreCase(str4)) {
                intent.putExtra("viewPagerTitle", "UPGRADES");
            } else if ("ROOT BASICS".equalsIgnoreCase(str4)) {
                intent.putExtra("viewPagerTitle", "ROOT BASICS");
            } else if ("RANKINGS".equalsIgnoreCase(str4)) {
                intent.putExtra("viewPagerTitle", "RANKINGS");
            } else if ("RESULTS".equalsIgnoreCase(str4)) {
                intent.putExtra("viewPagerTitle", "RESULTS");
            } else if ("VERIFY ROOT".equalsIgnoreCase(str4)) {
                intent.putExtra("viewPagerTitle", "VERIFY ROOT");
            }
            intent.putExtra("analyticsName", str3);
            intent.setFlags(603979776);
            PendingIntent activity = PendingIntent.getActivity(context, i, intent, 201326592);
            C2719ev c2719ev = new C2719ev();
            ((AbstractC2896hv) c2719ev).f13405do = C2778fv.m6684if(str);
            c2719ev.f12775if = C2778fv.m6684if(str2);
            C2778fv c2778fv = new C2778fv(context, "notification_type_promo_upgrade");
            c2778fv.m6687new(BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher));
            c2778fv.f12999do.icon = R.drawable.icon_white_block_48px;
            c2778fv.f13005do = C2778fv.m6684if(str);
            c2778fv.f13013if = C2778fv.m6684if(str2);
            c2778fv.m6688try(c2719ev);
            c2778fv.f13012if = -1;
            c2778fv.f13006do = "promo";
            c2778fv.f13000do = activity;
            c2778fv.f13009for = context.getResources().getColor(R.color.colorPrimary);
            c2778fv.m6686for(true);
            ((NotificationManager) context.getSystemService("notification")).notify(i, c2778fv.m6685do());
            if (str3 == null || str3.isEmpty()) {
                str3 = "DefaultPromo";
            }
            if (!(C4012y0.f16658do != null)) {
                C4012y0.m8693if(context, false);
            }
            MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
            if (mobileAnalyticsManager == null) {
                return;
            }
            try {
                DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                EventConstraintDecorator m5101for = defaultEventClient.m5101for("NotificationDisplayed");
                m5101for.mo5062else("NotificationDisplayedName", str3);
                defaultEventClient.m5099case(m5101for.f8929do);
                C4012y0.f16658do.f8800do.m5100else();
            } catch (Exception unused) {
            }
        }
    }
}
