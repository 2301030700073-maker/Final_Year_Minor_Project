package com.android.launcher3.model;

import android.content.ComponentName;
import android.os.UserHandle;
import c.a.a.a1.r;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class AppLaunchTracker implements ResourceBasedOverride {
    public static final String CONTAINER_DEFAULT = Integer.toString(1);
    public static final String CONTAINER_ALL_APPS = Integer.toString(4);
    public static final String CONTAINER_PREDICTIONS = Integer.toString(7);
    public static final String CONTAINER_SEARCH = Integer.toString(8);
    public static final String CONTAINER_OVERVIEW = Integer.toString(6);
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new r(AppLaunchTracker.class, R.string.app_launch_tracker_class));

    public void onDismissApp(ComponentName componentName, UserHandle userHandle, String str) {
    }

    public void onReturnedToHome() {
    }

    public void onStartApp(ComponentName componentName, UserHandle userHandle, String str) {
    }

    public void onStartShortcut(String str, String str2, UserHandle userHandle, String str3) {
    }
}
