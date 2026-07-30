package com.android.launcher3.logger;

import c.b.b.M;
import c.b.b.N;

/* loaded from: classes.dex */
public enum LauncherAtom$Attribute implements M {
    UNKNOWN(0),
    DEFAULT_LAYOUT(1),
    BACKUP_RESTORE(2),
    PINITEM(3),
    ALLAPPS_ATOZ(4),
    WIDGETS(5),
    ADD_TO_HOMESCREEN(6),
    ALLAPPS_PREDICTION(7),
    HOTSEAT_PREDICTION(8),
    SUGGESTED_LABEL(9),
    MANUAL_LABEL(10),
    UNLABELED(11),
    EMPTY_LABEL(12);

    public final int value;

    public final class AttributeVerifier implements N {
        public static final N INSTANCE = new AttributeVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherAtom$Attribute.forNumber(i) != null;
        }
    }

    LauncherAtom$Attribute(int i) {
        this.value = i;
    }

    public static LauncherAtom$Attribute forNumber(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return DEFAULT_LAYOUT;
            case 2:
                return BACKUP_RESTORE;
            case 3:
                return PINITEM;
            case 4:
                return ALLAPPS_ATOZ;
            case 5:
                return WIDGETS;
            case 6:
                return ADD_TO_HOMESCREEN;
            case 7:
                return ALLAPPS_PREDICTION;
            case 8:
                return HOTSEAT_PREDICTION;
            case 9:
                return SUGGESTED_LABEL;
            case 10:
                return MANUAL_LABEL;
            case 11:
                return UNLABELED;
            case 12:
                return EMPTY_LABEL;
            default:
                return null;
        }
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
