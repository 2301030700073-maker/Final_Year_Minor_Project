package androidx.compose.ui.graphics.drawscope;

import android.graphics.Paint;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CanvasDrawScope implements DrawScope {
    public final ProcessFinisher drawContext;
    public final DrawParams drawParams;
    public AndroidPaint fillPaint;
    public AndroidPaint strokePaint;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DrawParams {
        public Canvas canvas;
        public Density density;
        public LayoutDirection layoutDirection;
        public long size;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawParams)) {
                return false;
            }
            DrawParams drawParams = (DrawParams) obj;
            return Intrinsics.areEqual(this.density, drawParams.density) && this.layoutDirection == drawParams.layoutDirection && Intrinsics.areEqual(this.canvas, drawParams.canvas) && Size.m206equalsimpl0(this.size, drawParams.size);
        }

        public final int hashCode() {
            int hashCode = (this.canvas.hashCode() + ((this.layoutDirection.hashCode() + (this.density.hashCode() * 31)) * 31)) * 31;
            long j = this.size;
            return ((int) (j ^ (j >>> 32))) + hashCode;
        }

        public final String toString() {
            return "DrawParams(density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", canvas=" + this.canvas + ", size=" + ((Object) Size.m209toStringimpl(this.size)) + ')';
        }
    }

    public CanvasDrawScope() {
        DrawParams drawParams = new DrawParams();
        drawParams.density = DrawStyle.DefaultDensity;
        drawParams.layoutDirection = LayoutDirection.Ltr;
        drawParams.canvas = EmptyCanvas.INSTANCE;
        drawParams.size = 0L;
        this.drawParams = drawParams;
        this.drawContext = new ProcessFinisher(this);
    }

    /* renamed from: configurePaint-2qPWKa0$default, reason: not valid java name */
    public static AndroidPaint m259configurePaint2qPWKa0$default(CanvasDrawScope canvasDrawScope, long j, DrawStyle drawStyle, int i) {
        AndroidPaint selectPaint = canvasDrawScope.selectPaint(drawStyle);
        Paint paint = selectPaint.internalPaint;
        if (!Color.m244equalsimpl0(Brush.Color(paint.getColor()), j)) {
            selectPaint.m220setColor8_81llA(j);
        }
        if (selectPaint.internalShader != null) {
            selectPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(selectPaint.internalColorFilter, null)) {
            selectPaint.setColorFilter(null);
        }
        if (selectPaint._blendMode != i) {
            selectPaint.m219setBlendModes9anfk8(i);
        }
        if (paint.isFilterBitmap()) {
            return selectPaint;
        }
        paint.setFilterBitmap(true);
        return selectPaint;
    }

    /* renamed from: configurePaint-swdJneE, reason: not valid java name */
    public final AndroidPaint m260configurePaintswdJneE(Brush brush, DrawStyle drawStyle, float f, BlendModeColorFilter blendModeColorFilter, int i, int i2) {
        AndroidPaint selectPaint = selectPaint(drawStyle);
        if (brush != null) {
            brush.mo238applyToPq9zytI(f, this.drawContext.m729getSizeNHjbRc(), selectPaint);
        } else {
            Paint paint = selectPaint.internalPaint;
            if (selectPaint.internalShader != null) {
                selectPaint.setShader(null);
            }
            long Color = Brush.Color(paint.getColor());
            long j = Color.Black;
            if (!Color.m244equalsimpl0(Color, j)) {
                selectPaint.m220setColor8_81llA(j);
            }
            if (paint.getAlpha() / 255.0f != f) {
                selectPaint.setAlpha(f);
            }
        }
        Paint paint2 = selectPaint.internalPaint;
        if (!Intrinsics.areEqual(selectPaint.internalColorFilter, blendModeColorFilter)) {
            selectPaint.setColorFilter(blendModeColorFilter);
        }
        if (selectPaint._blendMode != i) {
            selectPaint.m219setBlendModes9anfk8(i);
        }
        if (paint2.isFilterBitmap() == i2) {
            return selectPaint;
        }
        paint2.setFilterBitmap(true ^ (i2 == 0));
        return selectPaint;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs, reason: not valid java name */
    public final void mo261drawImageAZ2fEMs(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.drawParams.canvas.mo215drawImageRectHPBpro0(androidImageBitmap, j, j2, j3, m260configurePaintswdJneE(null, Fill.INSTANCE, f, blendModeColorFilter, 3, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0, reason: not valid java name */
    public final void mo262drawLineNGM6Ib0(long j, long j2, long j3, float f) {
        Canvas canvas = this.drawParams.canvas;
        AndroidPaint androidPaint = this.strokePaint;
        if (androidPaint == null) {
            androidPaint = Brush.Paint();
            androidPaint.m223setStylek9PVt8s(1);
            this.strokePaint = androidPaint;
        }
        Paint paint = androidPaint.internalPaint;
        if (!Color.m244equalsimpl0(Brush.Color(paint.getColor()), j)) {
            androidPaint.m220setColor8_81llA(j);
        }
        if (androidPaint.internalShader != null) {
            androidPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(androidPaint.internalColorFilter, null)) {
            androidPaint.setColorFilter(null);
        }
        if (androidPaint._blendMode != 3) {
            androidPaint.m219setBlendModes9anfk8(3);
        }
        if (paint.getStrokeWidth() != f) {
            paint.setStrokeWidth(f);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            paint.setStrokeMiter(4.0f);
        }
        if (androidPaint.m217getStrokeCapKaPHkGw() != 0) {
            androidPaint.m221setStrokeCapBeK7IIE(0);
        }
        if (androidPaint.m218getStrokeJoinLxFBmk8() != 0) {
            androidPaint.m222setStrokeJoinWw9F2mQ(0);
        }
        if (!paint.isFilterBitmap()) {
            paint.setFilterBitmap(true);
        }
        canvas.mo216drawLineWko1d7g(j2, j3, androidPaint);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU, reason: not valid java name */
    public final void mo263drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.drawParams.canvas.drawPath(androidPath, m260configurePaintswdJneE(brush, drawStyle, f, null, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0, reason: not valid java name */
    public final void mo264drawRectnJ9OG0(long j, long j2, long j3, DrawStyle drawStyle, int i) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawRect(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i3), m259configurePaint2qPWKa0$default(this, j, drawStyle, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long mo265getCenterF1C5BW0() {
        return RangesKt.m668getCenteruvyYCjk(this.drawContext.m729getSizeNHjbRc());
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.drawParams.density.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final ProcessFinisher getDrawContext() {
        return this.drawContext;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.drawParams.density.getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final LayoutDirection getLayoutDirection() {
        return this.drawParams.layoutDirection;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long mo266getSizeNHjbRc() {
        return this.drawContext.m729getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo57roundToPxR2X_6o(long j) {
        return Math.round(mo62toPxR2X_6o(j));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo58roundToPx0680j_4(float f) {
        return Owner.CC.m357$default$roundToPx0680j_4(this, f);
    }

    public final AndroidPaint selectPaint(DrawStyle drawStyle) {
        if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
            AndroidPaint androidPaint = this.fillPaint;
            if (androidPaint != null) {
                return androidPaint;
            }
            AndroidPaint Paint = Brush.Paint();
            Paint.m223setStylek9PVt8s(0);
            this.fillPaint = Paint;
            return Paint;
        }
        if (!(drawStyle instanceof Stroke)) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        AndroidPaint androidPaint2 = this.strokePaint;
        if (androidPaint2 == null) {
            androidPaint2 = Brush.Paint();
            androidPaint2.m223setStylek9PVt8s(1);
            this.strokePaint = androidPaint2;
        }
        Paint paint = androidPaint2.internalPaint;
        float strokeWidth = paint.getStrokeWidth();
        Stroke stroke = (Stroke) drawStyle;
        float f = stroke.width;
        if (strokeWidth != f) {
            paint.setStrokeWidth(f);
        }
        int m217getStrokeCapKaPHkGw = androidPaint2.m217getStrokeCapKaPHkGw();
        int i = stroke.cap;
        if (m217getStrokeCapKaPHkGw != i) {
            androidPaint2.m221setStrokeCapBeK7IIE(i);
        }
        float strokeMiter = paint.getStrokeMiter();
        float f2 = stroke.miter;
        if (strokeMiter != f2) {
            paint.setStrokeMiter(f2);
        }
        int m218getStrokeJoinLxFBmk8 = androidPaint2.m218getStrokeJoinLxFBmk8();
        int i2 = stroke.join;
        if (m218getStrokeJoinLxFBmk8 == i2) {
            return androidPaint2;
        }
        androidPaint2.m222setStrokeJoinWw9F2mQ(i2);
        return androidPaint2;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo59toDpGaN1DYA(long j) {
        return Owner.CC.m358$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo61toDpu2uoSUM(int i) {
        return i / getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo62toPxR2X_6o(long j) {
        return Owner.CC.m360$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo63toPx0680j_4(float f) {
        return getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo64toSizeXkaWNTQ(long j) {
        return Owner.CC.m361$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo65toSpkPz2Gy4(float f) {
        return Owner.CC.m362$default$toSp0xMU5do(this, mo60toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo60toDpu2uoSUM(float f) {
        return f / getDensity();
    }
}
