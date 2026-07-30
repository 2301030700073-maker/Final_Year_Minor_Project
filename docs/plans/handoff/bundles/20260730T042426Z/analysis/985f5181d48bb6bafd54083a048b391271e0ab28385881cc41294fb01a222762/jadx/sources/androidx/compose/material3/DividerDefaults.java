package androidx.compose.material3;

import androidx.compose.material3.tokens.DividerTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;

/* compiled from: Divider.kt */
/* loaded from: classes.dex */
public final class DividerDefaults {
    public static final DividerDefaults INSTANCE = new DividerDefaults();
    private static final float Thickness = DividerTokens.INSTANCE.m869getThicknessD9Ej5fM();

    private DividerDefaults() {
    }

    /* renamed from: getThickness-D9Ej5fM, reason: not valid java name */
    public final float m680getThicknessD9Ej5fM() {
        return Thickness;
    }

    public final long getColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(77461041, i, -1, "androidx.compose.material3.DividerDefaults.<get-color> (Divider.kt:118)");
        }
        long value = ColorSchemeKt.getValue(DividerTokens.INSTANCE.getColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }
}
