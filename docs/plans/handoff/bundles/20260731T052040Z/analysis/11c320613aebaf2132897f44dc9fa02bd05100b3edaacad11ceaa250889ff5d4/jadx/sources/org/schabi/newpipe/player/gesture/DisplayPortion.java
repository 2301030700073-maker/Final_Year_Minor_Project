package org.schabi.newpipe.player.gesture;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DisplayPortion {
    public static final /* synthetic */ DisplayPortion[] $VALUES;
    public static final DisplayPortion LEFT;
    public static final DisplayPortion LEFT_HALF;
    public static final DisplayPortion MIDDLE;
    public static final DisplayPortion RIGHT;
    public static final DisplayPortion RIGHT_HALF;

    static {
        DisplayPortion displayPortion = new DisplayPortion("LEFT", 0);
        LEFT = displayPortion;
        DisplayPortion displayPortion2 = new DisplayPortion("MIDDLE", 1);
        MIDDLE = displayPortion2;
        DisplayPortion displayPortion3 = new DisplayPortion("RIGHT", 2);
        RIGHT = displayPortion3;
        DisplayPortion displayPortion4 = new DisplayPortion("LEFT_HALF", 3);
        LEFT_HALF = displayPortion4;
        DisplayPortion displayPortion5 = new DisplayPortion("RIGHT_HALF", 4);
        RIGHT_HALF = displayPortion5;
        $VALUES = new DisplayPortion[]{displayPortion, displayPortion2, displayPortion3, displayPortion4, displayPortion5};
    }

    public static DisplayPortion valueOf(String str) {
        return (DisplayPortion) Enum.valueOf(DisplayPortion.class, str);
    }

    public static DisplayPortion[] values() {
        return (DisplayPortion[]) $VALUES.clone();
    }
}
