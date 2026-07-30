package androidx.compose.material3;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
public abstract class RippleKt {
    private static final RippleNodeFactory DefaultBoundedRipple;
    private static final RippleNodeFactory DefaultUnboundedRipple;
    private static final ProvidableCompositionLocal LocalUseFallbackRippleImplementation = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.material3.RippleKt$LocalUseFallbackRippleImplementation$1
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    });
    private static final ProvidableCompositionLocal LocalRippleConfiguration = CompositionLocalKt.compositionLocalOf$default(null, new Function0() { // from class: androidx.compose.material3.RippleKt$LocalRippleConfiguration$1
        @Override // kotlin.jvm.functions.Function0
        public final RippleConfiguration invoke() {
            return new RippleConfiguration(0L, null, 3, null);
        }
    }, 1, null);

    /* renamed from: ripple-H2RKhps, reason: not valid java name */
    public static final IndicationNodeFactory m735rippleH2RKhps(boolean z, float f, long j) {
        if (Dp.m2426equalsimpl0(f, Dp.Companion.m2433getUnspecifiedD9Ej5fM()) && Color.m1304equalsimpl0(j, Color.Companion.m1317getUnspecified0d7_KjU())) {
            return z ? DefaultBoundedRipple : DefaultUnboundedRipple;
        }
        return new RippleNodeFactory(z, f, j, (DefaultConstructorMarker) null);
    }

    static {
        Dp.Companion companion = Dp.Companion;
        float m2433getUnspecifiedD9Ej5fM = companion.m2433getUnspecifiedD9Ej5fM();
        Color.Companion companion2 = Color.Companion;
        DefaultBoundedRipple = new RippleNodeFactory(true, m2433getUnspecifiedD9Ej5fM, companion2.m1317getUnspecified0d7_KjU(), (DefaultConstructorMarker) null);
        DefaultUnboundedRipple = new RippleNodeFactory(false, companion.m2433getUnspecifiedD9Ej5fM(), companion2.m1317getUnspecified0d7_KjU(), (DefaultConstructorMarker) null);
    }

    public static final ProvidableCompositionLocal getLocalRippleConfiguration() {
        return LocalRippleConfiguration;
    }

    /* renamed from: rippleOrFallbackImplementation-9IZ8Weo, reason: not valid java name */
    public static final Indication m736rippleOrFallbackImplementation9IZ8Weo(boolean z, float f, long j, Composer composer, int i, int i2) {
        Indication m735rippleH2RKhps;
        if ((i2 & 1) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i2 & 2) != 0) {
            f = Dp.Companion.m2433getUnspecifiedD9Ej5fM();
        }
        float f2 = f;
        if ((i2 & 4) != 0) {
            j = Color.Companion.m1317getUnspecified0d7_KjU();
        }
        long j2 = j;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1315814667, i, -1, "androidx.compose.material3.rippleOrFallbackImplementation (Ripple.kt:230)");
        }
        composer.startReplaceGroup(-1280632857);
        if (((Boolean) composer.consume(LocalUseFallbackRippleImplementation)).booleanValue()) {
            m735rippleH2RKhps = androidx.compose.material.ripple.RippleKt.m596rememberRipple9IZ8Weo(z2, f2, j2, composer, i & 1022, 0);
        } else {
            m735rippleH2RKhps = m735rippleH2RKhps(z2, f2, j2);
        }
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return m735rippleH2RKhps;
    }
}
