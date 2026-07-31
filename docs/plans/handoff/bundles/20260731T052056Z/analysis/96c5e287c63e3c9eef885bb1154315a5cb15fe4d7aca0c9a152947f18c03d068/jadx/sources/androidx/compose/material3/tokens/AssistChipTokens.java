package androidx.compose.material3.tokens;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AssistChipTokens {
    public static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerSmall;
    public static final ColorSchemeKeyTokens DisabledIconColor;
    public static final float DisabledIconOpacity;
    public static final ColorSchemeKeyTokens DisabledLabelTextColor;
    public static final float DisabledLabelTextOpacity;
    public static final float DraggedContainerElevation;
    public static final ColorSchemeKeyTokens FlatDisabledOutlineColor;
    public static final float FlatDisabledOutlineOpacity;
    public static final ColorSchemeKeyTokens FlatOutlineColor;
    public static final float FlatOutlineWidth;
    public static final ColorSchemeKeyTokens IconColor;
    public static final ColorSchemeKeyTokens LabelTextColor;
    public static final TypographyKeyTokens LabelTextFont;

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurface;
        DisabledLabelTextColor = colorSchemeKeyTokens;
        DisabledLabelTextOpacity = 0.38f;
        DraggedContainerElevation = 8.0f;
        FlatDisabledOutlineColor = colorSchemeKeyTokens;
        FlatDisabledOutlineOpacity = 0.12f;
        FlatOutlineColor = ColorSchemeKeyTokens.OutlineVariant;
        FlatOutlineWidth = 1.0f;
        LabelTextColor = colorSchemeKeyTokens;
        LabelTextFont = TypographyKeyTokens.LabelLarge;
        DisabledIconColor = colorSchemeKeyTokens;
        DisabledIconOpacity = 0.38f;
        IconColor = ColorSchemeKeyTokens.Primary;
    }
}
