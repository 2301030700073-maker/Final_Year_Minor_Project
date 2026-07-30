package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* compiled from: AndroidTextPaint.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidTextPaint_androidKt {
    public static final void setAlpha(TextPaint textPaint, float f) {
        if (Float.isNaN(f)) {
            return;
        }
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        textPaint.setAlpha(Math.round(f * GF2Field.MASK));
    }
}
