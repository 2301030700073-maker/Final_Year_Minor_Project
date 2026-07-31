package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.material3.tokens.ColorDarkTokens;
import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ColorSchemeKt {
    public static final StaticProvidableCompositionLocal LocalTonalElevationEnabled = new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(11));

    /* renamed from: contentColorFor-ek8zF_U, reason: not valid java name */
    public static final long m138contentColorForek8zF_U(long j, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(89373914);
        ColorScheme colorScheme = ((MaterialTheme$Values) gapComposer.consume(MaterialThemeKt._localMaterialTheme)).colorScheme;
        long j2 = colorScheme.primary;
        long j3 = colorScheme.onTertiaryFixed;
        long j4 = colorScheme.onSecondaryFixed;
        long j5 = colorScheme.onPrimaryFixed;
        long j6 = colorScheme.onSurface;
        if (Color.m244equalsimpl0(j, j2)) {
            j3 = colorScheme.onPrimary;
        } else if (Color.m244equalsimpl0(j, colorScheme.secondary)) {
            j3 = colorScheme.onSecondary;
        } else if (Color.m244equalsimpl0(j, colorScheme.tertiary)) {
            j3 = colorScheme.onTertiary;
        } else if (Color.m244equalsimpl0(j, colorScheme.background)) {
            j3 = colorScheme.onBackground;
        } else if (Color.m244equalsimpl0(j, colorScheme.error)) {
            j3 = colorScheme.onError;
        } else if (Color.m244equalsimpl0(j, colorScheme.primaryContainer)) {
            j3 = colorScheme.onPrimaryContainer;
        } else if (Color.m244equalsimpl0(j, colorScheme.secondaryContainer)) {
            j3 = colorScheme.onSecondaryContainer;
        } else if (Color.m244equalsimpl0(j, colorScheme.tertiaryContainer)) {
            j3 = colorScheme.onTertiaryContainer;
        } else if (Color.m244equalsimpl0(j, colorScheme.errorContainer)) {
            j3 = colorScheme.onErrorContainer;
        } else if (Color.m244equalsimpl0(j, colorScheme.inverseSurface)) {
            j3 = colorScheme.inverseOnSurface;
        } else {
            if (!Color.m244equalsimpl0(j, colorScheme.surface)) {
                if (Color.m244equalsimpl0(j, colorScheme.surfaceVariant)) {
                    j3 = colorScheme.onSurfaceVariant;
                } else if (!Color.m244equalsimpl0(j, colorScheme.surfaceBright) && !Color.m244equalsimpl0(j, colorScheme.surfaceContainer) && !Color.m244equalsimpl0(j, colorScheme.surfaceContainerHigh) && !Color.m244equalsimpl0(j, colorScheme.surfaceContainerHighest) && !Color.m244equalsimpl0(j, colorScheme.surfaceContainerLow) && !Color.m244equalsimpl0(j, colorScheme.surfaceContainerLowest) && !Color.m244equalsimpl0(j, colorScheme.surfaceDim)) {
                    if (Color.m244equalsimpl0(j, colorScheme.primaryFixed) || Color.m244equalsimpl0(j, colorScheme.primaryFixedDim)) {
                        j3 = j5;
                    } else if (Color.m244equalsimpl0(j, colorScheme.secondaryFixed) || Color.m244equalsimpl0(j, colorScheme.secondaryFixedDim)) {
                        j3 = j4;
                    } else if (!Color.m244equalsimpl0(j, colorScheme.tertiaryFixed) && !Color.m244equalsimpl0(j, colorScheme.tertiaryFixedDim)) {
                        j3 = Color.Unspecified;
                    }
                }
            }
            j3 = j6;
        }
        if (j3 == 16) {
            j3 = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
        }
        gapComposer.end(false);
        return j3;
    }

    /* renamed from: darkColorScheme-_VG5OTI$default, reason: not valid java name */
    public static ColorScheme m139darkColorScheme_VG5OTI$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, int i, int i2) {
        long j36 = (i & 1) != 0 ? ColorDarkTokens.Primary : j;
        return new ColorScheme(j36, (i & 2) != 0 ? ColorDarkTokens.OnPrimary : j2, j3, j4, (i & 16) != 0 ? ColorDarkTokens.InversePrimary : j5, (i & 32) != 0 ? ColorDarkTokens.Secondary : j6, (i & 64) != 0 ? ColorDarkTokens.OnSecondary : j7, (i & 128) != 0 ? ColorDarkTokens.SecondaryContainer : j8, (i & 256) != 0 ? ColorDarkTokens.OnSecondaryContainer : j9, (i & 512) != 0 ? ColorDarkTokens.Tertiary : j10, (i & 1024) != 0 ? ColorDarkTokens.OnTertiary : j11, (i & 2048) != 0 ? ColorDarkTokens.TertiaryContainer : j12, (i & 4096) != 0 ? ColorDarkTokens.OnTertiaryContainer : j13, (i & 8192) != 0 ? ColorDarkTokens.Background : j14, (i & 16384) != 0 ? ColorDarkTokens.OnBackground : j15, (32768 & i) != 0 ? ColorDarkTokens.Surface : j16, (65536 & i) != 0 ? ColorDarkTokens.OnSurface : j17, (131072 & i) != 0 ? ColorDarkTokens.SurfaceVariant : j18, (262144 & i) != 0 ? ColorDarkTokens.OnSurfaceVariant : j19, j36, (1048576 & i) != 0 ? ColorDarkTokens.InverseSurface : j20, (2097152 & i) != 0 ? ColorDarkTokens.InverseOnSurface : j21, (4194304 & i) != 0 ? ColorDarkTokens.Error : j22, (8388608 & i) != 0 ? ColorDarkTokens.OnError : j23, (16777216 & i) != 0 ? ColorDarkTokens.ErrorContainer : j24, (33554432 & i) != 0 ? ColorDarkTokens.OnErrorContainer : j25, (67108864 & i) != 0 ? ColorDarkTokens.Outline : j26, (134217728 & i) != 0 ? ColorDarkTokens.OutlineVariant : j27, (268435456 & i) != 0 ? ColorDarkTokens.Scrim : j28, (536870912 & i) != 0 ? ColorDarkTokens.SurfaceBright : j29, (i2 & 8) != 0 ? ColorDarkTokens.SurfaceDim : j35, (1073741824 & i) != 0 ? ColorDarkTokens.SurfaceContainer : j30, (i & Integer.MIN_VALUE) != 0 ? ColorDarkTokens.SurfaceContainerHigh : j31, (i2 & 1) != 0 ? ColorDarkTokens.SurfaceContainerHighest : j32, (i2 & 2) != 0 ? ColorDarkTokens.SurfaceContainerLow : j33, (i2 & 4) != 0 ? ColorDarkTokens.SurfaceContainerLowest : j34, ColorDarkTokens.PrimaryFixed, ColorDarkTokens.PrimaryFixedDim, ColorDarkTokens.OnPrimaryFixed, ColorDarkTokens.OnPrimaryFixedVariant, ColorDarkTokens.SecondaryFixed, ColorDarkTokens.SecondaryFixedDim, ColorDarkTokens.OnSecondaryFixed, ColorDarkTokens.OnSecondaryFixedVariant, ColorDarkTokens.TertiaryFixed, ColorDarkTokens.TertiaryFixedDim, ColorDarkTokens.OnTertiaryFixed, ColorDarkTokens.OnTertiaryFixedVariant);
    }

    public static final long fromToken(ColorScheme colorScheme, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (colorSchemeKeyTokens.ordinal()) {
            case 0:
                return colorScheme.background;
            case 1:
                return colorScheme.error;
            case 2:
                return colorScheme.errorContainer;
            case 3:
                return colorScheme.inverseOnSurface;
            case 4:
                return colorScheme.inversePrimary;
            case 5:
                return colorScheme.inverseSurface;
            case 6:
                return colorScheme.onBackground;
            case 7:
                return colorScheme.onError;
            case 8:
                return colorScheme.onErrorContainer;
            case 9:
                return colorScheme.onPrimary;
            case 10:
                return colorScheme.onPrimaryContainer;
            case 11:
                return colorScheme.onPrimaryFixed;
            case 12:
                return colorScheme.onPrimaryFixedVariant;
            case 13:
                return colorScheme.onSecondary;
            case 14:
                return colorScheme.onSecondaryContainer;
            case 15:
                return colorScheme.onSecondaryFixed;
            case 16:
                return colorScheme.onSecondaryFixedVariant;
            case 17:
                return colorScheme.onSurface;
            case 18:
                return colorScheme.onSurfaceVariant;
            case 19:
                return colorScheme.onTertiary;
            case 20:
                return colorScheme.onTertiaryContainer;
            case 21:
                return colorScheme.onTertiaryFixed;
            case 22:
                return colorScheme.onTertiaryFixedVariant;
            case 23:
                return colorScheme.outline;
            case 24:
                return colorScheme.outlineVariant;
            case 25:
                return colorScheme.primary;
            case 26:
                return colorScheme.primaryContainer;
            case 27:
                return colorScheme.primaryFixed;
            case 28:
                return colorScheme.primaryFixedDim;
            case 29:
                return colorScheme.scrim;
            case 30:
                return colorScheme.secondary;
            case 31:
                return colorScheme.secondaryContainer;
            case 32:
                return colorScheme.secondaryFixed;
            case 33:
                return colorScheme.secondaryFixedDim;
            case 34:
                return colorScheme.surface;
            case 35:
                return colorScheme.surfaceBright;
            case 36:
                return colorScheme.surfaceContainer;
            case Token.SETPROP /* 37 */:
                return colorScheme.surfaceContainerHigh;
            case 38:
                return colorScheme.surfaceContainerHighest;
            case Token.GETELEM /* 39 */:
                return colorScheme.surfaceContainerLow;
            case Token.GETELEM_SUPER /* 40 */:
                return colorScheme.surfaceContainerLowest;
            case Token.SETELEM /* 41 */:
                return colorScheme.surfaceDim;
            case 42:
                return colorScheme.surfaceTint;
            case Token.CALL /* 43 */:
                return colorScheme.surfaceVariant;
            case Token.NAME /* 44 */:
                return colorScheme.tertiary;
            case Token.NUMBER /* 45 */:
                return colorScheme.tertiaryContainer;
            case Token.STRING /* 46 */:
                return colorScheme.tertiaryFixed;
            case Token.NULL /* 47 */:
                return colorScheme.tertiaryFixedDim;
            default:
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return 0L;
        }
    }

    public static final long getValue(ColorSchemeKeyTokens colorSchemeKeyTokens, Composer composer) {
        return fromToken(((MaterialTheme$Values) ((GapComposer) composer).consume(MaterialThemeKt._localMaterialTheme)).colorScheme, colorSchemeKeyTokens);
    }

    /* renamed from: lightColorScheme-_VG5OTI$default, reason: not valid java name */
    public static ColorScheme m140lightColorScheme_VG5OTI$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, int i, int i2) {
        long j36 = (i & 1) != 0 ? ColorLightTokens.Primary : j;
        return new ColorScheme(j36, (i & 2) != 0 ? ColorLightTokens.OnPrimary : j2, (i & 4) != 0 ? ColorLightTokens.PrimaryContainer : j3, (i & 8) != 0 ? ColorLightTokens.OnPrimaryContainer : j4, (i & 16) != 0 ? ColorLightTokens.InversePrimary : j5, (i & 32) != 0 ? ColorLightTokens.Secondary : j6, (i & 64) != 0 ? ColorLightTokens.OnSecondary : j7, (i & 128) != 0 ? ColorLightTokens.SecondaryContainer : j8, (i & 256) != 0 ? ColorLightTokens.OnSecondaryContainer : j9, (i & 512) != 0 ? ColorLightTokens.Tertiary : j10, (i & 1024) != 0 ? ColorLightTokens.OnTertiary : j11, (i & 2048) != 0 ? ColorLightTokens.TertiaryContainer : j12, (i & 4096) != 0 ? ColorLightTokens.OnTertiaryContainer : j13, (i & 8192) != 0 ? ColorLightTokens.Background : j14, (i & 16384) != 0 ? ColorLightTokens.OnBackground : j15, (32768 & i) != 0 ? ColorLightTokens.Surface : j16, (65536 & i) != 0 ? ColorLightTokens.OnSurface : j17, (131072 & i) != 0 ? ColorLightTokens.SurfaceVariant : j18, (262144 & i) != 0 ? ColorLightTokens.OnSurfaceVariant : j19, j36, (1048576 & i) != 0 ? ColorLightTokens.InverseSurface : j20, (2097152 & i) != 0 ? ColorLightTokens.InverseOnSurface : j21, (4194304 & i) != 0 ? ColorLightTokens.Error : j22, (8388608 & i) != 0 ? ColorLightTokens.OnError : j23, (16777216 & i) != 0 ? ColorLightTokens.ErrorContainer : j24, (33554432 & i) != 0 ? ColorLightTokens.OnErrorContainer : j25, (67108864 & i) != 0 ? ColorLightTokens.Outline : j26, (134217728 & i) != 0 ? ColorLightTokens.OutlineVariant : j27, (268435456 & i) != 0 ? ColorLightTokens.Scrim : j28, (536870912 & i) != 0 ? ColorLightTokens.SurfaceBright : j29, (i2 & 8) != 0 ? ColorLightTokens.SurfaceDim : j35, (1073741824 & i) != 0 ? ColorLightTokens.SurfaceContainer : j30, (i & Integer.MIN_VALUE) != 0 ? ColorLightTokens.SurfaceContainerHigh : j31, (i2 & 1) != 0 ? ColorLightTokens.SurfaceContainerHighest : j32, (i2 & 2) != 0 ? ColorLightTokens.SurfaceContainerLow : j33, (i2 & 4) != 0 ? ColorLightTokens.SurfaceContainerLowest : j34, ColorLightTokens.PrimaryFixed, ColorLightTokens.PrimaryFixedDim, ColorLightTokens.OnPrimaryFixed, ColorLightTokens.OnPrimaryFixedVariant, ColorLightTokens.SecondaryFixed, ColorLightTokens.SecondaryFixedDim, ColorLightTokens.OnSecondaryFixed, ColorLightTokens.OnSecondaryFixedVariant, ColorLightTokens.TertiaryFixed, ColorLightTokens.TertiaryFixedDim, ColorLightTokens.OnTertiaryFixed, ColorLightTokens.OnTertiaryFixedVariant);
    }
}
