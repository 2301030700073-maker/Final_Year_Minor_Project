package org.schabi.newpipe.ktx;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimationType {
    public static final /* synthetic */ AnimationType[] $VALUES;
    public static final AnimationType ALPHA;
    public static final AnimationType LIGHT_SCALE_AND_ALPHA;
    public static final AnimationType LIGHT_SLIDE_AND_ALPHA;
    public static final AnimationType SCALE_AND_ALPHA;
    public static final AnimationType SLIDE_AND_ALPHA;

    static {
        AnimationType animationType = new AnimationType("ALPHA", 0);
        ALPHA = animationType;
        AnimationType animationType2 = new AnimationType("SCALE_AND_ALPHA", 1);
        SCALE_AND_ALPHA = animationType2;
        AnimationType animationType3 = new AnimationType("LIGHT_SCALE_AND_ALPHA", 2);
        LIGHT_SCALE_AND_ALPHA = animationType3;
        AnimationType animationType4 = new AnimationType("SLIDE_AND_ALPHA", 3);
        SLIDE_AND_ALPHA = animationType4;
        AnimationType animationType5 = new AnimationType("LIGHT_SLIDE_AND_ALPHA", 4);
        LIGHT_SLIDE_AND_ALPHA = animationType5;
        $VALUES = new AnimationType[]{animationType, animationType2, animationType3, animationType4, animationType5};
    }

    public static AnimationType valueOf(String str) {
        return (AnimationType) Enum.valueOf(AnimationType.class, str);
    }

    public static AnimationType[] values() {
        return (AnimationType[]) $VALUES.clone();
    }
}
