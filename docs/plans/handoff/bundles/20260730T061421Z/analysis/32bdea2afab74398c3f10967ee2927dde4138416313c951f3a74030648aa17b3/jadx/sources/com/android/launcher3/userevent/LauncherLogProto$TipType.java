package com.android.launcher3.userevent;

import c.b.b.M;
import c.b.b.N;

/* loaded from: classes.dex */
public enum LauncherLogProto$TipType implements M {
    DEFAULT_NONE(0),
    BOUNCE(1),
    SWIPE_UP_TEXT(2),
    QUICK_SCRUB_TEXT(3),
    PREDICTION_TEXT(4),
    DWB_TOAST(5),
    HYBRID_HOTSEAT(6);

    public final int value;

    public final class TipTypeVerifier implements N {
        public static final N INSTANCE = new TipTypeVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherLogProto$TipType.forNumber(i) != null;
        }
    }

    LauncherLogProto$TipType(int i) {
        this.value = i;
    }

    public static LauncherLogProto$TipType forNumber(int i) {
        switch (i) {
            case 0:
                return DEFAULT_NONE;
            case 1:
                return BOUNCE;
            case 2:
                return SWIPE_UP_TEXT;
            case 3:
                return QUICK_SCRUB_TEXT;
            case 4:
                return PREDICTION_TEXT;
            case 5:
                return DWB_TOAST;
            case 6:
                return HYBRID_HOTSEAT;
            default:
                return null;
        }
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
