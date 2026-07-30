package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* compiled from: FabPrimaryLargeTokens.kt */
/* loaded from: classes.dex */
public final class FabPrimaryLargeTokens {
    private static final float ContainerElevation;
    private static final float ContainerHeight;
    private static final ShapeKeyTokens ContainerShape;
    private static final float ContainerWidth;
    private static final float FocusContainerElevation;
    private static final ColorSchemeKeyTokens FocusIconColor;
    private static final float HoverContainerElevation;
    private static final ColorSchemeKeyTokens HoverIconColor;
    private static final ColorSchemeKeyTokens IconColor;
    private static final float IconSize;
    private static final float LoweredContainerElevation;
    private static final float LoweredFocusContainerElevation;
    private static final float LoweredHoverContainerElevation;
    private static final float LoweredPressedContainerElevation;
    private static final float PressedContainerElevation;
    private static final ColorSchemeKeyTokens PressedIconColor;
    public static final FabPrimaryLargeTokens INSTANCE = new FabPrimaryLargeTokens();
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.PrimaryContainer;

    private FabPrimaryLargeTokens() {
    }

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        ContainerElevation = elevationTokens.m879getLevel3D9Ej5fM();
        float f = (float) 96.0d;
        ContainerHeight = Dp.m2424constructorimpl(f);
        ContainerShape = ShapeKeyTokens.CornerExtraLarge;
        ContainerWidth = Dp.m2424constructorimpl(f);
        FocusContainerElevation = elevationTokens.m879getLevel3D9Ej5fM();
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnPrimaryContainer;
        FocusIconColor = colorSchemeKeyTokens;
        HoverContainerElevation = elevationTokens.m880getLevel4D9Ej5fM();
        HoverIconColor = colorSchemeKeyTokens;
        IconColor = colorSchemeKeyTokens;
        IconSize = Dp.m2424constructorimpl((float) 36.0d);
        LoweredContainerElevation = elevationTokens.m877getLevel1D9Ej5fM();
        LoweredFocusContainerElevation = elevationTokens.m877getLevel1D9Ej5fM();
        LoweredHoverContainerElevation = elevationTokens.m878getLevel2D9Ej5fM();
        LoweredPressedContainerElevation = elevationTokens.m877getLevel1D9Ej5fM();
        PressedContainerElevation = elevationTokens.m879getLevel3D9Ej5fM();
        PressedIconColor = colorSchemeKeyTokens;
    }

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m881getIconSizeD9Ej5fM() {
        return IconSize;
    }
}
