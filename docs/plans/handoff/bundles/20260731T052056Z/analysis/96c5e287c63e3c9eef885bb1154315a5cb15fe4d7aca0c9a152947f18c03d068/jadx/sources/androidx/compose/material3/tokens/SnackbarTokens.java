package androidx.compose.material3.tokens;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SnackbarTokens {
    public static final ColorSchemeKeyTokens ActionLabelTextColor = ColorSchemeKeyTokens.InversePrimary;
    public static final TypographyKeyTokens ActionLabelTextFont = TypographyKeyTokens.LabelLarge;
    public static final float ContainerElevation = 6.0f;
    public static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerExtraSmall;
    public static final ColorSchemeKeyTokens IconColor;
    public static final float SingleLineContainerHeight;
    public static final ColorSchemeKeyTokens SupportingTextColor;
    public static final TypographyKeyTokens SupportingTextFont;
    public static final float TwoLinesContainerHeight;

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.InverseOnSurface;
        IconColor = colorSchemeKeyTokens;
        SupportingTextColor = colorSchemeKeyTokens;
        SupportingTextFont = TypographyKeyTokens.BodyMedium;
        SingleLineContainerHeight = 48.0f;
        TwoLinesContainerHeight = 68.0f;
    }
}
