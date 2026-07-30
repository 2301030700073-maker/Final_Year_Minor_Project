package com.android.systemui.plugins;

import android.view.MotionEvent;
import com.android.systemui.plugins.annotations.ProvidesInterface;

@ProvidesInterface(action = OverscrollPlugin.ACTION, version = 4)
/* loaded from: classes.dex */
public interface OverscrollPlugin extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_LAUNCHER_OVERSCROLL";
    public static final String DEVICE_STATE_APP = "App";
    public static final String DEVICE_STATE_LAUNCHER = "Launcher";
    public static final String DEVICE_STATE_LOCKED = "Locked";
    public static final String DEVICE_STATE_UNKNOWN = "Unknown";
    public static final int VERSION = 4;

    boolean allowsUnderlyingActivityOverscroll();

    boolean blockOtherGestures();

    boolean isActive();

    void onTouchEvent(MotionEvent motionEvent, int i, int i2, int i3, int i4, int i5, String str, String str2);
}
