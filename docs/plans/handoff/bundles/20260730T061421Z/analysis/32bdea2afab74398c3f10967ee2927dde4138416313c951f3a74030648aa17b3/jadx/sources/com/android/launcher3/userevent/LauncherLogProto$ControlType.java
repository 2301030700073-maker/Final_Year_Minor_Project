package com.android.launcher3.userevent;

import c.b.b.M;
import c.b.b.N;
import com.android.systemui.shared.recents.ISystemUiProxy;

/* loaded from: classes.dex */
public enum LauncherLogProto$ControlType implements M {
    DEFAULT_CONTROLTYPE(0),
    ALL_APPS_BUTTON(1),
    WIDGETS_BUTTON(2),
    WALLPAPER_BUTTON(3),
    SETTINGS_BUTTON(4),
    REMOVE_TARGET(5),
    UNINSTALL_TARGET(6),
    APPINFO_TARGET(7),
    RESIZE_HANDLE(8),
    VERTICAL_SCROLL(9),
    HOME_INTENT(10),
    BACK_BUTTON(11),
    QUICK_SCRUB_BUTTON(12),
    CLEAR_ALL_BUTTON(13),
    CANCEL_TARGET(14),
    TASK_PREVIEW(15),
    SPLIT_SCREEN_TARGET(16),
    REMOTE_ACTION_SHORTCUT(17),
    APP_USAGE_SETTINGS(18),
    BACK_GESTURE(19),
    UNDO(20),
    DISMISS_PREDICTION(21),
    HYBRID_HOTSEAT_ACCEPTED(22),
    HYBRID_HOTSEAT_CANCELED(23),
    OVERVIEW_ACTIONS_SHARE_BUTTON(24),
    OVERVIEW_ACTIONS_SCREENSHOT_BUTTON(25),
    OVERVIEW_ACTIONS_SELECT_BUTTON(26),
    SELECT_MODE_CLOSE_BUTTON(27),
    SELECT_MODE_ITEM(28);

    public final int value;

    public final class ControlTypeVerifier implements N {
        public static final N INSTANCE = new ControlTypeVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherLogProto$ControlType.forNumber(i) != null;
        }
    }

    LauncherLogProto$ControlType(int i) {
        this.value = i;
    }

    public static LauncherLogProto$ControlType forNumber(int i) {
        switch (i) {
            case 0:
                return DEFAULT_CONTROLTYPE;
            case 1:
                return ALL_APPS_BUTTON;
            case 2:
                return WIDGETS_BUTTON;
            case 3:
                return WALLPAPER_BUTTON;
            case 4:
                return SETTINGS_BUTTON;
            case 5:
                return REMOVE_TARGET;
            case 6:
                return UNINSTALL_TARGET;
            case 7:
                return APPINFO_TARGET;
            case 8:
                return RESIZE_HANDLE;
            case 9:
                return VERTICAL_SCROLL;
            case 10:
                return HOME_INTENT;
            case 11:
                return BACK_BUTTON;
            case 12:
                return QUICK_SCRUB_BUTTON;
            case 13:
                return CLEAR_ALL_BUTTON;
            case 14:
                return CANCEL_TARGET;
            case 15:
                return TASK_PREVIEW;
            case 16:
                return SPLIT_SCREEN_TARGET;
            case 17:
                return REMOTE_ACTION_SHORTCUT;
            case 18:
                return APP_USAGE_SETTINGS;
            case 19:
                return BACK_GESTURE;
            case 20:
                return UNDO;
            case 21:
                return DISMISS_PREDICTION;
            case 22:
                return HYBRID_HOTSEAT_ACCEPTED;
            case 23:
                return HYBRID_HOTSEAT_CANCELED;
            case 24:
                return OVERVIEW_ACTIONS_SHARE_BUTTON;
            case 25:
                return OVERVIEW_ACTIONS_SCREENSHOT_BUTTON;
            case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                return OVERVIEW_ACTIONS_SELECT_BUTTON;
            case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                return SELECT_MODE_CLOSE_BUTTON;
            case 28:
                return SELECT_MODE_ITEM;
            default:
                return null;
        }
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
