package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonHighlightAnimation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BalloonHighlightAnimation[] $VALUES;
    public static final BalloonHighlightAnimation BREATH;
    public static final BalloonHighlightAnimation HEARTBEAT;
    public static final BalloonHighlightAnimation NONE;
    public static final BalloonHighlightAnimation ROTATE;
    public static final BalloonHighlightAnimation SHAKE;

    static {
        BalloonHighlightAnimation balloonHighlightAnimation = new BalloonHighlightAnimation("NONE", 0);
        NONE = balloonHighlightAnimation;
        BalloonHighlightAnimation balloonHighlightAnimation2 = new BalloonHighlightAnimation("HEARTBEAT", 1);
        HEARTBEAT = balloonHighlightAnimation2;
        BalloonHighlightAnimation balloonHighlightAnimation3 = new BalloonHighlightAnimation("SHAKE", 2);
        SHAKE = balloonHighlightAnimation3;
        BalloonHighlightAnimation balloonHighlightAnimation4 = new BalloonHighlightAnimation("BREATH", 3);
        BREATH = balloonHighlightAnimation4;
        BalloonHighlightAnimation balloonHighlightAnimation5 = new BalloonHighlightAnimation("ROTATE", 4);
        ROTATE = balloonHighlightAnimation5;
        BalloonHighlightAnimation[] balloonHighlightAnimationArr = {balloonHighlightAnimation, balloonHighlightAnimation2, balloonHighlightAnimation3, balloonHighlightAnimation4, balloonHighlightAnimation5};
        $VALUES = balloonHighlightAnimationArr;
        $ENTRIES = new EnumEntriesList(balloonHighlightAnimationArr);
    }

    public static BalloonHighlightAnimation valueOf(String str) {
        return (BalloonHighlightAnimation) Enum.valueOf(BalloonHighlightAnimation.class, str);
    }

    public static BalloonHighlightAnimation[] values() {
        return (BalloonHighlightAnimation[]) $VALUES.clone();
    }
}
