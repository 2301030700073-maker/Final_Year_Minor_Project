package com.fsck.k9.ui.settings.export;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ButtonState {
    public static final /* synthetic */ ButtonState[] $VALUES;
    public static final ButtonState DISABLED;
    public static final ButtonState ENABLED;
    public static final ButtonState GONE;
    public static final ButtonState INVISIBLE;

    static {
        ButtonState buttonState = new ButtonState("DISABLED", 0);
        DISABLED = buttonState;
        ButtonState buttonState2 = new ButtonState("ENABLED", 1);
        ENABLED = buttonState2;
        ButtonState buttonState3 = new ButtonState("INVISIBLE", 2);
        INVISIBLE = buttonState3;
        ButtonState buttonState4 = new ButtonState("GONE", 3);
        GONE = buttonState4;
        $VALUES = new ButtonState[]{buttonState, buttonState2, buttonState3, buttonState4};
    }

    public static ButtonState valueOf(String str) {
        return (ButtonState) Enum.valueOf(ButtonState.class, str);
    }

    public static ButtonState[] values() {
        return (ButtonState[]) $VALUES.clone();
    }
}
