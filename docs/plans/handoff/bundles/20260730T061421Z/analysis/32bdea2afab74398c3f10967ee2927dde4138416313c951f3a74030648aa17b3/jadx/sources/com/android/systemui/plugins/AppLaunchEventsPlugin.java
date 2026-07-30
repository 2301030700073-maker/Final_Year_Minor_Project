package com.android.systemui.plugins;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.systemui.plugins.annotations.ProvidesInterface;

@ProvidesInterface(action = AppLaunchEventsPlugin.ACTION, version = 1)
/* loaded from: classes.dex */
public interface AppLaunchEventsPlugin extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_APP_EVENTS";
    public static final int VERSION = 1;

    void onDismissApp(ComponentName componentName, UserHandle userHandle, String str);

    void onReturnedToHome();

    void onStartApp(ComponentName componentName, UserHandle userHandle, String str);

    void onStartShortcut(String str, String str2, UserHandle userHandle, String str3);
}
