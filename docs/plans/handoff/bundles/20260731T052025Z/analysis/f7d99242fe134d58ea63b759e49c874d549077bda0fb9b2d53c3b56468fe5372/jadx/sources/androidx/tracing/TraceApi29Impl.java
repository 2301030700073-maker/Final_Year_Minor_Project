package androidx.tracing;

import android.app.AppOpsManager;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.contentcapture.ContentCaptureSession;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.app.NotificationCompatBuilder$Api24Impl;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.datastore.core.Api26Impl;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.webkit.internal.ApiHelperForP;
import androidx.work.Data;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.foreground.SystemForegroundService;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.drawable.DrawableUtils$OutlineCompatL;
import com.google.android.material.drawable.DrawableUtils$OutlineCompatR;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TraceApi29Impl {
    public static void beginAsyncSection(String str, int i) {
        Trace.beginAsyncSection(str, i);
    }

    public static int checkSelfPermission(Context context, String str) {
        boolean z;
        if (str == null) {
            Regex$$ExternalSyntheticBUOutline0.m("permission must be non-null");
            return 0;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        NotificationManagerCompat notificationManagerCompat = new NotificationManagerCompat(context);
        if (i >= 24) {
            z = NotificationCompatBuilder$Api24Impl.areNotificationsEnabled(notificationManagerCompat.mNotificationManager);
        } else {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
                Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
                num.getClass();
                if (((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i2), packageName)).intValue() != 0) {
                    z = false;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            }
            z = true;
        }
        return z ? 0 : -1;
    }

    public static void endAsyncSection(String str, int i) {
        Trace.endAsyncSection(str, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0046, code lost:
    
        if (r5.mThemeHash == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList getColorStateList(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            androidx.core.content.res.ResourcesCompat$ColorStateListCacheKey r1 = new androidx.core.content.res.ResourcesCompat$ColorStateListCacheKey
            r1.<init>(r0, r8)
            java.lang.Object r2 = androidx.core.content.res.ResourcesCompat.sColorStateCacheLock
            monitor-enter(r2)
            java.util.WeakHashMap r3 = androidx.core.content.res.ResourcesCompat.sColorStateCaches     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L4f
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L4f
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            androidx.core.content.res.ResourcesCompat$ColorStateListCacheEntry r5 = (androidx.core.content.res.ResourcesCompat.ColorStateListCacheEntry) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L4f
            android.content.res.Configuration r6 = r5.mConfiguration     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4c
            if (r8 != 0) goto L3e
            int r6 = r5.mThemeHash     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L48
            goto L3e
        L3c:
            r8 = move-exception
            goto L91
        L3e:
            if (r8 == 0) goto L4c
            int r6 = r5.mThemeHash     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4c
        L48:
            android.content.res.ColorStateList r3 = r5.mValue     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L51
        L4c:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L4f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L51:
            if (r3 == 0) goto L54
            return r3
        L54:
            java.lang.ThreadLocal r2 = androidx.core.content.res.ResourcesCompat.sTempTypedValue
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L66
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L66:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L75
            r3 = 31
            if (r2 > r3) goto L75
            goto L86
        L75:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = androidx.core.content.res.ColorStateListInflaterCompat.createFromXml(r0, r2, r8)     // Catch: java.lang.Exception -> L7e
            goto L86
        L7e:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L86:
            if (r4 == 0) goto L8c
            androidx.core.content.res.ResourcesCompat.addColorStateListToCache(r1, r9, r4, r8)
            goto L90
        L8c:
            android.content.res.ColorStateList r4 = r0.getColorStateList(r9, r8)
        L90:
            return r4
        L91:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.tracing.TraceApi29Impl.getColorStateList(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static ColorStateList getColorStateListOrNull(Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !(drawable instanceof ColorStateListDrawable)) {
            return null;
        }
        return ((ColorStateListDrawable) drawable).getColorStateList();
    }

    public static ContentCaptureSession getContentCaptureSession(View view) {
        return view.getContentCaptureSession();
    }

    public static Executor getMainExecutor(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? ApiHelperForP.getMainExecutor(context) : new ExecutorCompat$HandlerExecutor(new Handler(context.getMainLooper()));
    }

    public static float getTransitionAlpha(View view) {
        return view.getTransitionAlpha();
    }

    public static boolean isEnabled() {
        return Trace.isEnabled();
    }

    public static String obtainAndCheckReceiverPermission(Context context) {
        String str = context.getApplicationContext().getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (Data.Companion.checkSelfPermission(context, str) == 0) {
            return str;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            str = context.getOpPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
            if (Data.Companion.checkSelfPermission(context, str) == 0) {
                return str;
            }
        }
        DBUtil$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
        return null;
    }

    public static Insets of(int i, int i2, int i3, int i4) {
        return Insets.of(i, i2, i3, i4);
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        Intent registerReceiver;
        int i2 = i & 2;
        if (i2 == 0 && (i & 4) == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
            return null;
        }
        if (i2 != 0 && (i & 4) != 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
            return null;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 33) {
            return i3 >= 26 ? Api26Impl.registerReceiver(context, broadcastReceiver, intentFilter, i) : (i & 4) != 0 ? context.registerReceiver(broadcastReceiver, intentFilter, obtainAndCheckReceiverPermission(context), null) : context.registerReceiver(broadcastReceiver, intentFilter, null, null);
        }
        registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, null, null, i);
        return registerReceiver;
    }

    public static void setCounter(String str, int i) {
        Trace.setCounter(str, i);
    }

    public static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    public static void setOutlineToPath(Outline outline, Path path) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            DrawableUtils$OutlineCompatR.setPath(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                DrawableUtils$OutlineCompatL.setConvexPath(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            DrawableUtils$OutlineCompatL.setConvexPath(outline, path);
        }
    }

    public static void setTransitionAlpha(View view, float f) {
        view.setTransitionAlpha(f);
    }

    public static void setTransitionVisibility(View view, int i) {
        view.setTransitionVisibility(i);
    }

    public static void startForeground(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        systemForegroundService.startForeground(i, notification, i2);
    }

    public static void startForeground$1(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        try {
            systemForegroundService.startForeground(i, notification, i2);
        } catch (ForegroundServiceStartNotAllowedException e) {
            Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
            String str = SystemForegroundService.TAG;
            if (logger$LogcatLogger.mLoggingLevel <= 5) {
                Log.w(str, "Unable to start foreground service", e);
            }
        } catch (SecurityException e2) {
            Logger$LogcatLogger logger$LogcatLogger2 = Logger$LogcatLogger.get();
            String str2 = SystemForegroundService.TAG;
            if (logger$LogcatLogger2.mLoggingLevel <= 5) {
                Log.w(str2, "Unable to start foreground service", e2);
            }
        }
    }

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        viewGroup.suppressLayout(z);
    }

    public static final void traceValue(long j, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, j);
        }
    }

    public static void transformMatrixToGlobal(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    public static void transformMatrixToLocal(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
