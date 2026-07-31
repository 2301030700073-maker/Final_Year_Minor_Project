package androidx.compose.ui.graphics.drawscope;

import android.graphics.Paint;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CanvasDrawScope implements DrawScope {
    public final SVG drawContext;
    public final DrawParams drawParams;
    public AndroidPaint fillPaint;
    public AndroidPaint strokePaint;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            return Intrinsics.areEqual(this.density, drawParams.density) && this.layoutDirection == drawParams.layoutDirection && Intrinsics.areEqual(this.canvas, drawParams.canvas) && Size.m394equalsimpl0(this.size, drawParams.size);
        }

        public final int hashCode() {
            int hashCode = (this.canvas.hashCode() + ((this.layoutDirection.hashCode() + (this.density.hashCode() * 31)) * 31)) * 31;
            long j = this.size;
            return ((int) (j ^ (j >>> 32))) + hashCode;
        }

        public final String toString() {
            return "DrawParams(density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", canvas=" + this.canvas + ", size=" + ((Object) Size.m399toStringimpl(this.size)) + ')';
        }
    }

    public CanvasDrawScope() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        DrawParams drawParams = new DrawParams();
        drawParams.density = DrawContextKt.DefaultDensity;
        drawParams.layoutDirection = layoutDirection;
        drawParams.canvas = EmptyCanvas.INSTANCE;
        drawParams.size = 0L;
        this.drawParams = drawParams;
        this.drawContext = new SVG(this);
    }

    /* renamed from: configurePaint-2qPWKa0$default, reason: not valid java name */
    public static AndroidPaint m463configurePaint2qPWKa0$default(CanvasDrawScope canvasDrawScope, long j, DrawStyle drawStyle, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        AndroidPaint selectPaint = canvasDrawScope.selectPaint(drawStyle);
        if (f != 1.0f) {
            j = ColorKt.Color(Color.m433getRedimpl(j), Color.m432getGreenimpl(j), Color.m430getBlueimpl(j), Color.m429getAlphaimpl(j) * f, Color.m431getColorSpaceimpl(j));
        }
        Paint paint = selectPaint.internalPaint;
        long Color = ColorKt.Color(paint.getColor());
        int i2 = Color.$r8$clinit;
        if (!ULong.m820equalsimpl0(Color, j)) {
            selectPaint.m411setColor8_81llA(j);
        }
        if (selectPaint.internalShader != null) {
            selectPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(selectPaint.internalColorFilter, blendModeColorFilter)) {
            selectPaint.setColorFilter(blendModeColorFilter);
        }
        if (selectPaint._blendMode != i) {
            selectPaint.m410setBlendModes9anfk8(i);
        }
        if (paint.isFilterBitmap()) {
            return selectPaint;
        }
        selectPaint.m412setFilterQualityvDHp3xo(1);
        return selectPaint;
    }

    /* renamed from: configurePaint-swdJneE, reason: not valid java name */
    public final AndroidPaint m464configurePaintswdJneE(Brush brush, DrawStyle drawStyle, float f, BlendModeColorFilter blendModeColorFilter, int i, int i2) {
        AndroidPaint selectPaint = selectPaint(drawStyle);
        if (brush != null) {
            brush.mo421applyToPq9zytI(f, this.drawContext.m796getSizeNHjbRc(), selectPaint);
        } else {
            Paint paint = selectPaint.internalPaint;
            if (selectPaint.internalShader != null) {
                selectPaint.setShader(null);
            }
            long Color = ColorKt.Color(paint.getColor());
            long j = Color.Black;
            if (!ULong.m820equalsimpl0(Color, j)) {
                selectPaint.m411setColor8_81llA(j);
            }
            if (paint.getAlpha() / 255.0f != f) {
                selectPaint.setAlpha(f);
            }
        }
        if (!Intrinsics.areEqual(selectPaint.internalColorFilter, blendModeColorFilter)) {
            selectPaint.setColorFilter(blendModeColorFilter);
        }
        if (selectPaint._blendMode != i) {
            selectPaint.m410setBlendModes9anfk8(i);
        }
        if (selectPaint.internalPaint.isFilterBitmap() == i2) {
            return selectPaint;
        }
        selectPaint.m412setFilterQualityvDHp3xo(i2);
        return selectPaint;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo, reason: not valid java name */
    public final void mo465drawArcyD3GUKo(long j, float f, float f2, long j2, long j3, float f3, DrawStyle drawStyle) {
        int i = (int) (j2 >> 32);
        int i2 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawArc(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i2), f, f2, m463configurePaint2qPWKa0$default(this, j, drawStyle, f3, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg, reason: not valid java name */
    public final void mo466drawCircleVaOC9Bg(long j, float f, long j2, DrawStyle drawStyle) {
        this.drawParams.canvas.mo404drawCircle9KIMszo(f, j2, m463configurePaint2qPWKa0$default(this, j, drawStyle, 1.0f, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs, reason: not valid java name */
    public final void mo467drawImageAZ2fEMs(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.drawParams.canvas.mo406drawImageRectHPBpro0(androidImageBitmap, j, j2, j3, m464configurePaintswdJneE(null, Fill.INSTANCE, f, blendModeColorFilter, 3, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8, reason: not valid java name */
    public final void mo468drawImagegbVJVH8(AndroidImageBitmap androidImageBitmap, long j, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.drawParams.canvas.mo405drawImaged4ec7I(androidImageBitmap, j, m464configurePaintswdJneE(null, Fill.INSTANCE, f, blendModeColorFilter, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0, reason: not valid java name */
    public final void mo469drawLineNGM6Ib0(long j, long j2, long j3, float f, int i) {
        Canvas canvas = this.drawParams.canvas;
        AndroidPaint androidPaint = this.strokePaint;
        if (androidPaint == null) {
            androidPaint = ColorKt.Paint();
            androidPaint.m415setStylek9PVt8s(1);
            this.strokePaint = androidPaint;
        }
        Paint paint = androidPaint.internalPaint;
        long Color = ColorKt.Color(paint.getColor());
        int i2 = Color.$r8$clinit;
        if (!ULong.m820equalsimpl0(Color, j)) {
            androidPaint.m411setColor8_81llA(j);
        }
        if (androidPaint.internalShader != null) {
            androidPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(androidPaint.internalColorFilter, null)) {
            androidPaint.setColorFilter(null);
        }
        if (androidPaint._blendMode != 3) {
            androidPaint.m410setBlendModes9anfk8(3);
        }
        if (paint.getStrokeWidth() != f) {
            androidPaint.setStrokeWidth(f);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            paint.setStrokeMiter(4.0f);
        }
        if (androidPaint.m408getStrokeCapKaPHkGw() != i) {
            androidPaint.m413setStrokeCapBeK7IIE(i);
        }
        if (androidPaint.m409getStrokeJoinLxFBmk8() != 0) {
            androidPaint.m414setStrokeJoinWw9F2mQ(0);
        }
        if (!paint.isFilterBitmap()) {
            androidPaint.m412setFilterQualityvDHp3xo(1);
        }
        canvas.mo407drawLineWko1d7g(j2, j3, androidPaint);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU, reason: not valid java name */
    public final void mo470drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.drawParams.canvas.drawPath(androidPath, m464configurePaintswdJneE(brush, drawStyle, f, null, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI, reason: not valid java name */
    public final void mo471drawPathLG529CI(AndroidPath androidPath, long j, float f, DrawStyle drawStyle) {
        this.drawParams.canvas.drawPath(androidPath, m463configurePaint2qPWKa0$default(this, j, drawStyle, f, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w, reason: not valid java name */
    public final void mo472drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, BlendModeColorFilter blendModeColorFilter, int i) {
        int i2 = (int) (j >> 32);
        int i3 = (int) (j & 4294967295L);
        this.drawParams.canvas.drawRect(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (4294967295L & j2)) + Float.intBitsToFloat(i3), m464configurePaintswdJneE(brush, drawStyle, f, blendModeColorFilter, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0, reason: not valid java name */
    public final void mo473drawRectnJ9OG0(long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawRect(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i3), m463configurePaint2qPWKa0$default(this, j, Fill.INSTANCE, f, blendModeColorFilter, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA, reason: not valid java name */
    public final void mo474drawRoundRectuAw5IA(long j, long j2, long j3, long j4) {
        int i = (int) (j2 >> 32);
        int i2 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawRoundRect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & 4294967295L)), m463configurePaint2qPWKa0$default(this, j, Fill.INSTANCE, 1.0f, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long mo475getCenterF1C5BW0() {
        return Room.m759getCenteruvyYCjk(this.drawContext.m796getSizeNHjbRc());
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.drawParams.density.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final SVG getDrawContext() {
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
    public final long mo476getSizeNHjbRc() {
        return this.drawContext.m796getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo80roundToPxR2X_6o(long j) {
        return Math.round(mo86toPxR2X_6o(j));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo81roundToPx0680j_4(float f) {
        return Modifier.CC.m334$default$roundToPx0680j_4(this, f);
    }

    public final AndroidPaint selectPaint(DrawStyle drawStyle) {
        if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
            AndroidPaint androidPaint = this.fillPaint;
            if (androidPaint != null) {
                return androidPaint;
            }
            AndroidPaint Paint = ColorKt.Paint();
            Paint.m415setStylek9PVt8s(0);
            this.fillPaint = Paint;
            return Paint;
        }
        if (!(drawStyle instanceof Stroke)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        AndroidPaint androidPaint2 = this.strokePaint;
        if (androidPaint2 == null) {
            androidPaint2 = ColorKt.Paint();
            androidPaint2.m415setStylek9PVt8s(1);
            this.strokePaint = androidPaint2;
        }
        Paint paint = androidPaint2.internalPaint;
        float strokeWidth = paint.getStrokeWidth();
        Stroke stroke = (Stroke) drawStyle;
        float f = stroke.width;
        if (strokeWidth != f) {
            androidPaint2.setStrokeWidth(f);
        }
        int m408getStrokeCapKaPHkGw = androidPaint2.m408getStrokeCapKaPHkGw();
        int i = stroke.cap;
        if (m408getStrokeCapKaPHkGw != i) {
            androidPaint2.m413setStrokeCapBeK7IIE(i);
        }
        float strokeMiter = paint.getStrokeMiter();
        float f2 = stroke.miter;
        if (strokeMiter != f2) {
            paint.setStrokeMiter(f2);
        }
        int m409getStrokeJoinLxFBmk8 = androidPaint2.m409getStrokeJoinLxFBmk8();
        int i2 = stroke.join;
        if (m409getStrokeJoinLxFBmk8 == i2) {
            return androidPaint2;
        }
        androidPaint2.m414setStrokeJoinWw9F2mQ(i2);
        return androidPaint2;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo82toDpGaN1DYA(long j) {
        return Modifier.CC.m335$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo84toDpu2uoSUM(int i) {
        return i / getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final /* synthetic */ long mo85toDpSizekrfVVM(long j) {
        return Modifier.CC.m336$default$toDpSizekrfVVM(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo86toPxR2X_6o(long j) {
        return Modifier.CC.m337$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo87toPx0680j_4(float f) {
        return getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo88toSizeXkaWNTQ(long j) {
        return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo89toSpkPz2Gy4(float f) {
        return Modifier.CC.m339$default$toSp0xMU5do(this, mo83toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo83toDpu2uoSUM(float f) {
        return f / getDensity();
    }
}
