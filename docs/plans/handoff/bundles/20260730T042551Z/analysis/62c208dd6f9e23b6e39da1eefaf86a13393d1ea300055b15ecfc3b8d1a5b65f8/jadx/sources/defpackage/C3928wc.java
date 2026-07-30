package defpackage;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.text.TextUtils;
import java.util.Locale;

/* renamed from: wc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3928wc {

    /* renamed from: do, reason: not valid java name */
    public final Intent f16367do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f16368do;

    /* renamed from: wc$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static ActivityOptions m8574do() {
            ActivityOptions makeBasic;
            makeBasic = ActivityOptions.makeBasic();
            return makeBasic;
        }
    }

    /* renamed from: wc$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static void m8575do(ActivityOptions activityOptions, boolean z) {
            activityOptions.setShareIdentityEnabled(z);
        }
    }

    /* renamed from: wc$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static String m8576do() {
            LocaleList adjustedDefault;
            int size;
            Locale locale;
            adjustedDefault = LocaleList.getAdjustedDefault();
            size = adjustedDefault.size();
            if (size <= 0) {
                return null;
            }
            locale = adjustedDefault.get(0);
            return locale.toLanguageTag();
        }
    }

    public C3928wc(Intent intent, Bundle bundle) {
        this.f16367do = intent;
        this.f16368do = bundle;
    }

    /* renamed from: wc$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final O2 f16369do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ActivityOptions f16370do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Intent f16371do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f16372do;

        public Cnew() {
            this.f16371do = new Intent("android.intent.action.VIEW");
            this.f16369do = new O2();
            this.f16372do = true;
        }

        /* renamed from: do, reason: not valid java name */
        public final C3928wc m8577do() {
            Intent intent = this.f16371do;
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f16372do);
            this.f16369do.getClass();
            intent.putExtras(new Bundle());
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                String m8576do = Cif.m8576do();
                if (!TextUtils.isEmpty(m8576do)) {
                    Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
                    if (!bundleExtra.containsKey("Accept-Language")) {
                        bundleExtra.putString("Accept-Language", m8576do);
                        intent.putExtra("com.android.browser.headers", bundleExtra);
                    }
                }
            }
            if (i >= 34) {
                if (this.f16370do == null) {
                    this.f16370do = Cdo.m8574do();
                }
                Cfor.m8575do(this.f16370do, false);
            }
            ActivityOptions activityOptions = this.f16370do;
            return new C3928wc(intent, activityOptions != null ? activityOptions.toBundle() : null);
        }

        public Cnew(C4105zc c4105zc) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f16371do = intent;
            this.f16369do = new O2();
            this.f16372do = true;
            if (c4105zc != null) {
                intent.setPackage(c4105zc.f16925do.getPackageName());
                IBinder asBinder = c4105zc.f16922do.asBinder();
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", asBinder);
                PendingIntent pendingIntent = c4105zc.f16924do;
                if (pendingIntent != null) {
                    bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                }
                intent.putExtras(bundle);
            }
        }
    }
}
