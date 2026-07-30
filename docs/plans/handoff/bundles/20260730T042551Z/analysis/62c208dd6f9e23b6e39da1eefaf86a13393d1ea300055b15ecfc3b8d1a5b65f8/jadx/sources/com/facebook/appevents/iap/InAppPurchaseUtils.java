package com.facebook.appevents.iap;

import android.content.Context;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class InAppPurchaseUtils {
    public static final InAppPurchaseUtils INSTANCE = new InAppPurchaseUtils();

    private InAppPurchaseUtils() {
    }

    public static final Class<?> getClass(String str) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "className");
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseUtils.class);
            return null;
        }
    }

    public static final Class<?> getClassFromContext$facebook_core_release(Context context, String str) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(context, "context");
            C0173Do.m401try(str, "className");
            try {
                return context.getClassLoader().loadClass(str);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseUtils.class);
            return null;
        }
    }

    public static final Method getDeclaredMethod$facebook_core_release(Class<?> cls, String str, Class<?>... clsArr) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(cls, "clazz");
            C0173Do.m401try(str, "methodName");
            C0173Do.m401try(clsArr, "args");
            try {
                return cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            } catch (NoSuchMethodException unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseUtils.class);
            return null;
        }
    }

    public static final Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(cls, "clazz");
            C0173Do.m401try(str, "methodName");
            C0173Do.m401try(clsArr, "args");
            try {
                return cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            } catch (NoSuchMethodException unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseUtils.class);
            return null;
        }
    }

    public static final Object invokeMethod(Class<?> cls, Method method, Object obj, Object... objArr) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(cls, "clazz");
            C0173Do.m401try(method, "method");
            C0173Do.m401try(objArr, "args");
            if (obj != null) {
                obj = cls.cast(obj);
            }
            try {
                return method.invoke(obj, Arrays.copyOf(objArr, objArr.length));
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseUtils.class);
            return null;
        }
    }
}
