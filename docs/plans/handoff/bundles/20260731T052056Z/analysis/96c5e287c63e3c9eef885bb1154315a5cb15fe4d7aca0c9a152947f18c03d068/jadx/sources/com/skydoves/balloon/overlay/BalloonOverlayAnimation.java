package com.skydoves.balloon.overlay;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonOverlayAnimation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BalloonOverlayAnimation[] $VALUES;
    public static final BalloonOverlayAnimation FADE;
    public static final BalloonOverlayAnimation NONE;

    static {
        BalloonOverlayAnimation balloonOverlayAnimation = new BalloonOverlayAnimation("NONE", 0);
        NONE = balloonOverlayAnimation;
        BalloonOverlayAnimation balloonOverlayAnimation2 = new BalloonOverlayAnimation("FADE", 1);
        FADE = balloonOverlayAnimation2;
        BalloonOverlayAnimation[] balloonOverlayAnimationArr = {balloonOverlayAnimation, balloonOverlayAnimation2};
        $VALUES = balloonOverlayAnimationArr;
        $ENTRIES = new EnumEntriesList(balloonOverlayAnimationArr);
    }

    public static BalloonOverlayAnimation valueOf(String str) {
        return (BalloonOverlayAnimation) Enum.valueOf(BalloonOverlayAnimation.class, str);
    }

    public static BalloonOverlayAnimation[] values() {
        return (BalloonOverlayAnimation[]) $VALUES.clone();
    }
}
