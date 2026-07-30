package com.android.quickstep;

import android.annotation.TargetApi;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.systemui.shared.recents.ISystemUiProxy;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public interface InputConsumer {
    public static final String[] NAMES = {"TYPE_NO_OP", "TYPE_OVERVIEW", "TYPE_OTHER_ACTIVITY", "TYPE_ASSISTANT", "TYPE_DEVICE_LOCKED", "TYPE_ACCESSIBILITY", "TYPE_SCREEN_PINNED", "TYPE_OVERVIEW_WITHOUT_FOCUS", "TYPE_RESET_GESTURE", "TYPE_OVERSCROLL", "TYPE_SYSUI_OVERLAY"};
    public static final InputConsumer NO_OP = new InputConsumer() { // from class: c.a.b.p0
        @Override // com.android.quickstep.InputConsumer
        public final int getType() {
            return 1;
        }
    };
    public static final int TYPE_ACCESSIBILITY = 32;
    public static final int TYPE_ASSISTANT = 8;
    public static final int TYPE_DEVICE_LOCKED = 16;
    public static final int TYPE_NO_OP = 1;
    public static final int TYPE_OTHER_ACTIVITY = 4;
    public static final int TYPE_OVERSCROLL = 512;
    public static final int TYPE_OVERVIEW = 2;
    public static final int TYPE_OVERVIEW_WITHOUT_FOCUS = 128;
    public static final int TYPE_RESET_GESTURE = 256;
    public static final int TYPE_SCREEN_PINNED = 64;
    public static final int TYPE_SYSUI_OVERLAY = 1024;

    default boolean allowInterceptByParent() {
        return true;
    }

    default InputConsumer getActiveConsumerInHierarchy() {
        return this;
    }

    default String getName() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < NAMES.length; i++) {
            if ((getType() & (1 << i)) != 0) {
                if (sb.length() > 0) {
                    sb.append(":");
                }
                sb.append(NAMES[i]);
            }
        }
        return sb.toString();
    }

    int getType();

    default boolean isConsumerDetachedFromGesture() {
        return false;
    }

    default void notifyOrientationSetup() {
    }

    default void onConsumerAboutToBeSwitched() {
    }

    default void onInputEvent(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            onMotionEvent((MotionEvent) inputEvent);
        } else {
            onKeyEvent((KeyEvent) inputEvent);
        }
    }

    default void onKeyEvent(KeyEvent keyEvent) {
    }

    default void onMotionEvent(MotionEvent motionEvent) {
    }
}
