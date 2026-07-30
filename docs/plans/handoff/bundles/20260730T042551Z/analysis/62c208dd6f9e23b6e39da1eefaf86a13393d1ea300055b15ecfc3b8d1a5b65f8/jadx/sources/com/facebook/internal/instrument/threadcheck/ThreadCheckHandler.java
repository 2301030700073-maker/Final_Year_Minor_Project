package com.facebook.internal.instrument.threadcheck;

import android.os.Looper;
import com.facebook.internal.instrument.InstrumentData;
import defpackage.C0173Do;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ThreadCheckHandler {
    public static final ThreadCheckHandler INSTANCE = new ThreadCheckHandler();
    private static final String TAG = ThreadCheckHandler.class.getCanonicalName();
    private static boolean enabled;

    private ThreadCheckHandler() {
    }

    public static final void enable() {
        enabled = true;
    }

    private final void log(String str, Class<?> cls, String str2, String str3) {
        if (enabled) {
            C0173Do.m399new(String.format(Locale.US, "%s annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s.", Arrays.copyOf(new Object[]{str, cls.getName(), str2, str3, Looper.myLooper(), Looper.getMainLooper()}, 6)), "java.lang.String.format(locale, format, *args)");
            Exception exc = new Exception();
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.build(exc, InstrumentData.Type.ThreadCheck).save();
        }
    }

    public static final void uiThreadViolationDetected(Class<?> cls, String str, String str2) {
        C0173Do.m401try(cls, "clazz");
        C0173Do.m401try(str, "methodName");
        C0173Do.m401try(str2, "methodDesc");
        INSTANCE.log("@UiThread", cls, str, str2);
    }

    public static final void workerThreadViolationDetected(Class<?> cls, String str, String str2) {
        C0173Do.m401try(cls, "clazz");
        C0173Do.m401try(str, "methodName");
        C0173Do.m401try(str2, "methodDesc");
        INSTANCE.log("@WorkerThread", cls, str, str2);
    }
}
