package androidx.compose.ui.text.platform.style;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.text.platform.AndroidTextPaint_androidKt;
import kotlin.jvm.functions.Function0;

/* compiled from: ShaderBrushSpan.android.kt */
/* loaded from: classes.dex */
public final class ShaderBrushSpan extends CharacterStyle implements UpdateAppearance {
    private final float alpha;
    private final ShaderBrush shaderBrush;
    private final MutableState size$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m1198boximpl(Size.Companion.m1209getUnspecifiedNHjbRc()), null, 2, null);
    private final State shaderState = SnapshotStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.ui.text.platform.style.ShaderBrushSpan$shaderState$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Shader invoke() {
            if (ShaderBrushSpan.this.m2273getSizeNHjbRc() == 9205357640488583168L || Size.m1206isEmptyimpl(ShaderBrushSpan.this.m2273getSizeNHjbRc())) {
                return null;
            }
            return ShaderBrushSpan.this.getShaderBrush().mo1289createShaderuvyYCjk(ShaderBrushSpan.this.m2273getSizeNHjbRc());
        }
    });

    public final ShaderBrush getShaderBrush() {
        return this.shaderBrush;
    }

    public ShaderBrushSpan(ShaderBrush shaderBrush, float f) {
        this.shaderBrush = shaderBrush;
        this.alpha = f;
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m2273getSizeNHjbRc() {
        return ((Size) this.size$delegate.getValue()).m1208unboximpl();
    }

    /* renamed from: setSize-uvyYCjk, reason: not valid java name */
    public final void m2274setSizeuvyYCjk(long j) {
        this.size$delegate.setValue(Size.m1198boximpl(j));
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        AndroidTextPaint_androidKt.setAlpha(textPaint, this.alpha);
        textPaint.setShader((Shader) this.shaderState.getValue());
    }
}
