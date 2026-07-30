package androidx.compose.ui.graphics;

import android.graphics.Shader;

/* compiled from: Brush.kt */
/* loaded from: classes.dex */
public abstract class BrushKt {
    public static final ShaderBrush ShaderBrush(final Shader shader) {
        return new ShaderBrush() { // from class: androidx.compose.ui.graphics.BrushKt$ShaderBrush$1
            @Override // androidx.compose.ui.graphics.ShaderBrush
            /* renamed from: createShader-uvyYCjk, reason: not valid java name */
            public Shader mo1289createShaderuvyYCjk(long j) {
                return shader;
            }
        };
    }
}
