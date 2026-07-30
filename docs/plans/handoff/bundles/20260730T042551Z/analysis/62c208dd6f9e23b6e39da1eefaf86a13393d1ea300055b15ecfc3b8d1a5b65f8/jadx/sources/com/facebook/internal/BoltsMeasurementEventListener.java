package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C4119zq;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class BoltsMeasurementEventListener extends BroadcastReceiver {
    private static final String BOLTS_MEASUREMENT_EVENT_PREFIX = "bf_";
    private static final String MEASUREMENT_EVENT_ARGS_KEY = "event_args";
    private static final String MEASUREMENT_EVENT_NAME_KEY = "event_name";
    private static BoltsMeasurementEventListener singleton;
    private final Context applicationContext;
    public static final Companion Companion = new Companion(null);
    private static final String MEASUREMENT_EVENT_NOTIFICATION_NAME = "com.parse.bolts.measurement_event";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public static /* synthetic */ void getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release$annotations() {
        }

        public final BoltsMeasurementEventListener getInstance(Context context) {
            C0173Do.m401try(context, "context");
            if (BoltsMeasurementEventListener.access$getSingleton$cp() != null) {
                return BoltsMeasurementEventListener.access$getSingleton$cp();
            }
            BoltsMeasurementEventListener boltsMeasurementEventListener = new BoltsMeasurementEventListener(context, null);
            BoltsMeasurementEventListener.access$open(boltsMeasurementEventListener);
            BoltsMeasurementEventListener.access$setSingleton$cp(boltsMeasurementEventListener);
            return BoltsMeasurementEventListener.access$getSingleton$cp();
        }

        public final String getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release() {
            return BoltsMeasurementEventListener.access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp();
        }
    }

    private BoltsMeasurementEventListener(Context context) {
        Context applicationContext = context.getApplicationContext();
        C0173Do.m399new(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
    }

    public /* synthetic */ BoltsMeasurementEventListener(Context context, C2819gd c2819gd) {
        this(context);
    }

    public static final /* synthetic */ String access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp() {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return MEASUREMENT_EVENT_NOTIFICATION_NAME;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    public static final /* synthetic */ BoltsMeasurementEventListener access$getSingleton$cp() {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return singleton;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$open(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            boltsMeasurementEventListener.open();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
        }
    }

    public static final /* synthetic */ void access$setSingleton$cp(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            singleton = boltsMeasurementEventListener;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
        }
    }

    private final void close() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C4119zq m8809do = C4119zq.m8809do(this.applicationContext);
            C0173Do.m399new(m8809do, "getInstance(applicationContext)");
            m8809do.m8812new(this);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final BoltsMeasurementEventListener getInstance(Context context) {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return Companion.getInstance(context);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    private final void open() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C4119zq m8809do = C4119zq.m8809do(this.applicationContext);
            C0173Do.m399new(m8809do, "getInstance(applicationContext)");
            m8809do.m8811if(this, new IntentFilter(MEASUREMENT_EVENT_NOTIFICATION_NAME));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void finalize() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            close();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(context);
            Set<String> set = null;
            String m397goto = C0173Do.m397goto(intent == null ? null : intent.getStringExtra(MEASUREMENT_EVENT_NAME_KEY), BOLTS_MEASUREMENT_EVENT_PREFIX);
            Bundle bundleExtra = intent == null ? null : intent.getBundleExtra(MEASUREMENT_EVENT_ARGS_KEY);
            Bundle bundle = new Bundle();
            if (bundleExtra != null) {
                set = bundleExtra.keySet();
            }
            if (set != null) {
                for (String str : set) {
                    C0173Do.m399new(str, "key");
                    Pattern compile = Pattern.compile("[^0-9a-zA-Z _-]");
                    C0173Do.m399new(compile, "compile(pattern)");
                    String replaceAll = compile.matcher(str).replaceAll("-");
                    C0173Do.m399new(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                    Pattern compile2 = Pattern.compile("^[ -]*");
                    C0173Do.m399new(compile2, "compile(pattern)");
                    String replaceAll2 = compile2.matcher(replaceAll).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    C0173Do.m399new(replaceAll2, "nativePattern.matcher(in…).replaceAll(replacement)");
                    Pattern compile3 = Pattern.compile("[ -]*$");
                    C0173Do.m399new(compile3, "compile(pattern)");
                    String replaceAll3 = compile3.matcher(replaceAll2).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    C0173Do.m399new(replaceAll3, "nativePattern.matcher(in…).replaceAll(replacement)");
                    bundle.putString(replaceAll3, (String) bundleExtra.get(str));
                }
            }
            internalAppEventsLogger.logEvent(m397goto, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
