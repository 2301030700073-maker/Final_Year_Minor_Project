package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ListItemDefaults {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.ListItemContainerColor;
    }

    /* renamed from: colors-J08w3-E, reason: not valid java name */
    public static ListItemColors m287colorsJ08w3E(long j, GapComposer gapComposer) {
        long j2;
        long Color;
        long Color2;
        long Color3;
        long j3 = Color.Unspecified;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        ListItemColors listItemColors = colorScheme.defaultListItemColorsCached;
        if (listItemColors == null) {
            long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemContainerColor);
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemLabelTextColor);
            long fromToken3 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemLeadingIconColor);
            long fromToken4 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemOverlineColor);
            long fromToken5 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemSupportingTextColor);
            long fromToken6 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemTrailingIconColor);
            j2 = j3;
            Color = ColorKt.Color(Color.m433getRedimpl(r0), Color.m432getGreenimpl(r0), Color.m430getBlueimpl(r0), ListTokens.ListItemDisabledLabelTextOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemDisabledLabelTextColor)));
            Color2 = ColorKt.Color(Color.m433getRedimpl(r0), Color.m432getGreenimpl(r0), Color.m430getBlueimpl(r0), ListTokens.ListItemDisabledLeadingIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemDisabledLeadingIconColor)));
            Color3 = ColorKt.Color(Color.m433getRedimpl(r0), Color.m432getGreenimpl(r0), Color.m430getBlueimpl(r0), ListTokens.ListItemDisabledTrailingIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemDisabledTrailingIconColor)));
            ListItemColors listItemColors2 = new ListItemColors(fromToken, fromToken2, fromToken3, fromToken4, fromToken5, fromToken6, Color, Color2, Color3);
            colorScheme.defaultListItemColorsCached = listItemColors2;
            listItemColors = listItemColors2;
        } else {
            j2 = j3;
        }
        return new ListItemColors(j != 16 ? j : listItemColors.containerColor, j2 != 16 ? j2 : listItemColors.headlineColor, j2 != 16 ? j2 : listItemColors.leadingIconColor, j2 != 16 ? j2 : listItemColors.overlineColor, j2 != 16 ? j2 : listItemColors.supportingTextColor, j2 != 16 ? j2 : listItemColors.trailingIconColor, j2 != 16 ? j2 : listItemColors.disabledHeadlineColor, j2 != 16 ? j2 : listItemColors.disabledLeadingIconColor, j2 != 16 ? j2 : listItemColors.disabledTrailingIconColor);
    }
}
