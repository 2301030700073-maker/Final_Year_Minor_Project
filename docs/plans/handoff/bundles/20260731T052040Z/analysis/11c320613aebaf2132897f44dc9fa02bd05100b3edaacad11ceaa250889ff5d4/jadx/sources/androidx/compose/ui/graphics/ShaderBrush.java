package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.geometry.Size;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ShaderBrush extends Brush {
    public long createdSize = 9205357640488583168L;
    public PopupMenu$1 internalTransformShader;

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo238applyToPq9zytI(float f, long j, AndroidPaint androidPaint) {
        PopupMenu$1 popupMenu$1 = this.internalTransformShader;
        if (popupMenu$1 == null || !Size.m206equalsimpl0(this.createdSize, j)) {
            if (Size.m208isEmptyimpl(j)) {
                this.internalTransformShader = null;
                this.createdSize = 9205357640488583168L;
                popupMenu$1 = null;
            } else {
                popupMenu$1 = this.internalTransformShader;
                if (popupMenu$1 == null) {
                    popupMenu$1 = new PopupMenu$1(22);
                    this.internalTransformShader = popupMenu$1;
                }
                popupMenu$1.this$0 = mo251createShaderuvyYCjk(j);
                this.internalTransformShader = popupMenu$1;
                this.createdSize = j;
            }
        }
        long Color = Brush.Color(androidPaint.internalPaint.getColor());
        long j2 = Color.Black;
        if (!Color.m244equalsimpl0(Color, j2)) {
            androidPaint.m220setColor8_81llA(j2);
        }
        if (!Intrinsics.areEqual(androidPaint.internalShader, popupMenu$1 != null ? (Shader) popupMenu$1.this$0 : null)) {
            androidPaint.setShader(popupMenu$1 != null ? (Shader) popupMenu$1.this$0 : null);
        }
        if (r4.getAlpha() / 255.0f == f) {
            return;
        }
        androidPaint.setAlpha(f);
    }

    /* renamed from: createShader-uvyYCjk */
    public abstract Shader mo251createShaderuvyYCjk(long j);
}
