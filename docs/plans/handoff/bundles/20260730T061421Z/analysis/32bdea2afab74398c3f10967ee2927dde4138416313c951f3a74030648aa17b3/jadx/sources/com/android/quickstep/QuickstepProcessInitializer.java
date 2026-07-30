package com.android.quickstep;

import android.content.Context;
import android.os.UserManager;
import android.util.Log;
import com.android.launcher3.MainProcessInitializer;
import com.android.systemui.shared.system.ThreadedRendererCompat;

/* loaded from: classes.dex */
public class QuickstepProcessInitializer extends MainProcessInitializer {
    public static final String TAG = "QuickstepProcessInitializer";

    public QuickstepProcessInitializer(Context context) {
    }

    @Override // com.android.launcher3.MainProcessInitializer
    public void init(Context context) {
        if (((UserManager) context.getSystemService("user")).isManagedProfile()) {
            context.getPackageManager().setApplicationEnabledSetting(context.getPackageName(), 2, 0);
            Log.w(TAG, "Disabling com.google.android.apps.nexuslauncher, unable to run in a managed profile");
        } else {
            super.init(context);
            ThreadedRendererCompat.setContextPriority(ThreadedRendererCompat.EGL_CONTEXT_PRIORITY_HIGH_IMG);
        }
    }
}
