package org.wikipedia.util;

import android.appwidget.AppWidgetManager;
import android.os.Build;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeviceUtil {
    public static boolean isPinWidgetSupported() {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(Jsoup.getInstance());
        return appWidgetManager != null && appWidgetManager.isRequestPinAppWidgetSupported();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void updateStatusBarTheme(android.app.Activity r4, com.google.android.material.appbar.MaterialToolbar r5, boolean r6) {
        /*
            android.view.Window r0 = r4.getWindow()
            r0.getClass()
            android.view.View r1 = r0.getDecorView()
            androidx.paging.HintHandler r2 = new androidx.paging.HintHandler
            r2.<init>(r1)
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 35
            if (r1 < r3) goto L1c
            androidx.core.view.WindowInsetsControllerCompat$Impl35 r1 = new androidx.core.view.WindowInsetsControllerCompat$Impl35
            r1.<init>(r0, r2)
            goto L35
        L1c:
            r3 = 30
            if (r1 < r3) goto L26
            androidx.core.view.WindowInsetsControllerCompat$Impl30 r1 = new androidx.core.view.WindowInsetsControllerCompat$Impl30
            r1.<init>(r0, r2)
            goto L35
        L26:
            r3 = 26
            if (r1 < r3) goto L30
            androidx.core.view.WindowInsetsControllerCompat$Impl26 r1 = new androidx.core.view.WindowInsetsControllerCompat$Impl26
            r1.<init>(r0, r2)
            goto L35
        L30:
            androidx.core.view.WindowInsetsControllerCompat$Impl23 r1 = new androidx.core.view.WindowInsetsControllerCompat$Impl23
            r1.<init>(r0, r2)
        L35:
            r0 = 1
            if (r6 == 0) goto L49
            org.wikipedia.WikipediaApp r2 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r2 = org.jsoup.Jsoup.getInstance()
            org.wikipedia.theme.Theme r2 = r2.currentTheme
            boolean r2 = r2.isDark()
            if (r2 != 0) goto L47
            goto L49
        L47:
            r2 = 0
            goto L4a
        L49:
            r2 = r0
        L4a:
            r1.setAppearanceLightStatusBars(r2)
            if (r5 == 0) goto L74
            if (r6 == 0) goto L53
            r4 = -1
            goto L6b
        L53:
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r4 = r4.getTheme()
            r1 = 2130969882(0x7f04051a, float:1.7548458E38)
            boolean r4 = r4.resolveAttribute(r1, r6, r0)
            if (r4 == 0) goto L66
            goto L67
        L66:
            r6 = 0
        L67:
            if (r6 == 0) goto L6f
            int r4 = r6.data
        L6b:
            r5.setNavigationIconTint(r4)
            return
        L6f:
            java.lang.String r4 = "Attribute not found; ID=2130969882"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r4)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.DeviceUtil.updateStatusBarTheme(android.app.Activity, com.google.android.material.appbar.MaterialToolbar, boolean):void");
    }
}
