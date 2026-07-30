package com.android.systemui.shared.system;

import android.app.ActivityManager;
import android.os.SystemProperties;

/* loaded from: classes.dex */
public abstract class BlurUtils {
    public static boolean mBlurSupportedSysProp = SystemProperties.getBoolean("ro.surface_flinger.supports_background_blur", false);
    public static boolean mBlurDisabledSysProp = SystemProperties.getBoolean("persist.sys.sf.disable_blurs", false);

    public static boolean supportsBlursOnWindows() {
        return mBlurSupportedSysProp && !mBlurDisabledSysProp && ActivityManager.isHighEndGfx();
    }
}
