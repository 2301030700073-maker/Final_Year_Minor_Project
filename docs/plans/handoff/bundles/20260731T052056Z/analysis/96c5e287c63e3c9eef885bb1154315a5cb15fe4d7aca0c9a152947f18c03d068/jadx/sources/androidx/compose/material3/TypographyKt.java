package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.TextStyle;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypographyKt {
    public static final StaticProvidableCompositionLocal LocalTypography = new StaticProvidableCompositionLocal(0, new Worker$$ExternalSyntheticLambda1(7));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TypographyKeyTokens.values().length];
            try {
                iArr[TypographyKeyTokens.DisplayLarge.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TypographyKeyTokens.DisplayMedium.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TypographyKeyTokens.DisplaySmall.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TypographyKeyTokens.HeadlineLarge.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TypographyKeyTokens.HeadlineMedium.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TypographyKeyTokens.HeadlineSmall.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TypographyKeyTokens.TitleLarge.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TypographyKeyTokens.TitleMedium.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TypographyKeyTokens.TitleSmall.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[TypographyKeyTokens.BodyLarge.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[TypographyKeyTokens.BodyMedium.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[TypographyKeyTokens.BodySmall.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[TypographyKeyTokens.LabelLarge.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[TypographyKeyTokens.LabelMedium.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[TypographyKeyTokens.LabelSmall.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[TypographyKeyTokens.DisplayLargeEmphasized.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[TypographyKeyTokens.DisplayMediumEmphasized.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[TypographyKeyTokens.DisplaySmallEmphasized.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[TypographyKeyTokens.HeadlineLargeEmphasized.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[TypographyKeyTokens.HeadlineMediumEmphasized.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[TypographyKeyTokens.HeadlineSmallEmphasized.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[TypographyKeyTokens.TitleLargeEmphasized.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[TypographyKeyTokens.TitleMediumEmphasized.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[TypographyKeyTokens.TitleSmallEmphasized.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[TypographyKeyTokens.BodyLargeEmphasized.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[TypographyKeyTokens.BodyMediumEmphasized.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[TypographyKeyTokens.BodySmallEmphasized.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[TypographyKeyTokens.LabelLargeEmphasized.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[TypographyKeyTokens.LabelMediumEmphasized.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[TypographyKeyTokens.LabelSmallEmphasized.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TextStyle getValue(TypographyKeyTokens typographyKeyTokens, GapComposer gapComposer) {
        Typography typography = (Typography) gapComposer.consume(LocalTypography);
        switch (WhenMappings.$EnumSwitchMapping$0[typographyKeyTokens.ordinal()]) {
            case 1:
                return typography.displayLarge;
            case 2:
                return typography.displayMedium;
            case 3:
                return typography.displaySmall;
            case 4:
                return typography.headlineLarge;
            case 5:
                return typography.headlineMedium;
            case 6:
                return typography.headlineSmall;
            case 7:
                return typography.titleLarge;
            case 8:
                return typography.titleMedium;
            case 9:
                return typography.titleSmall;
            case 10:
                return typography.bodyLarge;
            case 11:
                return typography.bodyMedium;
            case 12:
                return typography.bodySmall;
            case IMAGE_VALUE:
                return typography.labelLarge;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return typography.labelMedium;
            case 15:
                return typography.labelSmall;
            case LAZY_VERTICAL_GRID_VALUE:
                return typography.displayLargeEmphasized;
            case VERTICAL_GRID_ITEM_VALUE:
                return typography.displayMediumEmphasized;
            case RADIO_GROUP_VALUE:
                return typography.displaySmallEmphasized;
            case RADIO_BUTTON_VALUE:
                return typography.headlineLargeEmphasized;
            case RADIO_ROW_VALUE:
                return typography.headlineMediumEmphasized;
            case RADIO_COLUMN_VALUE:
                return typography.headlineSmallEmphasized;
            case SIZE_BOX_VALUE:
                return typography.titleLargeEmphasized;
            case 23:
                return typography.titleMediumEmphasized;
            case 24:
                return typography.titleSmallEmphasized;
            case 25:
                return typography.bodyLargeEmphasized;
            case 26:
                return typography.bodyMediumEmphasized;
            case 27:
                return typography.bodySmallEmphasized;
            case 28:
                return typography.labelLargeEmphasized;
            case 29:
                return typography.labelMediumEmphasized;
            case 30:
                return typography.labelSmallEmphasized;
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
        }
    }
}
