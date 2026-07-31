package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ColorSchemeKt {
    public static final StaticProvidableCompositionLocal LocalColorScheme = new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(27));
    public static final StaticProvidableCompositionLocal LocalTonalElevationEnabled = new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(28));

    /* renamed from: contentColorFor-4WTKRHQ, reason: not valid java name */
    public static final long m340contentColorFor4WTKRHQ(ColorScheme colorScheme, long j) {
        long j2 = colorScheme.primary;
        long j3 = colorScheme.onTertiaryFixed;
        long j4 = colorScheme.onSecondaryFixed;
        long j5 = colorScheme.onPrimaryFixed;
        long j6 = colorScheme.onSurface;
        if (Color.m482equalsimpl0(j, j2)) {
            return colorScheme.onPrimary;
        }
        if (Color.m482equalsimpl0(j, colorScheme.secondary)) {
            return colorScheme.onSecondary;
        }
        if (Color.m482equalsimpl0(j, colorScheme.tertiary)) {
            return colorScheme.onTertiary;
        }
        if (Color.m482equalsimpl0(j, colorScheme.background)) {
            return colorScheme.onBackground;
        }
        if (Color.m482equalsimpl0(j, colorScheme.error)) {
            return colorScheme.onError;
        }
        if (Color.m482equalsimpl0(j, colorScheme.primaryContainer)) {
            return colorScheme.onPrimaryContainer;
        }
        if (Color.m482equalsimpl0(j, colorScheme.secondaryContainer)) {
            return colorScheme.onSecondaryContainer;
        }
        if (Color.m482equalsimpl0(j, colorScheme.tertiaryContainer)) {
            return colorScheme.onTertiaryContainer;
        }
        if (Color.m482equalsimpl0(j, colorScheme.errorContainer)) {
            return colorScheme.onErrorContainer;
        }
        if (Color.m482equalsimpl0(j, colorScheme.inverseSurface)) {
            return colorScheme.inverseOnSurface;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surface)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceVariant)) {
            return colorScheme.onSurfaceVariant;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceBright)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceContainer)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceContainerHigh)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceContainerHighest)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceContainerLow)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceContainerLowest)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.surfaceDim)) {
            return j6;
        }
        if (Color.m482equalsimpl0(j, colorScheme.primaryFixed)) {
            return j5;
        }
        if (Color.m482equalsimpl0(j, colorScheme.primaryFixedDim)) {
            return j5;
        }
        if (Color.m482equalsimpl0(j, colorScheme.secondaryFixed)) {
            return j4;
        }
        if (Color.m482equalsimpl0(j, colorScheme.secondaryFixedDim)) {
            return j4;
        }
        if (Color.m482equalsimpl0(j, colorScheme.tertiaryFixed)) {
            return j3;
        }
        if (Color.m482equalsimpl0(j, colorScheme.tertiaryFixedDim)) {
            return j3;
        }
        int i = Color.$r8$clinit;
        return Color.Unspecified;
    }

    /* renamed from: contentColorFor-ek8zF_U, reason: not valid java name */
    public static final long m341contentColorForek8zF_U(long j, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(89374938);
        long m340contentColorFor4WTKRHQ = m340contentColorFor4WTKRHQ((ColorScheme) gapComposer.consume(LocalColorScheme), j);
        if (m340contentColorFor4WTKRHQ == 16) {
            m340contentColorFor4WTKRHQ = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
        }
        gapComposer.end(false);
        return m340contentColorFor4WTKRHQ;
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return colorScheme.onError;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return colorScheme.onErrorContainer;
            case 9:
                return colorScheme.onPrimary;
            case 10:
                return colorScheme.onPrimaryContainer;
            case 11:
                return colorScheme.onPrimaryFixed;
            case BasicTextKt.ShiftMeta /* 12 */:
                return colorScheme.onPrimaryFixedVariant;
            case 13:
                return colorScheme.onSecondary;
            case 14:
                return colorScheme.onSecondaryContainer;
            case OffsetKt.Horizontal /* 15 */:
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
            case 37:
                return colorScheme.surfaceContainerHigh;
            case 38:
                return colorScheme.surfaceContainerHighest;
            case 39:
                return colorScheme.surfaceContainerLow;
            case 40:
                return colorScheme.surfaceContainerLowest;
            case 41:
                return colorScheme.surfaceDim;
            case 42:
                return colorScheme.surfaceTint;
            case 43:
                return colorScheme.surfaceVariant;
            case 44:
                return colorScheme.tertiary;
            case 45:
                return colorScheme.tertiaryContainer;
            case 46:
                return colorScheme.tertiaryFixed;
            case 47:
                return colorScheme.tertiaryFixedDim;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return 0L;
        }
    }

    public static final long getValue(ColorSchemeKeyTokens colorSchemeKeyTokens, Composer composer) {
        return fromToken((ColorScheme) ((GapComposer) composer).consume(LocalColorScheme), colorSchemeKeyTokens);
    }
}
