package androidx.compose.material3;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.material3.tokens.ProgressIndicatorTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;

/* compiled from: ProgressIndicator.kt */
/* loaded from: classes.dex */
public final class ProgressIndicatorDefaults {
    private static final int CircularDeterminateStrokeCap;
    private static final int CircularIndeterminateStrokeCap;
    private static final float CircularIndicatorTrackGapSize;
    private static final float CircularStrokeWidth;
    public static final ProgressIndicatorDefaults INSTANCE = new ProgressIndicatorDefaults();
    private static final float LinearIndicatorTrackGapSize;
    private static final int LinearStrokeCap;
    private static final float LinearTrackStopIndicatorSize;
    private static final SpringSpec ProgressAnimationSpec;

    private ProgressIndicatorDefaults() {
    }

    public final long getLinearColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-914312983, i, -1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-linearColor> (ProgressIndicator.kt:843)");
        }
        long value = ColorSchemeKt.getValue(ProgressIndicatorTokens.INSTANCE.getActiveIndicatorColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final long getCircularColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1803349725, i, -1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-circularColor> (ProgressIndicator.kt:847)");
        }
        long value = ColorSchemeKt.getValue(ProgressIndicatorTokens.INSTANCE.getActiveIndicatorColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final long getLinearTrackColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1677541593, i, -1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-linearTrackColor> (ProgressIndicator.kt:851)");
        }
        long value = ColorSchemeKt.getValue(ProgressIndicatorTokens.INSTANCE.getTrackColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final long getCircularIndeterminateTrackColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1947901123, i, -1, "androidx.compose.material3.ProgressIndicatorDefaults.<get-circularIndeterminateTrackColor> (ProgressIndicator.kt:868)");
        }
        long m1316getTransparent0d7_KjU = Color.Companion.m1316getTransparent0d7_KjU();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return m1316getTransparent0d7_KjU;
    }

    static {
        ProgressIndicatorTokens progressIndicatorTokens = ProgressIndicatorTokens.INSTANCE;
        CircularStrokeWidth = progressIndicatorTokens.m959getTrackThicknessD9Ej5fM();
        StrokeCap.Companion companion = StrokeCap.Companion;
        LinearStrokeCap = companion.m1424getRoundKaPHkGw();
        CircularDeterminateStrokeCap = companion.m1424getRoundKaPHkGw();
        CircularIndeterminateStrokeCap = companion.m1424getRoundKaPHkGw();
        LinearTrackStopIndicatorSize = progressIndicatorTokens.m958getStopSizeD9Ej5fM();
        LinearIndicatorTrackGapSize = progressIndicatorTokens.m956getActiveTrackSpaceD9Ej5fM();
        CircularIndicatorTrackGapSize = progressIndicatorTokens.m956getActiveTrackSpaceD9Ej5fM();
        ProgressAnimationSpec = new SpringSpec(1.0f, 50.0f, Float.valueOf(0.001f));
    }

    /* renamed from: getCircularStrokeWidth-D9Ej5fM, reason: not valid java name */
    public final float m721getCircularStrokeWidthD9Ej5fM() {
        return CircularStrokeWidth;
    }

    /* renamed from: getLinearStrokeCap-KaPHkGw, reason: not valid java name */
    public final int m723getLinearStrokeCapKaPHkGw() {
        return LinearStrokeCap;
    }

    /* renamed from: getCircularIndeterminateStrokeCap-KaPHkGw, reason: not valid java name */
    public final int m720getCircularIndeterminateStrokeCapKaPHkGw() {
        return CircularIndeterminateStrokeCap;
    }

    /* renamed from: getLinearIndicatorTrackGapSize-D9Ej5fM, reason: not valid java name */
    public final float m722getLinearIndicatorTrackGapSizeD9Ej5fM() {
        return LinearIndicatorTrackGapSize;
    }
}
