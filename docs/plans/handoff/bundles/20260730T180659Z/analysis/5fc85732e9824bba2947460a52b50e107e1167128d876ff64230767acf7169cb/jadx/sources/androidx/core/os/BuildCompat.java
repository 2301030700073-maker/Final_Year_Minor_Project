package androidx.core.os;

import android.os.Build;

/* loaded from: classes.dex */
public class BuildCompat {
    @Deprecated
    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30 || Build.VERSION.CODENAME.equals("R");
    }
}
