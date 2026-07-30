package com.android.systemui.plugins;

import com.android.systemui.plugins.annotations.ProvidesInterface;

@ProvidesInterface(action = UserEventPlugin.ACTION, version = 1)
/* loaded from: classes.dex */
public interface UserEventPlugin extends Plugin {
    public static final String ACTION = "com.android.launcher3.action.PLUGIN_USER_EVENT_LOG";
    public static final int VERSION = 1;

    void onUserEvent(Object obj);
}
