package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;

/* loaded from: classes.dex */
public final class GJ {

    /* renamed from: GJ$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static boolean m725do(Context context) {
            Object systemService;
            boolean isUserUnlocked;
            systemService = context.getSystemService((Class<Object>) UserManager.class);
            isUserUnlocked = ((UserManager) systemService).isUserUnlocked();
            return isUserUnlocked;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m724do(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cdo.m725do(context);
        }
        return true;
    }
}
