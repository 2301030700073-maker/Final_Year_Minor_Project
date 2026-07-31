package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.geometry.Size;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ShaderBrush extends Brush {
    public long createdSize = 9205357640488583168L;
    public PopupMenu$1 internalTransformShader;

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo421applyToPq9zytI(float f, long j, AndroidPaint androidPaint) {
        PopupMenu$1 popupMenu$1 = this.internalTransformShader;
        if (popupMenu$1 == null || !Size.m394equalsimpl0(this.createdSize, j)) {
            if (Size.m398isEmptyimpl(j)) {
                this.internalTransformShader = null;
                this.createdSize = 9205357640488583168L;
                popupMenu$1 = null;
            } else {
                popupMenu$1 = this.internalTransformShader;
                if (popupMenu$1 == null) {
                    popupMenu$1 = new PopupMenu$1(28);
                    this.internalTransformShader = popupMenu$1;
                }
                popupMenu$1.this$0 = mo422createShaderuvyYCjk(j);
                this.internalTransformShader = popupMenu$1;
                this.createdSize = j;
            }
        }
        long Color = ColorKt.Color(androidPaint.internalPaint.getColor());
        long j2 = Color.Black;
        if (!ULong.m820equalsimpl0(Color, j2)) {
            androidPaint.m411setColor8_81llA(j2);
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
    public abstract Shader mo422createShaderuvyYCjk(long j);
}
