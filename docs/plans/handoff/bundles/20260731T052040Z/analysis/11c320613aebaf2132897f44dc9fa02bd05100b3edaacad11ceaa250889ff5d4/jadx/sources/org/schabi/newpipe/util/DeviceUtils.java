package org.schabi.newpipe.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Insets;
import android.graphics.Point;
import android.os.BatteryManager;
import android.os.Build;
import android.util.TypedValue;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;
import org.schabi.newpipe.App;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DeviceUtils {
    public static final boolean BRAVIA_ATV2;
    public static final boolean BRAVIA_ATV3_4K;
    public static final boolean BRAVIA_VH1;
    public static final boolean BRAVIA_VH2;
    public static final boolean CVT_MT5886_EU_1G;
    public static final boolean HI3798MV200;
    public static final boolean HMB9213NW;
    public static final boolean PH7M_EU_5596;
    public static final boolean QM16XE_U;
    public static final boolean REALTEKATV;
    public static final boolean TX_50JXW834;
    public static final boolean SAMSUNG = Build.MANUFACTURER.equals("samsung");
    public static Boolean isTV = null;
    public static Boolean isFireTV = null;

    static {
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        HI3798MV200 = i == 24 && Build.DEVICE.equals("Hi3798MV200");
        CVT_MT5886_EU_1G = i == 24 && Build.DEVICE.equals("cvt_mt5886_eu_1g");
        REALTEKATV = i == 25 && Build.DEVICE.equals("RealtekATV");
        PH7M_EU_5596 = i >= 26 && Build.DEVICE.equals("PH7M_EU_5596");
        QM16XE_U = i == 23 && Build.DEVICE.equals("QM16XE_U");
        BRAVIA_VH1 = i == 29 && Build.DEVICE.equals("BRAVIA_VH1");
        if (i == 29 && Build.DEVICE.equals("BRAVIA_VH2")) {
            z = true;
        }
        BRAVIA_VH2 = z;
        String str = Build.DEVICE;
        BRAVIA_ATV2 = str.equals("BRAVIA_ATV2");
        BRAVIA_ATV3_4K = str.equals("BRAVIA_ATV3_4K");
        TX_50JXW834 = str.equals("TX_50JXW834");
        HMB9213NW = str.equals("HMB9213NW");
    }

    public static int dpToPx(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static int getWindowHeight(WindowManager windowManager) {
        int i;
        int i2;
        if (Build.VERSION.SDK_INT < 30) {
            Point point = new Point();
            windowManager.getDefaultDisplay().getSize(point);
            return point.y;
        }
        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout());
        int height = currentWindowMetrics.getBounds().height();
        i = insetsIgnoringVisibility.top;
        i2 = insetsIgnoringVisibility.bottom;
        return height - (i + i2);
    }

    public static boolean isFireTv() {
        Boolean bool = isFireTV;
        if (bool != null) {
            return bool.booleanValue();
        }
        App.Companion.getClass();
        boolean hasSystemFeature = App.Companion.getInstance().getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
        isFireTV = Boolean.valueOf(hasSystemFeature);
        return hasSystemFeature;
    }

    public static boolean isInMultiWindow(AppCompatActivity appCompatActivity) {
        return Build.VERSION.SDK_INT >= 24 && appCompatActivity.isInMultiWindowMode();
    }

    public static boolean isLandscape(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels < context.getResources().getDisplayMetrics().widthPixels;
    }

    public static boolean isTablet(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(context.getString(R.string.tablet_mode_key), "");
        if (string.equals(context.getString(R.string.tablet_mode_on_key))) {
            return true;
        }
        return !string.equals(context.getString(R.string.tablet_mode_off_key)) && (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static boolean isTv(Context context) {
        Boolean bool = isTV;
        if (bool != null) {
            return bool.booleanValue();
        }
        App.Companion.getClass();
        PackageManager packageManager = App.Companion.getInstance().getPackageManager();
        boolean z = true;
        boolean z2 = ((UiModeManager) context.getSystemService(UiModeManager.class)).getCurrentModeType() == 4 || isFireTv() || packageManager.hasSystemFeature("android.software.leanback");
        if (Build.VERSION.SDK_INT >= 24) {
            boolean z3 = ((BatteryManager) context.getSystemService(BatteryManager.class)).getIntProperty(4) == 0;
            if (!z2 && (!z3 || packageManager.hasSystemFeature("android.hardware.touchscreen") || !packageManager.hasSystemFeature("android.hardware.usb.host") || !packageManager.hasSystemFeature("android.hardware.ethernet"))) {
                z = false;
            }
            z2 = z;
        }
        isTV = Boolean.valueOf(z2);
        return z2;
    }
}
