package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonCenterAlign {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BalloonCenterAlign[] $VALUES;
    public static final BalloonCenterAlign BOTTOM;
    public static final BalloonCenterAlign END;
    public static final BalloonCenterAlign START;
    public static final BalloonCenterAlign TOP;

    static {
        BalloonCenterAlign balloonCenterAlign = new BalloonCenterAlign("START", 0);
        START = balloonCenterAlign;
        BalloonCenterAlign balloonCenterAlign2 = new BalloonCenterAlign("END", 1);
        END = balloonCenterAlign2;
        BalloonCenterAlign balloonCenterAlign3 = new BalloonCenterAlign("TOP", 2);
        TOP = balloonCenterAlign3;
        BalloonCenterAlign balloonCenterAlign4 = new BalloonCenterAlign("BOTTOM", 3);
        BOTTOM = balloonCenterAlign4;
        BalloonCenterAlign[] balloonCenterAlignArr = {balloonCenterAlign, balloonCenterAlign2, balloonCenterAlign3, balloonCenterAlign4};
        $VALUES = balloonCenterAlignArr;
        $ENTRIES = new EnumEntriesList(balloonCenterAlignArr);
    }

    public static BalloonCenterAlign valueOf(String str) {
        return (BalloonCenterAlign) Enum.valueOf(BalloonCenterAlign.class, str);
    }

    public static BalloonCenterAlign[] values() {
        return (BalloonCenterAlign[]) $VALUES.clone();
    }
}
