package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.appevents.AppEventsLogger;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import defpackage.MJ;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class InternalAppEventsLogger {
    public static final Companion Companion = new Companion(null);
    private final AppEventsLoggerImpl loggerImpl;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public static /* synthetic */ InternalAppEventsLogger createInstance$default(Companion companion, Context context, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            return companion.createInstance(context, str);
        }

        public final InternalAppEventsLogger createInstance(Context context) {
            return createInstance$default(this, context, null, 2, null);
        }

        public final InternalAppEventsLogger createInstance(Context context, String str) {
            return new InternalAppEventsLogger(context, str);
        }

        public final Executor getAnalyticsExecutor() {
            return AppEventsLoggerImpl.Companion.getAnalyticsExecutor();
        }

        public final AppEventsLogger.FlushBehavior getFlushBehavior() {
            return AppEventsLoggerImpl.Companion.getFlushBehavior();
        }

        public final String getPushNotificationsRegistrationId() {
            return AppEventsLoggerImpl.Companion.getPushNotificationsRegistrationId();
        }

        public final void setInternalUserData(Map<String, String> map) {
            C0173Do.m401try(map, "ud");
            UserDataStore.setInternalUd(map);
        }

        public final void setUserData(Bundle bundle) {
            UserDataStore.setUserDataAndHash(bundle);
        }

        public final InternalAppEventsLogger createInstance(String str, String str2, AccessToken accessToken) {
            C0173Do.m401try(str, "activityName");
            return new InternalAppEventsLogger(str, str2, accessToken);
        }
    }

    public InternalAppEventsLogger(AppEventsLoggerImpl appEventsLoggerImpl) {
        C0173Do.m401try(appEventsLoggerImpl, "loggerImpl");
        this.loggerImpl = appEventsLoggerImpl;
    }

    public static final InternalAppEventsLogger createInstance(Context context) {
        return Companion.createInstance(context);
    }

    public static final InternalAppEventsLogger createInstance(Context context, String str) {
        return Companion.createInstance(context, str);
    }

    public static final InternalAppEventsLogger createInstance(String str, String str2, AccessToken accessToken) {
        return Companion.createInstance(str, str2, accessToken);
    }

    public static final Executor getAnalyticsExecutor() {
        return Companion.getAnalyticsExecutor();
    }

    public static final AppEventsLogger.FlushBehavior getFlushBehavior() {
        return Companion.getFlushBehavior();
    }

    public static final String getPushNotificationsRegistrationId() {
        return Companion.getPushNotificationsRegistrationId();
    }

    public static final void setInternalUserData(Map<String, String> map) {
        Companion.setInternalUserData(map);
    }

    public static final void setUserData(Bundle bundle) {
        Companion.setUserData(bundle);
    }

    public final void flush() {
        this.loggerImpl.flush();
    }

    public final void logChangedSettingsEvent(Bundle bundle) {
        C0173Do.m401try(bundle, "parameters");
        if (!((bundle.getInt("previous") & 2) != 0)) {
            C3756th c3756th = C3756th.f15751do;
            if (!MJ.m1411if()) {
                return;
            }
        }
        this.loggerImpl.logEventImplicitly("fb_sdk_settings_changed", null, bundle);
    }

    public final void logEvent(String str, Bundle bundle) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logEvent(str, bundle);
        }
    }

    public final void logEventFromSE(String str, String str2) {
        this.loggerImpl.logEventFromSE(str, str2);
    }

    public final void logEventImplicitly(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logEventImplicitly(str, bigDecimal, currency, bundle);
        }
    }

    public final void logPurchaseImplicitly(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logPurchaseImplicitly(bigDecimal, currency, bundle);
        }
    }

    public InternalAppEventsLogger(Context context) {
        this(new AppEventsLoggerImpl(context, (String) null, (AccessToken) null));
    }

    public InternalAppEventsLogger(Context context, String str) {
        this(new AppEventsLoggerImpl(context, str, (AccessToken) null));
    }

    public final void logEvent(String str, double d, Bundle bundle) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logEvent(str, d, bundle);
        }
    }

    public final void logEventImplicitly(String str) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logEventImplicitly(str, null, null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InternalAppEventsLogger(String str, String str2, AccessToken accessToken) {
        this(new AppEventsLoggerImpl(str, str2, accessToken));
        C0173Do.m401try(str, "activityName");
    }

    public final void logEventImplicitly(String str, Double d, Bundle bundle) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logEventImplicitly(str, d, bundle);
        }
    }

    public final void logEventImplicitly(String str, Bundle bundle) {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            this.loggerImpl.logEventImplicitly(str, null, bundle);
        }
    }
}
