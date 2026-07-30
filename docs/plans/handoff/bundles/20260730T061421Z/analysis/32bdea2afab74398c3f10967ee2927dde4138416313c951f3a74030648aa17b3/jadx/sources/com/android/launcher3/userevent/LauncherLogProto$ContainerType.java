package com.android.launcher3.userevent;

import c.b.b.M;
import c.b.b.N;

/* loaded from: classes.dex */
public enum LauncherLogProto$ContainerType implements M {
    DEFAULT_CONTAINERTYPE(0),
    WORKSPACE(1),
    HOTSEAT(2),
    FOLDER(3),
    ALLAPPS(4),
    WIDGETS(5),
    OVERVIEW(6),
    PREDICTION(7),
    SEARCHRESULT(8),
    DEEPSHORTCUTS(9),
    PINITEM(10),
    NAVBAR(11),
    TASKSWITCHER(12),
    APP(13),
    TIP(14),
    OTHER_LAUNCHER_APP(15);

    public final int value;

    public final class ContainerTypeVerifier implements N {
        public static final N INSTANCE = new ContainerTypeVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherLogProto$ContainerType.forNumber(i) != null;
        }
    }

    LauncherLogProto$ContainerType(int i) {
        this.value = i;
    }

    public static LauncherLogProto$ContainerType forNumber(int i) {
        switch (i) {
            case 0:
                return DEFAULT_CONTAINERTYPE;
            case 1:
                return WORKSPACE;
            case 2:
                return HOTSEAT;
            case 3:
                return FOLDER;
            case 4:
                return ALLAPPS;
            case 5:
                return WIDGETS;
            case 6:
                return OVERVIEW;
            case 7:
                return PREDICTION;
            case 8:
                return SEARCHRESULT;
            case 9:
                return DEEPSHORTCUTS;
            case 10:
                return PINITEM;
            case 11:
                return NAVBAR;
            case 12:
                return TASKSWITCHER;
            case 13:
                return APP;
            case 14:
                return TIP;
            case 15:
                return OTHER_LAUNCHER_APP;
            default:
                return null;
        }
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
