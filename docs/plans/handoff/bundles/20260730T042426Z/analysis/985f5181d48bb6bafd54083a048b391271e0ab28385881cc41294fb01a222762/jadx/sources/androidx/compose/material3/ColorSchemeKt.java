package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorDarkTokens;
import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* compiled from: ColorScheme.kt */
/* loaded from: classes.dex */
public abstract class ColorSchemeKt {
    private static final ProvidableCompositionLocal LocalColorScheme = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.material3.ColorSchemeKt$LocalColorScheme$1
        @Override // kotlin.jvm.functions.Function0
        public final ColorScheme invoke() {
            return ColorSchemeKt.m669lightColorSchemeCXl9yA$default(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 15, null);
        }
    });
    private static final ProvidableCompositionLocal LocalTonalElevationEnabled = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.material3.ColorSchemeKt$LocalTonalElevationEnabled$1
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    });

    /* compiled from: ColorScheme.kt */
    public /* synthetic */ class WhenMappings {
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
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: lightColorScheme-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m669lightColorSchemeCXl9yA$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long m853getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m853getPrimary0d7_KjU() : j;
        return m668lightColorSchemeCXl9yA(m853getPrimary0d7_KjU, (i & 2) != 0 ? ColorLightTokens.INSTANCE.m843getOnPrimary0d7_KjU() : j2, (i & 4) != 0 ? ColorLightTokens.INSTANCE.m854getPrimaryContainer0d7_KjU() : j3, (i & 8) != 0 ? ColorLightTokens.INSTANCE.m844getOnPrimaryContainer0d7_KjU() : j4, (i & 16) != 0 ? ColorLightTokens.INSTANCE.m838getInversePrimary0d7_KjU() : j5, (i & 32) != 0 ? ColorLightTokens.INSTANCE.m856getSecondary0d7_KjU() : j6, (i & 64) != 0 ? ColorLightTokens.INSTANCE.m845getOnSecondary0d7_KjU() : j7, (i & 128) != 0 ? ColorLightTokens.INSTANCE.m857getSecondaryContainer0d7_KjU() : j8, (i & 256) != 0 ? ColorLightTokens.INSTANCE.m846getOnSecondaryContainer0d7_KjU() : j9, (i & 512) != 0 ? ColorLightTokens.INSTANCE.m867getTertiary0d7_KjU() : j10, (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m849getOnTertiary0d7_KjU() : j11, (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m868getTertiaryContainer0d7_KjU() : j12, (i & PKIFailureInfo.certConfirmed) != 0 ? ColorLightTokens.INSTANCE.m850getOnTertiaryContainer0d7_KjU() : j13, (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m834getBackground0d7_KjU() : j14, (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m840getOnBackground0d7_KjU() : j15, (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m858getSurface0d7_KjU() : j16, (i & PKIFailureInfo.notAuthorized) != 0 ? ColorLightTokens.INSTANCE.m847getOnSurface0d7_KjU() : j17, (i & PKIFailureInfo.unsupportedVersion) != 0 ? ColorLightTokens.INSTANCE.m866getSurfaceVariant0d7_KjU() : j18, (i & PKIFailureInfo.transactionIdInUse) != 0 ? ColorLightTokens.INSTANCE.m848getOnSurfaceVariant0d7_KjU() : j19, (i & PKIFailureInfo.signerNotTrusted) != 0 ? m853getPrimary0d7_KjU : j20, (i & PKIFailureInfo.badCertTemplate) != 0 ? ColorLightTokens.INSTANCE.m839getInverseSurface0d7_KjU() : j21, (i & PKIFailureInfo.badSenderNonce) != 0 ? ColorLightTokens.INSTANCE.m837getInverseOnSurface0d7_KjU() : j22, (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m835getError0d7_KjU() : j23, (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m841getOnError0d7_KjU() : j24, (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m836getErrorContainer0d7_KjU() : j25, (i & 33554432) != 0 ? ColorLightTokens.INSTANCE.m842getOnErrorContainer0d7_KjU() : j26, (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m851getOutline0d7_KjU() : j27, (i & 134217728) != 0 ? ColorLightTokens.INSTANCE.m852getOutlineVariant0d7_KjU() : j28, (i & 268435456) != 0 ? ColorLightTokens.INSTANCE.m855getScrim0d7_KjU() : j29, (i & PKIFailureInfo.duplicateCertReq) != 0 ? ColorLightTokens.INSTANCE.m859getSurfaceBright0d7_KjU() : j30, (i & 1073741824) != 0 ? ColorLightTokens.INSTANCE.m860getSurfaceContainer0d7_KjU() : j31, (i & Integer.MIN_VALUE) != 0 ? ColorLightTokens.INSTANCE.m861getSurfaceContainerHigh0d7_KjU() : j32, (i2 & 1) != 0 ? ColorLightTokens.INSTANCE.m862getSurfaceContainerHighest0d7_KjU() : j33, (i2 & 2) != 0 ? ColorLightTokens.INSTANCE.m863getSurfaceContainerLow0d7_KjU() : j34, (i2 & 4) != 0 ? ColorLightTokens.INSTANCE.m864getSurfaceContainerLowest0d7_KjU() : j35, (i2 & 8) != 0 ? ColorLightTokens.INSTANCE.m865getSurfaceDim0d7_KjU() : j36);
    }

    /* renamed from: lightColorScheme-C-Xl9yA, reason: not valid java name */
    public static final ColorScheme m668lightColorSchemeCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j36, j31, j32, j33, j34, j35, null);
    }

    /* renamed from: darkColorScheme-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m667darkColorSchemeCXl9yA$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long m818getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m818getPrimary0d7_KjU() : j;
        return m666darkColorSchemeCXl9yA(m818getPrimary0d7_KjU, (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m808getOnPrimary0d7_KjU() : j2, (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m819getPrimaryContainer0d7_KjU() : j3, (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m809getOnPrimaryContainer0d7_KjU() : j4, (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m803getInversePrimary0d7_KjU() : j5, (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m821getSecondary0d7_KjU() : j6, (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m810getOnSecondary0d7_KjU() : j7, (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m822getSecondaryContainer0d7_KjU() : j8, (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m811getOnSecondaryContainer0d7_KjU() : j9, (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m832getTertiary0d7_KjU() : j10, (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m814getOnTertiary0d7_KjU() : j11, (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m833getTertiaryContainer0d7_KjU() : j12, (i & PKIFailureInfo.certConfirmed) != 0 ? ColorDarkTokens.INSTANCE.m815getOnTertiaryContainer0d7_KjU() : j13, (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m799getBackground0d7_KjU() : j14, (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m805getOnBackground0d7_KjU() : j15, (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m823getSurface0d7_KjU() : j16, (i & PKIFailureInfo.notAuthorized) != 0 ? ColorDarkTokens.INSTANCE.m812getOnSurface0d7_KjU() : j17, (i & PKIFailureInfo.unsupportedVersion) != 0 ? ColorDarkTokens.INSTANCE.m831getSurfaceVariant0d7_KjU() : j18, (i & PKIFailureInfo.transactionIdInUse) != 0 ? ColorDarkTokens.INSTANCE.m813getOnSurfaceVariant0d7_KjU() : j19, (i & PKIFailureInfo.signerNotTrusted) != 0 ? m818getPrimary0d7_KjU : j20, (i & PKIFailureInfo.badCertTemplate) != 0 ? ColorDarkTokens.INSTANCE.m804getInverseSurface0d7_KjU() : j21, (i & PKIFailureInfo.badSenderNonce) != 0 ? ColorDarkTokens.INSTANCE.m802getInverseOnSurface0d7_KjU() : j22, (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m800getError0d7_KjU() : j23, (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m806getOnError0d7_KjU() : j24, (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m801getErrorContainer0d7_KjU() : j25, (i & 33554432) != 0 ? ColorDarkTokens.INSTANCE.m807getOnErrorContainer0d7_KjU() : j26, (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m816getOutline0d7_KjU() : j27, (i & 134217728) != 0 ? ColorDarkTokens.INSTANCE.m817getOutlineVariant0d7_KjU() : j28, (i & 268435456) != 0 ? ColorDarkTokens.INSTANCE.m820getScrim0d7_KjU() : j29, (i & PKIFailureInfo.duplicateCertReq) != 0 ? ColorDarkTokens.INSTANCE.m824getSurfaceBright0d7_KjU() : j30, (i & 1073741824) != 0 ? ColorDarkTokens.INSTANCE.m825getSurfaceContainer0d7_KjU() : j31, (i & Integer.MIN_VALUE) != 0 ? ColorDarkTokens.INSTANCE.m826getSurfaceContainerHigh0d7_KjU() : j32, (i2 & 1) != 0 ? ColorDarkTokens.INSTANCE.m827getSurfaceContainerHighest0d7_KjU() : j33, (i2 & 2) != 0 ? ColorDarkTokens.INSTANCE.m828getSurfaceContainerLow0d7_KjU() : j34, (i2 & 4) != 0 ? ColorDarkTokens.INSTANCE.m829getSurfaceContainerLowest0d7_KjU() : j35, (i2 & 8) != 0 ? ColorDarkTokens.INSTANCE.m830getSurfaceDim0d7_KjU() : j36);
    }

    /* renamed from: darkColorScheme-C-Xl9yA, reason: not valid java name */
    public static final ColorScheme m666darkColorSchemeCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j36, j31, j32, j33, j34, j35, null);
    }

    /* renamed from: contentColorFor-4WTKRHQ, reason: not valid java name */
    public static final long m664contentColorFor4WTKRHQ(ColorScheme colorScheme, long j) {
        if (Color.m1304equalsimpl0(j, colorScheme.m646getPrimary0d7_KjU())) {
            return colorScheme.m636getOnPrimary0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m649getSecondary0d7_KjU())) {
            return colorScheme.m638getOnSecondary0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m661getTertiary0d7_KjU())) {
            return colorScheme.m642getOnTertiary0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m627getBackground0d7_KjU())) {
            return colorScheme.m633getOnBackground0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m628getError0d7_KjU())) {
            return colorScheme.m634getOnError0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m647getPrimaryContainer0d7_KjU())) {
            return colorScheme.m637getOnPrimaryContainer0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m650getSecondaryContainer0d7_KjU())) {
            return colorScheme.m639getOnSecondaryContainer0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m662getTertiaryContainer0d7_KjU())) {
            return colorScheme.m643getOnTertiaryContainer0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m629getErrorContainer0d7_KjU())) {
            return colorScheme.m635getOnErrorContainer0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m632getInverseSurface0d7_KjU())) {
            return colorScheme.m630getInverseOnSurface0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m651getSurface0d7_KjU())) {
            return colorScheme.m640getOnSurface0d7_KjU();
        }
        if (Color.m1304equalsimpl0(j, colorScheme.m660getSurfaceVariant0d7_KjU())) {
            return colorScheme.m641getOnSurfaceVariant0d7_KjU();
        }
        if (!Color.m1304equalsimpl0(j, colorScheme.m652getSurfaceBright0d7_KjU()) && !Color.m1304equalsimpl0(j, colorScheme.m653getSurfaceContainer0d7_KjU()) && !Color.m1304equalsimpl0(j, colorScheme.m654getSurfaceContainerHigh0d7_KjU()) && !Color.m1304equalsimpl0(j, colorScheme.m655getSurfaceContainerHighest0d7_KjU()) && !Color.m1304equalsimpl0(j, colorScheme.m656getSurfaceContainerLow0d7_KjU()) && !Color.m1304equalsimpl0(j, colorScheme.m657getSurfaceContainerLowest0d7_KjU())) {
            return Color.Companion.m1317getUnspecified0d7_KjU();
        }
        return colorScheme.m640getOnSurface0d7_KjU();
    }

    /* renamed from: contentColorFor-ek8zF_U, reason: not valid java name */
    public static final long m665contentColorForek8zF_U(long j, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(509589638, i, -1, "androidx.compose.material3.contentColorFor (ColorScheme.kt:878)");
        }
        composer.startReplaceGroup(-1680936624);
        long m664contentColorFor4WTKRHQ = m664contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composer, 6), j);
        if (m664contentColorFor4WTKRHQ == 16) {
            m664contentColorFor4WTKRHQ = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1312unboximpl();
        }
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return m664contentColorFor4WTKRHQ;
    }

    /* renamed from: applyTonalElevation-RFCenO8, reason: not valid java name */
    public static final long m663applyTonalElevationRFCenO8(ColorScheme colorScheme, long j, float f, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1610977682, i, -1, "androidx.compose.material3.applyTonalElevation (ColorScheme.kt:895)");
        }
        boolean booleanValue = ((Boolean) composer.consume(LocalTonalElevationEnabled)).booleanValue();
        if (Color.m1304equalsimpl0(j, colorScheme.m651getSurface0d7_KjU()) && booleanValue) {
            j = m670surfaceColorAtElevation3ABfNKs(colorScheme, f);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return j;
    }

    public static final long fromToken(ColorScheme colorScheme, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (WhenMappings.$EnumSwitchMapping$0[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return colorScheme.m627getBackground0d7_KjU();
            case 2:
                return colorScheme.m628getError0d7_KjU();
            case 3:
                return colorScheme.m629getErrorContainer0d7_KjU();
            case 4:
                return colorScheme.m630getInverseOnSurface0d7_KjU();
            case 5:
                return colorScheme.m631getInversePrimary0d7_KjU();
            case 6:
                return colorScheme.m632getInverseSurface0d7_KjU();
            case 7:
                return colorScheme.m633getOnBackground0d7_KjU();
            case 8:
                return colorScheme.m634getOnError0d7_KjU();
            case 9:
                return colorScheme.m635getOnErrorContainer0d7_KjU();
            case 10:
                return colorScheme.m636getOnPrimary0d7_KjU();
            case 11:
                return colorScheme.m637getOnPrimaryContainer0d7_KjU();
            case 12:
                return colorScheme.m638getOnSecondary0d7_KjU();
            case 13:
                return colorScheme.m639getOnSecondaryContainer0d7_KjU();
            case 14:
                return colorScheme.m640getOnSurface0d7_KjU();
            case 15:
                return colorScheme.m641getOnSurfaceVariant0d7_KjU();
            case 16:
                return colorScheme.m659getSurfaceTint0d7_KjU();
            case 17:
                return colorScheme.m642getOnTertiary0d7_KjU();
            case 18:
                return colorScheme.m643getOnTertiaryContainer0d7_KjU();
            case 19:
                return colorScheme.m644getOutline0d7_KjU();
            case 20:
                return colorScheme.m645getOutlineVariant0d7_KjU();
            case 21:
                return colorScheme.m646getPrimary0d7_KjU();
            case 22:
                return colorScheme.m647getPrimaryContainer0d7_KjU();
            case 23:
                return colorScheme.m648getScrim0d7_KjU();
            case 24:
                return colorScheme.m649getSecondary0d7_KjU();
            case 25:
                return colorScheme.m650getSecondaryContainer0d7_KjU();
            case 26:
                return colorScheme.m651getSurface0d7_KjU();
            case 27:
                return colorScheme.m660getSurfaceVariant0d7_KjU();
            case 28:
                return colorScheme.m652getSurfaceBright0d7_KjU();
            case 29:
                return colorScheme.m653getSurfaceContainer0d7_KjU();
            case 30:
                return colorScheme.m654getSurfaceContainerHigh0d7_KjU();
            case 31:
                return colorScheme.m655getSurfaceContainerHighest0d7_KjU();
            case 32:
                return colorScheme.m656getSurfaceContainerLow0d7_KjU();
            case 33:
                return colorScheme.m657getSurfaceContainerLowest0d7_KjU();
            case 34:
                return colorScheme.m658getSurfaceDim0d7_KjU();
            case 35:
                return colorScheme.m661getTertiary0d7_KjU();
            case EACTags.APPLICATION_EXPIRATION_DATE /* 36 */:
                return colorScheme.m662getTertiaryContainer0d7_KjU();
            default:
                return Color.Companion.m1317getUnspecified0d7_KjU();
        }
    }

    public static final ProvidableCompositionLocal getLocalColorScheme() {
        return LocalColorScheme;
    }

    public static final long getValue(ColorSchemeKeyTokens colorSchemeKeyTokens, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-810780884, i, -1, "androidx.compose.material3.<get-value> (ColorScheme.kt:1009)");
        }
        long fromToken = fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), colorSchemeKeyTokens);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return fromToken;
    }

    /* renamed from: surfaceColorAtElevation-3ABfNKs, reason: not valid java name */
    public static final long m670surfaceColorAtElevation3ABfNKs(ColorScheme colorScheme, float f) {
        if (Dp.m2426equalsimpl0(f, Dp.m2424constructorimpl(0))) {
            return colorScheme.m651getSurface0d7_KjU();
        }
        return ColorKt.m1321compositeOverOWjLjI(Color.m1302copywmQWz5c$default(colorScheme.m659getSurfaceTint0d7_KjU(), ((((float) Math.log(f + 1)) * 4.5f) + 2.0f) / 100.0f, 0.0f, 0.0f, 0.0f, 14, null), colorScheme.m651getSurface0d7_KjU());
    }
}
