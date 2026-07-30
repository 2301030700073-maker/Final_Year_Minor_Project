package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.appevents.InternalAppEventsLogger;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: fr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2774fr {

    /* renamed from: do, reason: not valid java name */
    public static final ScheduledExecutorService f12990do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InternalAppEventsLogger f12991do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12992do;

    /* renamed from: fr$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static final Bundle m6682do(String str) {
            ScheduledExecutorService scheduledExecutorService = C2774fr.f12990do;
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str);
            bundle.putString("3_method", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            bundle.putString("2_result", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            bundle.putString("5_error_message", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            bundle.putString("4_error_code", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            bundle.putString("6_extras", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            return bundle;
        }
    }

    static {
        new Cdo();
        f12990do = Executors.newSingleThreadScheduledExecutor();
    }

    public C2774fr(Context context, String str) {
        C0173Do.m401try(str, "applicationId");
        this.f12992do = str;
        this.f12991do = new InternalAppEventsLogger(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                packageManager.getPackageInfo("com.facebook.katana", 0);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}
