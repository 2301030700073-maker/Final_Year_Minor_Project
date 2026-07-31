package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonAlign {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BalloonAlign[] $VALUES;
    public static final BalloonAlign BOTTOM;
    public static final BalloonAlign END;
    public static final BalloonAlign START;
    public static final BalloonAlign TOP;

    static {
        BalloonAlign balloonAlign = new BalloonAlign("START", 0);
        START = balloonAlign;
        BalloonAlign balloonAlign2 = new BalloonAlign("END", 1);
        END = balloonAlign2;
        BalloonAlign balloonAlign3 = new BalloonAlign("TOP", 2);
        TOP = balloonAlign3;
        BalloonAlign balloonAlign4 = new BalloonAlign("BOTTOM", 3);
        BOTTOM = balloonAlign4;
        BalloonAlign[] balloonAlignArr = {balloonAlign, balloonAlign2, balloonAlign3, balloonAlign4};
        $VALUES = balloonAlignArr;
        $ENTRIES = new EnumEntriesList(balloonAlignArr);
    }

    public static BalloonAlign valueOf(String str) {
        return (BalloonAlign) Enum.valueOf(BalloonAlign.class, str);
    }

    public static BalloonAlign[] values() {
        return (BalloonAlign[]) $VALUES.clone();
    }
}
