package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* compiled from: SwitchTokens.kt */
/* loaded from: classes.dex */
public final class SwitchTokens {
    private static final ColorSchemeKeyTokens DisabledSelectedIconColor;
    private static final float DisabledSelectedIconOpacity;
    private static final ColorSchemeKeyTokens DisabledSelectedTrackColor;
    private static final float DisabledTrackOpacity;
    private static final ColorSchemeKeyTokens DisabledUnselectedHandleColor;
    private static final float DisabledUnselectedHandleOpacity;
    private static final ColorSchemeKeyTokens DisabledUnselectedIconColor;
    private static final float DisabledUnselectedIconOpacity;
    private static final ColorSchemeKeyTokens DisabledUnselectedTrackColor;
    private static final ColorSchemeKeyTokens DisabledUnselectedTrackOutlineColor;
    private static final ColorSchemeKeyTokens FocusIndicatorColor;
    private static final ShapeKeyTokens HandleShape;
    private static final float IconHandleHeight;
    private static final float IconHandleWidth;
    private static final float PressedHandleHeight;
    private static final float PressedHandleWidth;
    private static final ColorSchemeKeyTokens SelectedFocusHandleColor;
    private static final ColorSchemeKeyTokens SelectedFocusIconColor;
    private static final ColorSchemeKeyTokens SelectedFocusTrackColor;
    private static final ColorSchemeKeyTokens SelectedHandleColor;
    private static final float SelectedHandleHeight;
    private static final float SelectedHandleWidth;
    private static final ColorSchemeKeyTokens SelectedHoverHandleColor;
    private static final ColorSchemeKeyTokens SelectedHoverIconColor;
    private static final ColorSchemeKeyTokens SelectedHoverTrackColor;
    private static final ColorSchemeKeyTokens SelectedIconColor;
    private static final float SelectedIconSize;
    private static final ColorSchemeKeyTokens SelectedPressedHandleColor;
    private static final ColorSchemeKeyTokens SelectedPressedIconColor;
    private static final ColorSchemeKeyTokens SelectedPressedTrackColor;
    private static final ColorSchemeKeyTokens SelectedTrackColor;
    private static final ShapeKeyTokens StateLayerShape;
    private static final float StateLayerSize;
    private static final float TrackHeight;
    private static final float TrackOutlineWidth;
    private static final ShapeKeyTokens TrackShape;
    private static final float TrackWidth;
    private static final ColorSchemeKeyTokens UnselectedFocusHandleColor;
    private static final ColorSchemeKeyTokens UnselectedFocusIconColor;
    private static final ColorSchemeKeyTokens UnselectedFocusTrackColor;
    private static final ColorSchemeKeyTokens UnselectedFocusTrackOutlineColor;
    private static final ColorSchemeKeyTokens UnselectedHandleColor;
    private static final float UnselectedHandleHeight;
    private static final float UnselectedHandleWidth;
    private static final ColorSchemeKeyTokens UnselectedHoverHandleColor;
    private static final ColorSchemeKeyTokens UnselectedHoverIconColor;
    private static final ColorSchemeKeyTokens UnselectedHoverTrackColor;
    private static final ColorSchemeKeyTokens UnselectedHoverTrackOutlineColor;
    private static final ColorSchemeKeyTokens UnselectedIconColor;
    private static final float UnselectedIconSize;
    private static final ColorSchemeKeyTokens UnselectedPressedHandleColor;
    private static final ColorSchemeKeyTokens UnselectedPressedIconColor;
    private static final ColorSchemeKeyTokens UnselectedPressedTrackColor;
    private static final ColorSchemeKeyTokens UnselectedPressedTrackOutlineColor;
    private static final ColorSchemeKeyTokens UnselectedTrackColor;
    private static final ColorSchemeKeyTokens UnselectedTrackOutlineColor;
    public static final SwitchTokens INSTANCE = new SwitchTokens();
    private static final ColorSchemeKeyTokens DisabledSelectedHandleColor = ColorSchemeKeyTokens.Surface;
    private static final float DisabledSelectedHandleOpacity = 1.0f;

    private SwitchTokens() {
    }

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurface;
        DisabledSelectedIconColor = colorSchemeKeyTokens;
        DisabledSelectedIconOpacity = 0.38f;
        DisabledSelectedTrackColor = colorSchemeKeyTokens;
        DisabledTrackOpacity = 0.12f;
        DisabledUnselectedHandleColor = colorSchemeKeyTokens;
        DisabledUnselectedHandleOpacity = 0.38f;
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ColorSchemeKeyTokens.SurfaceContainerHighest;
        DisabledUnselectedIconColor = colorSchemeKeyTokens2;
        DisabledUnselectedIconOpacity = 0.38f;
        DisabledUnselectedTrackColor = colorSchemeKeyTokens2;
        DisabledUnselectedTrackOutlineColor = colorSchemeKeyTokens;
        FocusIndicatorColor = ColorSchemeKeyTokens.Secondary;
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        HandleShape = shapeKeyTokens;
        float f = (float) 28.0d;
        PressedHandleHeight = Dp.m2424constructorimpl(f);
        PressedHandleWidth = Dp.m2424constructorimpl(f);
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = ColorSchemeKeyTokens.PrimaryContainer;
        SelectedFocusHandleColor = colorSchemeKeyTokens3;
        ColorSchemeKeyTokens colorSchemeKeyTokens4 = ColorSchemeKeyTokens.OnPrimaryContainer;
        SelectedFocusIconColor = colorSchemeKeyTokens4;
        ColorSchemeKeyTokens colorSchemeKeyTokens5 = ColorSchemeKeyTokens.Primary;
        SelectedFocusTrackColor = colorSchemeKeyTokens5;
        SelectedHandleColor = ColorSchemeKeyTokens.OnPrimary;
        float f2 = (float) 24.0d;
        SelectedHandleHeight = Dp.m2424constructorimpl(f2);
        SelectedHandleWidth = Dp.m2424constructorimpl(f2);
        SelectedHoverHandleColor = colorSchemeKeyTokens3;
        SelectedHoverIconColor = colorSchemeKeyTokens4;
        SelectedHoverTrackColor = colorSchemeKeyTokens5;
        SelectedIconColor = colorSchemeKeyTokens4;
        float f3 = (float) 16.0d;
        SelectedIconSize = Dp.m2424constructorimpl(f3);
        SelectedPressedHandleColor = colorSchemeKeyTokens3;
        SelectedPressedIconColor = colorSchemeKeyTokens4;
        SelectedPressedTrackColor = colorSchemeKeyTokens5;
        SelectedTrackColor = colorSchemeKeyTokens5;
        StateLayerShape = shapeKeyTokens;
        StateLayerSize = Dp.m2424constructorimpl((float) 40.0d);
        TrackHeight = Dp.m2424constructorimpl((float) 32.0d);
        TrackOutlineWidth = Dp.m2424constructorimpl((float) 2.0d);
        TrackShape = shapeKeyTokens;
        TrackWidth = Dp.m2424constructorimpl((float) 52.0d);
        ColorSchemeKeyTokens colorSchemeKeyTokens6 = ColorSchemeKeyTokens.OnSurfaceVariant;
        UnselectedFocusHandleColor = colorSchemeKeyTokens6;
        UnselectedFocusIconColor = colorSchemeKeyTokens2;
        UnselectedFocusTrackColor = colorSchemeKeyTokens2;
        ColorSchemeKeyTokens colorSchemeKeyTokens7 = ColorSchemeKeyTokens.Outline;
        UnselectedFocusTrackOutlineColor = colorSchemeKeyTokens7;
        UnselectedHandleColor = colorSchemeKeyTokens7;
        UnselectedHandleHeight = Dp.m2424constructorimpl(f3);
        UnselectedHandleWidth = Dp.m2424constructorimpl(f3);
        UnselectedHoverHandleColor = colorSchemeKeyTokens6;
        UnselectedHoverIconColor = colorSchemeKeyTokens2;
        UnselectedHoverTrackColor = colorSchemeKeyTokens2;
        UnselectedHoverTrackOutlineColor = colorSchemeKeyTokens7;
        UnselectedIconColor = colorSchemeKeyTokens2;
        UnselectedIconSize = Dp.m2424constructorimpl(f3);
        UnselectedPressedHandleColor = colorSchemeKeyTokens6;
        UnselectedPressedIconColor = colorSchemeKeyTokens2;
        UnselectedPressedTrackColor = colorSchemeKeyTokens2;
        UnselectedPressedTrackOutlineColor = colorSchemeKeyTokens7;
        UnselectedTrackColor = colorSchemeKeyTokens2;
        UnselectedTrackOutlineColor = colorSchemeKeyTokens7;
        IconHandleHeight = Dp.m2424constructorimpl(f2);
        IconHandleWidth = Dp.m2424constructorimpl(f2);
    }

    public final ColorSchemeKeyTokens getDisabledSelectedHandleColor() {
        return DisabledSelectedHandleColor;
    }

    public final float getDisabledSelectedHandleOpacity() {
        return DisabledSelectedHandleOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledSelectedIconColor() {
        return DisabledSelectedIconColor;
    }

    public final float getDisabledSelectedIconOpacity() {
        return DisabledSelectedIconOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledSelectedTrackColor() {
        return DisabledSelectedTrackColor;
    }

    public final float getDisabledTrackOpacity() {
        return DisabledTrackOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledUnselectedHandleColor() {
        return DisabledUnselectedHandleColor;
    }

    public final float getDisabledUnselectedHandleOpacity() {
        return DisabledUnselectedHandleOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledUnselectedIconColor() {
        return DisabledUnselectedIconColor;
    }

    public final float getDisabledUnselectedIconOpacity() {
        return DisabledUnselectedIconOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledUnselectedTrackColor() {
        return DisabledUnselectedTrackColor;
    }

    public final ColorSchemeKeyTokens getDisabledUnselectedTrackOutlineColor() {
        return DisabledUnselectedTrackOutlineColor;
    }

    public final ShapeKeyTokens getHandleShape() {
        return HandleShape;
    }

    /* renamed from: getPressedHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m960getPressedHandleWidthD9Ej5fM() {
        return PressedHandleWidth;
    }

    public final ColorSchemeKeyTokens getSelectedHandleColor() {
        return SelectedHandleColor;
    }

    /* renamed from: getSelectedHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m961getSelectedHandleWidthD9Ej5fM() {
        return SelectedHandleWidth;
    }

    public final ColorSchemeKeyTokens getSelectedIconColor() {
        return SelectedIconColor;
    }

    public final ColorSchemeKeyTokens getSelectedTrackColor() {
        return SelectedTrackColor;
    }

    /* renamed from: getStateLayerSize-D9Ej5fM, reason: not valid java name */
    public final float m962getStateLayerSizeD9Ej5fM() {
        return StateLayerSize;
    }

    /* renamed from: getTrackHeight-D9Ej5fM, reason: not valid java name */
    public final float m963getTrackHeightD9Ej5fM() {
        return TrackHeight;
    }

    /* renamed from: getTrackOutlineWidth-D9Ej5fM, reason: not valid java name */
    public final float m964getTrackOutlineWidthD9Ej5fM() {
        return TrackOutlineWidth;
    }

    public final ShapeKeyTokens getTrackShape() {
        return TrackShape;
    }

    /* renamed from: getTrackWidth-D9Ej5fM, reason: not valid java name */
    public final float m965getTrackWidthD9Ej5fM() {
        return TrackWidth;
    }

    public final ColorSchemeKeyTokens getUnselectedFocusTrackOutlineColor() {
        return UnselectedFocusTrackOutlineColor;
    }

    public final ColorSchemeKeyTokens getUnselectedHandleColor() {
        return UnselectedHandleColor;
    }

    /* renamed from: getUnselectedHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m966getUnselectedHandleWidthD9Ej5fM() {
        return UnselectedHandleWidth;
    }

    public final ColorSchemeKeyTokens getUnselectedIconColor() {
        return UnselectedIconColor;
    }

    public final ColorSchemeKeyTokens getUnselectedTrackColor() {
        return UnselectedTrackColor;
    }
}
