package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Path;

/* compiled from: CanvasDrawScope.kt */
/* loaded from: classes.dex */
public abstract class CanvasDrawScopeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawTransform asDrawTransform(final DrawContext drawContext) {
        return new DrawTransform() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1
            /* renamed from: getSize-NH-jbRc, reason: not valid java name */
            public long m1499getSizeNHjbRc() {
                return DrawContext.this.mo1495getSizeNHjbRc();
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void inset(float f, float f2, float f3, float f4) {
                Canvas canvas = DrawContext.this.getCanvas();
                DrawContext drawContext2 = DrawContext.this;
                long Size = SizeKt.Size(Size.m1204getWidthimpl(m1499getSizeNHjbRc()) - (f3 + f), Size.m1202getHeightimpl(m1499getSizeNHjbRc()) - (f4 + f2));
                if (!(Size.m1204getWidthimpl(Size) >= 0.0f && Size.m1202getHeightimpl(Size) >= 0.0f)) {
                    InlineClassHelperKt.throwIllegalArgumentException("Width and height must be greater than or equal to zero");
                }
                drawContext2.mo1496setSizeuvyYCjk(Size);
                canvas.translate(f, f2);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: clipRect-N_I0leg, reason: not valid java name */
            public void mo1498clipRectN_I0leg(float f, float f2, float f3, float f4, int i) {
                DrawContext.this.getCanvas().mo1216clipRectN_I0leg(f, f2, f3, f4, i);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: clipPath-mtrdD-E, reason: not valid java name */
            public void mo1497clipPathmtrdDE(Path path, int i) {
                DrawContext.this.getCanvas().mo1215clipPathmtrdDE(path, i);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void translate(float f, float f2) {
                DrawContext.this.getCanvas().translate(f, f2);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: rotate-Uv8p0NA, reason: not valid java name */
            public void mo1500rotateUv8p0NA(float f, long j) {
                Canvas canvas = DrawContext.this.getCanvas();
                canvas.translate(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j));
                canvas.rotate(f);
                canvas.translate(-Offset.m1167getXimpl(j), -Offset.m1168getYimpl(j));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: scale-0AR0LA0, reason: not valid java name */
            public void mo1501scale0AR0LA0(float f, float f2, long j) {
                Canvas canvas = DrawContext.this.getCanvas();
                canvas.translate(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j));
                canvas.scale(f, f2);
                canvas.translate(-Offset.m1167getXimpl(j), -Offset.m1168getYimpl(j));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* renamed from: transform-58bKbWc, reason: not valid java name */
            public void mo1502transform58bKbWc(float[] fArr) {
                DrawContext.this.getCanvas().mo1218concat58bKbWc(fArr);
            }
        };
    }
}
