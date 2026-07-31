package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ColorSchemeKt {
    public static final StaticProvidableCompositionLocal LocalColorScheme = new StaticProvidableCompositionLocal(0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(27));
    public static final StaticProvidableCompositionLocal LocalTonalElevationEnabled = new StaticProvidableCompositionLocal(0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(9));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ColorSchemeKeyTokens.values().length];
            try {
                iArr[ColorSchemeKeyTokens.Background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ColorSchemeKeyTokens.ErrorContainer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseOnSurface.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InversePrimary.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseSurface.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnBackground.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnErrorContainer.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimary.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryContainer.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondary.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryContainer.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurface.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurfaceVariant.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceTint.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiary.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryContainer.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Outline.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OutlineVariant.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Primary.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryContainer.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Scrim.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Secondary.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryContainer.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Surface.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceVariant.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceBright.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainer.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHigh.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHighest.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLow.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLowest.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceDim.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Tertiary.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryContainer.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixed.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixedDim.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixed.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixedVariant.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixed.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixedDim.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixed.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixedVariant.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixed.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixedDim.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixed.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixedVariant.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: contentColorFor-4WTKRHQ, reason: not valid java name */
    public static final long m284contentColorFor4WTKRHQ(ColorScheme colorScheme, long j) {
        long j2 = colorScheme.primary;
        long j3 = colorScheme.onTertiaryFixed;
        long j4 = colorScheme.onSecondaryFixed;
        long j5 = colorScheme.onPrimaryFixed;
        long j6 = colorScheme.onSurface;
        int i = Color.$r8$clinit;
        if (ULong.m820equalsimpl0(j, j2)) {
            return colorScheme.onPrimary;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.secondary)) {
            return colorScheme.onSecondary;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.tertiary)) {
            return colorScheme.onTertiary;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.background)) {
            return colorScheme.onBackground;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.error)) {
            return colorScheme.onError;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.primaryContainer)) {
            return colorScheme.onPrimaryContainer;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.secondaryContainer)) {
            return colorScheme.onSecondaryContainer;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.tertiaryContainer)) {
            return colorScheme.onTertiaryContainer;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.errorContainer)) {
            return colorScheme.onErrorContainer;
        }
        if (ULong.m820equalsimpl0(j, colorScheme.inverseSurface)) {
            return colorScheme.inverseOnSurface;
        }
        if (!ULong.m820equalsimpl0(j, colorScheme.surface)) {
            if (ULong.m820equalsimpl0(j, colorScheme.surfaceVariant)) {
                return colorScheme.onSurfaceVariant;
            }
            if (!ULong.m820equalsimpl0(j, colorScheme.surfaceBright) && !ULong.m820equalsimpl0(j, colorScheme.surfaceContainer) && !ULong.m820equalsimpl0(j, colorScheme.surfaceContainerHigh) && !ULong.m820equalsimpl0(j, colorScheme.surfaceContainerHighest) && !ULong.m820equalsimpl0(j, colorScheme.surfaceContainerLow) && !ULong.m820equalsimpl0(j, colorScheme.surfaceContainerLowest) && !ULong.m820equalsimpl0(j, colorScheme.surfaceDim)) {
                return (ULong.m820equalsimpl0(j, colorScheme.primaryFixed) || ULong.m820equalsimpl0(j, colorScheme.primaryFixedDim)) ? j5 : (ULong.m820equalsimpl0(j, colorScheme.secondaryFixed) || ULong.m820equalsimpl0(j, colorScheme.secondaryFixedDim)) ? j4 : (ULong.m820equalsimpl0(j, colorScheme.tertiaryFixed) || ULong.m820equalsimpl0(j, colorScheme.tertiaryFixedDim)) ? j3 : Color.Unspecified;
            }
        }
        return j6;
    }

    /* renamed from: contentColorFor-ek8zF_U, reason: not valid java name */
    public static final long m285contentColorForek8zF_U(long j, GapComposer gapComposer) {
        gapComposer.startReplaceGroup(89374938);
        long m284contentColorFor4WTKRHQ = m284contentColorFor4WTKRHQ((ColorScheme) gapComposer.consume(LocalColorScheme), j);
        if (m284contentColorFor4WTKRHQ == 16) {
            m284contentColorFor4WTKRHQ = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
        }
        gapComposer.end(false);
        return m284contentColorFor4WTKRHQ;
    }

    public static final long fromToken(ColorScheme colorScheme, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (WhenMappings.$EnumSwitchMapping$0[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return colorScheme.background;
            case 2:
                return colorScheme.error;
            case 3:
                return colorScheme.errorContainer;
            case 4:
                return colorScheme.inverseOnSurface;
            case 5:
                return colorScheme.inversePrimary;
            case 6:
                return colorScheme.inverseSurface;
            case 7:
                return colorScheme.onBackground;
            case 8:
                return colorScheme.onError;
            case 9:
                return colorScheme.onErrorContainer;
            case 10:
                return colorScheme.onPrimary;
            case 11:
                return colorScheme.onPrimaryContainer;
            case 12:
                return colorScheme.onSecondary;
            case IMAGE_VALUE:
                return colorScheme.onSecondaryContainer;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return colorScheme.onSurface;
            case 15:
                return colorScheme.onSurfaceVariant;
            case LAZY_VERTICAL_GRID_VALUE:
                return colorScheme.surfaceTint;
            case VERTICAL_GRID_ITEM_VALUE:
                return colorScheme.onTertiary;
            case RADIO_GROUP_VALUE:
                return colorScheme.onTertiaryContainer;
            case RADIO_BUTTON_VALUE:
                return colorScheme.outline;
            case RADIO_ROW_VALUE:
                return colorScheme.outlineVariant;
            case RADIO_COLUMN_VALUE:
                return colorScheme.primary;
            case SIZE_BOX_VALUE:
                return colorScheme.primaryContainer;
            case 23:
                return colorScheme.scrim;
            case 24:
                return colorScheme.secondary;
            case 25:
                return colorScheme.secondaryContainer;
            case 26:
                return colorScheme.surface;
            case 27:
                return colorScheme.surfaceVariant;
            case 28:
                return colorScheme.surfaceBright;
            case 29:
                return colorScheme.surfaceContainer;
            case 30:
                return colorScheme.surfaceContainerHigh;
            case 31:
                return colorScheme.surfaceContainerHighest;
            case 32:
                return colorScheme.surfaceContainerLow;
            case 33:
                return colorScheme.surfaceContainerLowest;
            case 34:
                return colorScheme.surfaceDim;
            case 35:
                return colorScheme.tertiary;
            case 36:
                return colorScheme.tertiaryContainer;
            case 37:
                return colorScheme.primaryFixed;
            case 38:
                return colorScheme.primaryFixedDim;
            case 39:
                return colorScheme.onPrimaryFixed;
            case 40:
                return colorScheme.onPrimaryFixedVariant;
            case 41:
                return colorScheme.secondaryFixed;
            case 42:
                return colorScheme.secondaryFixedDim;
            case 43:
                return colorScheme.onSecondaryFixed;
            case 44:
                return colorScheme.onSecondaryFixedVariant;
            case 45:
                return colorScheme.tertiaryFixed;
            case 46:
                return colorScheme.tertiaryFixedDim;
            case 47:
                return colorScheme.onTertiaryFixed;
            case 48:
                return colorScheme.onTertiaryFixedVariant;
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return 0L;
        }
    }

    public static final long getValue(ColorSchemeKeyTokens colorSchemeKeyTokens, GapComposer gapComposer) {
        return fromToken((ColorScheme) gapComposer.consume(LocalColorScheme), colorSchemeKeyTokens);
    }
}
