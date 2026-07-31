package androidx.compose.material3;

import androidx.compose.material3.tokens.FilterChipTokens;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FilterChipDefaults {
    public static final float Height;

    static {
        ShapeKeyTokens shapeKeyTokens = FilterChipTokens.ContainerShape;
        Height = 32.0f;
    }

    public static SelectableChipColors getDefaultFilterChipColors$material3(ColorScheme colorScheme) {
        long Color;
        long Color2;
        long Color3;
        long Color4;
        SelectableChipColors selectableChipColors = colorScheme.defaultFilterChipColorsCached;
        if (selectableChipColors != null) {
            return selectableChipColors;
        }
        long j = Color.Transparent;
        long fromToken = ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.UnselectedLabelTextColor);
        long fromToken2 = ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.UnselectedLeadingIconColor);
        long fromToken3 = ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.UnselectedTrailingIconColor);
        Color = ColorKt.Color(Color.m433getRedimpl(r11), Color.m432getGreenimpl(r11), Color.m430getBlueimpl(r11), FilterChipTokens.DisabledLabelTextOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.DisabledLabelTextColor)));
        Color2 = ColorKt.Color(Color.m433getRedimpl(r11), Color.m432getGreenimpl(r11), Color.m430getBlueimpl(r11), FilterChipTokens.DisabledLeadingIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.DisabledLeadingIconColor)));
        Color3 = ColorKt.Color(Color.m433getRedimpl(r11), Color.m432getGreenimpl(r11), Color.m430getBlueimpl(r11), FilterChipTokens.DisabledTrailingIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.DisabledTrailingIconColor)));
        long fromToken4 = ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.FlatSelectedContainerColor);
        Color4 = ColorKt.Color(Color.m433getRedimpl(r11), Color.m432getGreenimpl(r11), Color.m430getBlueimpl(r11), FilterChipTokens.FlatDisabledSelectedContainerOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.FlatDisabledSelectedContainerColor)));
        SelectableChipColors selectableChipColors2 = new SelectableChipColors(j, fromToken, fromToken2, fromToken3, j, Color, Color2, Color3, fromToken4, Color4, ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.SelectedLabelTextColor), ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.SelectedLeadingIconColor), ColorSchemeKt.fromToken(colorScheme, FilterChipTokens.SelectedTrailingIconColor));
        colorScheme.defaultFilterChipColorsCached = selectableChipColors2;
        return selectableChipColors2;
    }
}
