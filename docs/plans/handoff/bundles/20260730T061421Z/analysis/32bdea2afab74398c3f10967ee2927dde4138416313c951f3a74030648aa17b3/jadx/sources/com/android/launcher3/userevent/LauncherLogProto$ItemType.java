package com.android.launcher3.userevent;

import c.b.b.M;
import c.b.b.N;

/* loaded from: classes.dex */
public enum LauncherLogProto$ItemType implements M {
    DEFAULT_ITEMTYPE(0),
    APP_ICON(1),
    SHORTCUT(2),
    WIDGET(3),
    FOLDER_ICON(4),
    DEEPSHORTCUT(5),
    SEARCHBOX(6),
    EDITTEXT(7),
    NOTIFICATION(8),
    TASK(9),
    WEB_APP(10),
    TASK_ICON(11);

    public final int value;

    public final class ItemTypeVerifier implements N {
        public static final N INSTANCE = new ItemTypeVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherLogProto$ItemType.forNumber(i) != null;
        }
    }

    LauncherLogProto$ItemType(int i) {
        this.value = i;
    }

    public static LauncherLogProto$ItemType forNumber(int i) {
        switch (i) {
            case 0:
                return DEFAULT_ITEMTYPE;
            case 1:
                return APP_ICON;
            case 2:
                return SHORTCUT;
            case 3:
                return WIDGET;
            case 4:
                return FOLDER_ICON;
            case 5:
                return DEEPSHORTCUT;
            case 6:
                return SEARCHBOX;
            case 7:
                return EDITTEXT;
            case 8:
                return NOTIFICATION;
            case 9:
                return TASK;
            case 10:
                return WEB_APP;
            case 11:
                return TASK_ICON;
            default:
                return null;
        }
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
