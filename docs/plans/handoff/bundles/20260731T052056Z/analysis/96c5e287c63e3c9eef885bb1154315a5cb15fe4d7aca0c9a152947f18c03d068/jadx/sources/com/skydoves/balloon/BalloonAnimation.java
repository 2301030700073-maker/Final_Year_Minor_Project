package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonAnimation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BalloonAnimation[] $VALUES;
    public static final BalloonAnimation CIRCULAR;
    public static final BalloonAnimation ELASTIC;
    public static final BalloonAnimation FADE;
    public static final BalloonAnimation NONE;
    public static final BalloonAnimation OVERSHOOT;

    static {
        BalloonAnimation balloonAnimation = new BalloonAnimation("NONE", 0);
        NONE = balloonAnimation;
        BalloonAnimation balloonAnimation2 = new BalloonAnimation("ELASTIC", 1);
        ELASTIC = balloonAnimation2;
        BalloonAnimation balloonAnimation3 = new BalloonAnimation("FADE", 2);
        FADE = balloonAnimation3;
        BalloonAnimation balloonAnimation4 = new BalloonAnimation("CIRCULAR", 3);
        CIRCULAR = balloonAnimation4;
        BalloonAnimation balloonAnimation5 = new BalloonAnimation("OVERSHOOT", 4);
        OVERSHOOT = balloonAnimation5;
        BalloonAnimation[] balloonAnimationArr = {balloonAnimation, balloonAnimation2, balloonAnimation3, balloonAnimation4, balloonAnimation5};
        $VALUES = balloonAnimationArr;
        $ENTRIES = new EnumEntriesList(balloonAnimationArr);
    }

    public static BalloonAnimation valueOf(String str) {
        return (BalloonAnimation) Enum.valueOf(BalloonAnimation.class, str);
    }

    public static BalloonAnimation[] values() {
        return (BalloonAnimation[]) $VALUES.clone();
    }
}
