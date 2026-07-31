package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListItemDefaults {
    public static final PaddingValuesImpl ContentPadding = new PaddingValuesImpl(ListItemKt.InteractiveListStartPadding, ListItemKt.InteractiveListTopPadding, ListItemKt.InteractiveListEndPadding, ListItemKt.InteractiveListBottomPadding);

    public static ListItemColors colors(Composer composer) {
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        ColorScheme colorScheme = ((MaterialTheme$Values) ((GapComposer) composer).consume(MaterialThemeKt._localMaterialTheme)).colorScheme;
        ListItemColors listItemColors = colorScheme.defaultListItemColorsCached;
        if (listItemColors != null) {
            return listItemColors;
        }
        ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.ItemContainerColor;
        long fromToken = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
        long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemLabelTextColor);
        long fromToken3 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemLeadingIconColor);
        long fromToken4 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemTrailingIconColor);
        long fromToken5 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemOverlineColor);
        long fromToken6 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSupportingTextColor);
        long fromToken7 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSelectedContainerColor);
        long fromToken8 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSelectedLabelTextColor);
        long fromToken9 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSelectedLeadingIconColor);
        long fromToken10 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSelectedTrailingIconColor);
        long fromToken11 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSelectedOverlineColor);
        long fromToken12 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSelectedSupportingTextColor);
        long fromToken13 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
        Color = Brush.Color(Color.m249getRedimpl(r1), Color.m248getGreenimpl(r1), Color.m246getBlueimpl(r1), ListTokens.ItemDisabledLabelTextOpacity, Color.m247getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemDisabledLabelTextColor)));
        Color2 = Brush.Color(Color.m249getRedimpl(r3), Color.m248getGreenimpl(r3), Color.m246getBlueimpl(r3), ListTokens.ItemDisabledLeadingIconOpacity, Color.m247getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemDisabledLeadingIconColor)));
        Color3 = Brush.Color(Color.m249getRedimpl(r3), Color.m248getGreenimpl(r3), Color.m246getBlueimpl(r3), ListTokens.ItemDisabledTrailingIconOpacity, Color.m247getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemDisabledTrailingIconColor)));
        Color4 = Brush.Color(Color.m249getRedimpl(r3), Color.m248getGreenimpl(r3), Color.m246getBlueimpl(r3), ListTokens.ItemDisabledOverlineOpacity, Color.m247getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemDisabledOverlineColor)));
        Color5 = Brush.Color(Color.m249getRedimpl(r3), Color.m248getGreenimpl(r3), Color.m246getBlueimpl(r3), ListTokens.ItemDisabledSupportingTextOpacity, Color.m247getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemDisabledSupportingTextColor)));
        ListItemColors listItemColors2 = new ListItemColors(fromToken, fromToken2, fromToken3, fromToken4, fromToken5, fromToken6, fromToken13, Color, Color2, Color3, Color4, Color5, fromToken7, fromToken8, fromToken9, fromToken10, fromToken11, fromToken12, ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemContainerColor$1), ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemLabelTextColor$1), ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemLeadingIconColor$1), ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemTrailingIconColor$1), ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemOverlineColor$1), ColorSchemeKt.fromToken(colorScheme, ListTokens.ItemSupportingTextColor$1));
        colorScheme.defaultListItemColorsCached = listItemColors2;
        return listItemColors2;
    }
}
