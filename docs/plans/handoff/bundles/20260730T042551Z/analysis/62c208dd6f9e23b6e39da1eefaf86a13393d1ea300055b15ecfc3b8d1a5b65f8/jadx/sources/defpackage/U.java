package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class U {

    /* renamed from: do, reason: not valid java name */
    public static final Handler f3793do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?> f3794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Field f3795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Method f3796do;

    /* renamed from: for, reason: not valid java name */
    public static final Method f3797for;

    /* renamed from: if, reason: not valid java name */
    public static final Field f3798if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final Method f3799if;

    /* renamed from: U$do, reason: invalid class name */
    public static final class Cdo implements Application.ActivityLifecycleCallbacks {

        /* renamed from: do, reason: not valid java name */
        public Activity f3800do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f3801do;

        /* renamed from: for, reason: not valid java name */
        public final int f3803for;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f3802do = false;

        /* renamed from: if, reason: not valid java name */
        public boolean f3805if = false;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f3804for = false;

        public Cdo(Activity activity) {
            this.f3800do = activity;
            this.f3803for = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.f3800do == activity) {
                this.f3800do = null;
                this.f3805if = true;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // android.app.Application.ActivityLifecycleCallbacks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onActivityPaused(android.app.Activity r5) {
            /*
                r4 = this;
                boolean r0 = r4.f3805if
                if (r0 == 0) goto L3a
                boolean r0 = r4.f3804for
                if (r0 != 0) goto L3a
                boolean r0 = r4.f3802do
                if (r0 != 0) goto L3a
                java.lang.Object r0 = r4.f3801do
                r1 = 1
                java.lang.reflect.Field r2 = defpackage.U.f3798if     // Catch: java.lang.Throwable -> L32
                java.lang.Object r2 = r2.get(r5)     // Catch: java.lang.Throwable -> L32
                if (r2 != r0) goto L32
                int r0 = r5.hashCode()     // Catch: java.lang.Throwable -> L32
                int r3 = r4.f3803for
                if (r0 == r3) goto L20
                goto L32
            L20:
                java.lang.reflect.Field r0 = defpackage.U.f3795do     // Catch: java.lang.Throwable -> L32
                java.lang.Object r5 = r0.get(r5)     // Catch: java.lang.Throwable -> L32
                android.os.Handler r0 = defpackage.U.f3793do     // Catch: java.lang.Throwable -> L32
                T r3 = new T     // Catch: java.lang.Throwable -> L32
                r3.<init>(r5, r2)     // Catch: java.lang.Throwable -> L32
                r0.postAtFrontOfQueue(r3)     // Catch: java.lang.Throwable -> L32
                r5 = 1
                goto L33
            L32:
                r5 = 0
            L33:
                if (r5 == 0) goto L3a
                r4.f3804for = r1
                r5 = 0
                r4.f3801do = r5
            L3a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.U.Cdo.onActivityPaused(android.app.Activity):void");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.f3800do == activity) {
                this.f3802do = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0086 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r1.<init>(r2)
            defpackage.U.f3793do = r1
            r1 = 0
            java.lang.String r2 = "android.app.ActivityThread"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L15
            goto L16
        L15:
            r2 = r1
        L16:
            defpackage.U.f3794do = r2
            r2 = 1
            java.lang.String r3 = "mMainThread"
            java.lang.reflect.Field r3 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L23
            r3.setAccessible(r2)     // Catch: java.lang.Throwable -> L23
            goto L24
        L23:
            r3 = r1
        L24:
            defpackage.U.f3795do = r3
            java.lang.String r3 = "mToken"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L30
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L30
            goto L32
        L30:
            r0 = r1
        L32:
            defpackage.U.f3798if = r0
            java.lang.Class<?> r0 = defpackage.U.f3794do
            r3 = 0
            r4 = 3
            java.lang.String r5 = "performStopActivity"
            r6 = 2
            java.lang.Class<android.os.IBinder> r7 = android.os.IBinder.class
            if (r0 != 0) goto L40
            goto L55
        L40:
            java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L54
            r8[r3] = r7     // Catch: java.lang.Throwable -> L54
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L54
            r8[r2] = r9     // Catch: java.lang.Throwable -> L54
            java.lang.Class<java.lang.String> r9 = java.lang.String.class
            r8[r6] = r9     // Catch: java.lang.Throwable -> L54
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r5, r8)     // Catch: java.lang.Throwable -> L54
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L54
            goto L56
        L54:
        L55:
            r0 = r1
        L56:
            defpackage.U.f3796do = r0
            java.lang.Class<?> r0 = defpackage.U.f3794do
            if (r0 != 0) goto L5d
            goto L6d
        L5d:
            java.lang.Class[] r8 = new java.lang.Class[r6]     // Catch: java.lang.Throwable -> L6d
            r8[r3] = r7     // Catch: java.lang.Throwable -> L6d
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L6d
            r8[r2] = r9     // Catch: java.lang.Throwable -> L6d
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r5, r8)     // Catch: java.lang.Throwable -> L6d
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L6d
            goto L6e
        L6d:
            r0 = r1
        L6e:
            defpackage.U.f3799if = r0
            java.lang.Class<?> r0 = defpackage.U.f3794do
            java.lang.Class<android.content.res.Configuration> r5 = android.content.res.Configuration.class
            java.lang.Class<java.util.List> r8 = java.util.List.class
            int r9 = android.os.Build.VERSION.SDK_INT
            r10 = 26
            if (r9 == r10) goto L83
            r10 = 27
            if (r9 != r10) goto L81
            goto L83
        L81:
            r9 = 0
            goto L84
        L83:
            r9 = 1
        L84:
            if (r9 == 0) goto Lb3
            if (r0 != 0) goto L89
            goto Lb3
        L89:
            java.lang.String r9 = "requestRelaunchActivity"
            r10 = 9
            java.lang.Class[] r10 = new java.lang.Class[r10]     // Catch: java.lang.Throwable -> Lb3
            r10[r3] = r7     // Catch: java.lang.Throwable -> Lb3
            r10[r2] = r8     // Catch: java.lang.Throwable -> Lb3
            r10[r6] = r8     // Catch: java.lang.Throwable -> Lb3
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> Lb3
            r10[r4] = r3     // Catch: java.lang.Throwable -> Lb3
            java.lang.Class r3 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> Lb3
            r4 = 4
            r10[r4] = r3     // Catch: java.lang.Throwable -> Lb3
            r4 = 5
            r10[r4] = r5     // Catch: java.lang.Throwable -> Lb3
            r4 = 6
            r10[r4] = r5     // Catch: java.lang.Throwable -> Lb3
            r4 = 7
            r10[r4] = r3     // Catch: java.lang.Throwable -> Lb3
            r4 = 8
            r10[r4] = r3     // Catch: java.lang.Throwable -> Lb3
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lb3
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> Lb3
            r1 = r0
        Lb3:
            defpackage.U.f3797for = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.U.<clinit>():void");
    }
}
