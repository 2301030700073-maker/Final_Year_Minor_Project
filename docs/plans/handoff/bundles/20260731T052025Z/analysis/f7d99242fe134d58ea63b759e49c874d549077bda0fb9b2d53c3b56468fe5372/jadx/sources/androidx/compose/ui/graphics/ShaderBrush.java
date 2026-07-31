package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.camera.view.PreviewView;
import androidx.compose.ui.geometry.Size;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ShaderBrush extends Brush {
    public long createdSize = 9205357640488583168L;
    public PreviewView.AnonymousClass1 internalTransformShader;

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo475applyToPq9zytI(float f, long j, AndroidPaint androidPaint) {
        PreviewView.AnonymousClass1 anonymousClass1 = this.internalTransformShader;
        if (anonymousClass1 == null || !Size.m449equalsimpl0(this.createdSize, j)) {
            if (Size.m451isEmptyimpl(j)) {
                this.internalTransformShader = null;
                this.createdSize = 9205357640488583168L;
                anonymousClass1 = null;
            } else {
                anonymousClass1 = this.internalTransformShader;
                if (anonymousClass1 == null) {
                    anonymousClass1 = new PreviewView.AnonymousClass1(21, false);
                    this.internalTransformShader = anonymousClass1;
                }
                anonymousClass1.this$0 = mo476createShaderuvyYCjk(j);
                this.internalTransformShader = anonymousClass1;
                this.createdSize = j;
            }
        }
        long Color = ColorKt.Color(androidPaint.internalPaint.getColor());
        long j2 = Color.Black;
        if (!Color.m482equalsimpl0(Color, j2)) {
            androidPaint.m464setColor8_81llA(j2);
        }
        if (!Intrinsics.areEqual(androidPaint.internalShader, anonymousClass1 != null ? (Shader) anonymousClass1.this$0 : null)) {
            androidPaint.setShader(anonymousClass1 != null ? (Shader) anonymousClass1.this$0 : null);
        }
        if (r4.getAlpha() / 255.0f == f) {
            return;
        }
        androidPaint.setAlpha(f);
    }

    /* renamed from: createShader-uvyYCjk */
    public abstract Shader mo476createShaderuvyYCjk(long j);
}
