package com.android.launcher3.icons;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.LauncherActivityInfo;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import c.a.a.L0.a;
import c.a.a.L0.m;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.SafeCloseable;
import com.android.systemui.shared.R;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

/* loaded from: classes.dex */
public class IconProvider {
    public final ComponentName mCalendar;
    public final ComponentName mClock;
    public final Context mContext;
    public static final BiFunction LAI_LOADER = m.f1458a;
    public static final BiFunction AI_LOADER = a.f1441a;

    public class DateTimeChangeReceiver extends BroadcastReceiver {
        public final BiConsumer mCallback;

        public DateTimeChangeReceiver(BiConsumer biConsumer) {
            this.mCallback = biConsumer;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ComponentName parseComponentOrNull;
            if ("android.intent.action.TIMEZONE_CHANGED".equals(intent.getAction()) && (parseComponentOrNull = IconProvider.parseComponentOrNull(context, R.string.clock_component_name)) != null) {
                this.mCallback.accept(parseComponentOrNull.getPackageName(), Process.myUserHandle());
            }
            ComponentName parseComponentOrNull2 = IconProvider.parseComponentOrNull(context, R.string.calendar_component_name);
            if (parseComponentOrNull2 != null) {
                Iterator it = ((UserCache) UserCache.INSTANCE.b(context)).getUserProfiles().iterator();
                while (it.hasNext()) {
                    this.mCallback.accept(parseComponentOrNull2.getPackageName(), (UserHandle) it.next());
                }
            }
        }
    }

    public IconProvider(Context context) {
        this.mContext = context;
        this.mCalendar = parseComponentOrNull(context, R.string.calendar_component_name);
        this.mClock = parseComponentOrNull(context, R.string.clock_component_name);
    }

    public static /* synthetic */ void a() {
    }

    public static ComponentName parseComponentOrNull(Context context, int i) {
        String string = context.getString(i);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return ComponentName.unflattenFromString(string);
    }

    public static SafeCloseable registerIconChangeListener(final Context context, BiConsumer biConsumer, Handler handler) {
        ComponentName parseComponentOrNull = parseComponentOrNull(context, R.string.calendar_component_name);
        ComponentName parseComponentOrNull2 = parseComponentOrNull(context, R.string.clock_component_name);
        if (parseComponentOrNull == null && parseComponentOrNull2 == null) {
            return new SafeCloseable() { // from class: c.a.a.L0.k
                @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
                public final void close() {
                    IconProvider.a();
                }
            };
        }
        final DateTimeChangeReceiver dateTimeChangeReceiver = new DateTimeChangeReceiver(biConsumer);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.TIMEZONE_CHANGED");
        if (parseComponentOrNull != null) {
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.DATE_CHANGED");
        }
        context.registerReceiver(dateTimeChangeReceiver, intentFilter, null, handler);
        return new SafeCloseable() { // from class: c.a.a.L0.l
            @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
            public final void close() {
                context.unregisterReceiver(dateTimeChangeReceiver);
            }
        };
    }

    public Drawable getIcon(LauncherActivityInfo launcherActivityInfo, int i) {
        return getIcon(launcherActivityInfo.getApplicationInfo().packageName, launcherActivityInfo.getUser(), launcherActivityInfo, Integer.valueOf(i), m.f1458a);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0062 A[Catch: NameNotFoundException -> 0x008b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {NameNotFoundException -> 0x008b, blocks: (B:7:0x0016, B:12:0x0062, B:19:0x002d, B:22:0x004b), top: B:6:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable getIcon(java.lang.String r4, android.os.UserHandle r5, java.lang.Object r6, java.lang.Object r7, java.util.function.BiFunction r8) {
        /*
            r3 = this;
            android.content.ComponentName r0 = r3.mCalendar
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L67
            java.lang.String r0 = r0.getPackageName()
            boolean r0 = r0.equals(r4)
            if (r0 == 0) goto L67
            android.content.Context r4 = r3.mContext
            android.content.pm.PackageManager r4 = r4.getPackageManager()
            android.content.ComponentName r5 = r3.mCalendar     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            r0 = 8320(0x2080, float:1.1659E-41)
            android.content.pm.ActivityInfo r5 = r4.getActivityInfo(r5, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            android.os.Bundle r5 = r5.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            android.content.ComponentName r0 = r3.mCalendar     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.lang.String r0 = r0.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            android.content.res.Resources r4 = r4.getResourcesForApplication(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            if (r5 != 0) goto L2d
            goto L5f
        L2d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            r0.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            android.content.ComponentName r3 = r3.mCalendar     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.lang.String r3 = r3.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            r0.append(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.lang.String r3 = ".dynamic_icons"
            r0.append(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.lang.String r3 = r0.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            int r3 = r5.getInt(r3, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            if (r3 != 0) goto L4b
            goto L5f
        L4b:
            android.content.res.TypedArray r3 = r4.obtainTypedArray(r3)     // Catch: android.content.res.Resources.NotFoundException -> L5f android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.util.Calendar r5 = java.util.Calendar.getInstance()     // Catch: android.content.res.Resources.NotFoundException -> L5f android.content.pm.PackageManager.NameNotFoundException -> L8b
            r0 = 5
            int r5 = r5.get(r0)     // Catch: android.content.res.Resources.NotFoundException -> L5f android.content.pm.PackageManager.NameNotFoundException -> L8b
            int r5 = r5 + (-1)
            int r3 = r3.getResourceId(r5, r2)     // Catch: android.content.res.Resources.NotFoundException -> L5f android.content.pm.PackageManager.NameNotFoundException -> L8b
            goto L60
        L5f:
            r3 = r2
        L60:
            if (r3 == 0) goto L8b
            android.graphics.drawable.Drawable r1 = r4.getDrawableForDensity(r3, r2, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            goto L8b
        L67:
            android.content.ComponentName r0 = r3.mClock
            if (r0 == 0) goto L8b
            java.lang.String r0 = r0.getPackageName()
            boolean r4 = r0.equals(r4)
            if (r4 == 0) goto L8b
            android.os.UserHandle r4 = android.os.Process.myUserHandle()
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L8b
            android.content.Context r4 = r3.mContext
            android.content.ComponentName r3 = r3.mClock
            java.lang.String r3 = r3.getPackageName()
            com.android.launcher3.icons.ClockDrawableWrapper r1 = com.android.launcher3.icons.ClockDrawableWrapper.forPackage(r4, r3, r2)
        L8b:
            if (r1 != 0) goto L94
            java.lang.Object r3 = r8.apply(r6, r7)
            r1 = r3
            android.graphics.drawable.Drawable r1 = (android.graphics.drawable.Drawable) r1
        L94:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.IconProvider.getIcon(java.lang.String, android.os.UserHandle, java.lang.Object, java.lang.Object, java.util.function.BiFunction):android.graphics.drawable.Drawable");
    }
}
