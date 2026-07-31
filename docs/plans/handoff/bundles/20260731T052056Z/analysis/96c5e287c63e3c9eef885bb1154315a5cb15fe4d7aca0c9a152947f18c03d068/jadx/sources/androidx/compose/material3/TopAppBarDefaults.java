package androidx.compose.material3;

import androidx.compose.material3.tokens.AppBarSmallTokens;
import androidx.compose.material3.tokens.AppBarTokens;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TopAppBarDefaults {
    public static final float TopAppBarExpandedHeight;

    static {
        TypographyKeyTokens typographyKeyTokens = AppBarSmallTokens.TitleFont;
        TopAppBarExpandedHeight = 64.0f;
    }

    /* renamed from: topAppBarColors-5tl4gsc, reason: not valid java name */
    public static TopAppBarColors m311topAppBarColors5tl4gsc(long j, long j2, long j3, GapComposer gapComposer, int i) {
        long j4 = (i & 2) != 0 ? Color.Unspecified : j2;
        long j5 = Color.Unspecified;
        long j6 = (i & 8) != 0 ? j5 : j3;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        TopAppBarColors topAppBarColors = colorScheme.defaultTopAppBarColorsCached;
        if (topAppBarColors == null) {
            TopAppBarColors topAppBarColors2 = new TopAppBarColors(ColorSchemeKt.fromToken(colorScheme, AppBarTokens.ContainerColor), ColorSchemeKt.fromToken(colorScheme, AppBarTokens.OnScrollContainerColor), ColorSchemeKt.fromToken(colorScheme, AppBarTokens.LeadingIconColor), ColorSchemeKt.fromToken(colorScheme, AppBarTokens.TitleColor), ColorSchemeKt.fromToken(colorScheme, AppBarTokens.TrailingIconColor), ColorSchemeKt.fromToken(colorScheme, AppBarTokens.SubtitleColor));
            colorScheme.defaultTopAppBarColorsCached = topAppBarColors2;
            topAppBarColors = topAppBarColors2;
        }
        long j7 = j != 16 ? j : topAppBarColors.containerColor;
        if (j4 == 16) {
            j4 = topAppBarColors.scrolledContainerColor;
        }
        long j8 = j4;
        long j9 = j5 != 16 ? j5 : topAppBarColors.navigationIconContentColor;
        if (j6 == 16) {
            j6 = topAppBarColors.titleContentColor;
        }
        long j10 = j6;
        long j11 = j5 != 16 ? j5 : topAppBarColors.actionIconContentColor;
        if (j5 == 16) {
            j5 = topAppBarColors.subtitleContentColor;
        }
        return new TopAppBarColors(j7, j8, j9, j10, j11, j5);
    }
}
