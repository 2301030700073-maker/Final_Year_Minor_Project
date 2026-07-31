package androidx.compose.ui.graphics.drawscope;

import android.graphics.Paint;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CanvasDrawScope implements DrawScope {
    public final MenuHostHelper drawContext;
    public final DrawParams drawParams;
    public AndroidPaint fillPaint;
    public AndroidPaint strokePaint;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            return Intrinsics.areEqual(this.density, drawParams.density) && this.layoutDirection == drawParams.layoutDirection && Intrinsics.areEqual(this.canvas, drawParams.canvas) && Size.m449equalsimpl0(this.size, drawParams.size);
        }

        public final int hashCode() {
            int hashCode = (this.canvas.hashCode() + ((this.layoutDirection.hashCode() + (this.density.hashCode() * 31)) * 31)) * 31;
            long j = this.size;
            return ((int) (j ^ (j >>> 32))) + hashCode;
        }

        public final String toString() {
            return "DrawParams(density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", canvas=" + this.canvas + ", size=" + ((Object) Size.m452toStringimpl(this.size)) + ')';
        }
    }

    public CanvasDrawScope() {
        DrawParams drawParams = new DrawParams();
        drawParams.density = DrawContextKt.DefaultDensity;
        drawParams.layoutDirection = LayoutDirection.Ltr;
        drawParams.canvas = EmptyCanvas.INSTANCE;
        drawParams.size = 0L;
        this.drawParams = drawParams;
        this.drawContext = new MenuHostHelper(this);
    }

    /* renamed from: configurePaint-2qPWKa0$default, reason: not valid java name */
    public static AndroidPaint m521configurePaint2qPWKa0$default(CanvasDrawScope canvasDrawScope, long j, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i) {
        AndroidPaint selectPaint = canvasDrawScope.selectPaint(drawStyle);
        if (f != 1.0f) {
            j = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), Color.m483getAlphaimpl(j) * f, Color.m485getColorSpaceimpl(j));
        }
        Paint paint = selectPaint.internalPaint;
        if (!Color.m482equalsimpl0(ColorKt.Color(paint.getColor()), j)) {
            selectPaint.m464setColor8_81llA(j);
        }
        if (selectPaint.internalShader != null) {
            selectPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(selectPaint.internalColorFilter, colorFilter)) {
            selectPaint.setColorFilter(colorFilter);
        }
        if (selectPaint._blendMode != i) {
            selectPaint.m463setBlendModes9anfk8(i);
        }
        if (paint.isFilterBitmap()) {
            return selectPaint;
        }
        selectPaint.m465setFilterQualityvDHp3xo(1);
        return selectPaint;
    }

    /* renamed from: configurePaint-swdJneE, reason: not valid java name */
    public final AndroidPaint m522configurePaintswdJneE(Brush brush, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2) {
        AndroidPaint selectPaint = selectPaint(drawStyle);
        if (brush != null) {
            brush.mo475applyToPq9zytI(f, this.drawContext.m795getSizeNHjbRc(), selectPaint);
        } else {
            Paint paint = selectPaint.internalPaint;
            if (selectPaint.internalShader != null) {
                selectPaint.setShader(null);
            }
            long Color = ColorKt.Color(paint.getColor());
            long j = Color.Black;
            if (!Color.m482equalsimpl0(Color, j)) {
                selectPaint.m464setColor8_81llA(j);
            }
            if (paint.getAlpha() / 255.0f != f) {
                selectPaint.setAlpha(f);
            }
        }
        if (!Intrinsics.areEqual(selectPaint.internalColorFilter, colorFilter)) {
            selectPaint.setColorFilter(colorFilter);
        }
        if (selectPaint._blendMode != i) {
            selectPaint.m463setBlendModes9anfk8(i);
        }
        if (selectPaint.internalPaint.isFilterBitmap() == i2) {
            return selectPaint;
        }
        selectPaint.m465setFilterQualityvDHp3xo(i2);
        return selectPaint;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo, reason: not valid java name */
    public final void mo523drawArcyD3GUKo(long j, float f, float f2, long j2, long j3, float f3, Stroke stroke) {
        int i = (int) (j2 >> 32);
        int i2 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawArc(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i2), f, f2, m521configurePaint2qPWKa0$default(this, j, stroke, f3, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg, reason: not valid java name */
    public final void mo524drawCircleVaOC9Bg(long j, float f, long j2, DrawStyle drawStyle) {
        this.drawParams.canvas.mo457drawCircle9KIMszo(f, j2, m521configurePaint2qPWKa0$default(this, j, drawStyle, 1.0f, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs, reason: not valid java name */
    public final void mo525drawImageAZ2fEMs(ImageBitmap imageBitmap, long j, long j2, long j3, float f, ColorFilter colorFilter, int i) {
        this.drawParams.canvas.mo459drawImageRectHPBpro0(imageBitmap, j, j2, j3, m522configurePaintswdJneE(null, Fill.INSTANCE, f, colorFilter, 3, i));
    }

    /* renamed from: drawImage-gbVJVH8, reason: not valid java name */
    public final void m526drawImagegbVJVH8(ImageBitmap imageBitmap, BlendModeColorFilter blendModeColorFilter) {
        this.drawParams.canvas.mo458drawImaged4ec7I(imageBitmap, m522configurePaintswdJneE(null, Fill.INSTANCE, 1.0f, blendModeColorFilter, 3, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0, reason: not valid java name */
    public final void mo527drawLineNGM6Ib0(long j, long j2, long j3, float f) {
        Canvas canvas = this.drawParams.canvas;
        AndroidPaint androidPaint = this.strokePaint;
        if (androidPaint == null) {
            androidPaint = ColorKt.Paint();
            androidPaint.m468setStylek9PVt8s(1);
            this.strokePaint = androidPaint;
        }
        Paint paint = androidPaint.internalPaint;
        if (!Color.m482equalsimpl0(ColorKt.Color(paint.getColor()), j)) {
            androidPaint.m464setColor8_81llA(j);
        }
        if (androidPaint.internalShader != null) {
            androidPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(androidPaint.internalColorFilter, null)) {
            androidPaint.setColorFilter(null);
        }
        if (androidPaint._blendMode != 3) {
            androidPaint.m463setBlendModes9anfk8(3);
        }
        if (paint.getStrokeWidth() != f) {
            androidPaint.setStrokeWidth(f);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            paint.setStrokeMiter(4.0f);
        }
        if (androidPaint.m461getStrokeCapKaPHkGw() != 0) {
            androidPaint.m466setStrokeCapBeK7IIE(0);
        }
        if (androidPaint.m462getStrokeJoinLxFBmk8() != 0) {
            androidPaint.m467setStrokeJoinWw9F2mQ(0);
        }
        if (!paint.isFilterBitmap()) {
            androidPaint.m465setFilterQualityvDHp3xo(1);
        }
        canvas.mo460drawLineWko1d7g(j2, j3, androidPaint);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU, reason: not valid java name */
    public final void mo528drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.drawParams.canvas.drawPath(androidPath, m522configurePaintswdJneE(brush, drawStyle, f, null, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI, reason: not valid java name */
    public final void mo529drawPathLG529CI(AndroidPath androidPath, long j, float f, DrawStyle drawStyle) {
        this.drawParams.canvas.drawPath(androidPath, m521configurePaint2qPWKa0$default(this, j, drawStyle, f, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0, reason: not valid java name */
    public final void mo530drawRectnJ9OG0(long j, long j2, long j3, float f, ColorFilter colorFilter, int i) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawRect(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i3), m521configurePaint2qPWKa0$default(this, j, Fill.INSTANCE, f, colorFilter, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ, reason: not valid java name */
    public final void mo531drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        this.drawParams.canvas.drawRoundRect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), m522configurePaintswdJneE(brush, drawStyle, f, null, 3, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA, reason: not valid java name */
    public final void mo532drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle drawStyle) {
        int i = (int) (j2 >> 32);
        int i2 = (int) (j2 & 4294967295L);
        this.drawParams.canvas.drawRoundRect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & 4294967295L)), m521configurePaint2qPWKa0$default(this, j, drawStyle, 1.0f, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long mo533getCenterF1C5BW0() {
        return DebugUtils.m788getCenteruvyYCjk(this.drawContext.m795getSizeNHjbRc());
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.drawParams.density.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final MenuHostHelper getDrawContext() {
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
    public final long mo534getSizeNHjbRc() {
        return this.drawContext.m795getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo171roundToPx0680j_4(float f) {
        return Modifier.CC.m388$default$roundToPx0680j_4(this, f);
    }

    public final AndroidPaint selectPaint(DrawStyle drawStyle) {
        if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
            AndroidPaint androidPaint = this.fillPaint;
            if (androidPaint != null) {
                return androidPaint;
            }
            AndroidPaint Paint = ColorKt.Paint();
            Paint.m468setStylek9PVt8s(0);
            this.fillPaint = Paint;
            return Paint;
        }
        if (!(drawStyle instanceof Stroke)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        AndroidPaint androidPaint2 = this.strokePaint;
        if (androidPaint2 == null) {
            androidPaint2 = ColorKt.Paint();
            androidPaint2.m468setStylek9PVt8s(1);
            this.strokePaint = androidPaint2;
        }
        Paint paint = androidPaint2.internalPaint;
        float strokeWidth = paint.getStrokeWidth();
        Stroke stroke = (Stroke) drawStyle;
        float f = stroke.width;
        if (strokeWidth != f) {
            androidPaint2.setStrokeWidth(f);
        }
        int m461getStrokeCapKaPHkGw = androidPaint2.m461getStrokeCapKaPHkGw();
        int i = stroke.cap;
        if (m461getStrokeCapKaPHkGw != i) {
            androidPaint2.m466setStrokeCapBeK7IIE(i);
        }
        float strokeMiter = paint.getStrokeMiter();
        float f2 = stroke.miter;
        if (strokeMiter != f2) {
            paint.setStrokeMiter(f2);
        }
        int m462getStrokeJoinLxFBmk8 = androidPaint2.m462getStrokeJoinLxFBmk8();
        int i2 = stroke.join;
        if (m462getStrokeJoinLxFBmk8 == i2) {
            return androidPaint2;
        }
        androidPaint2.m467setStrokeJoinWw9F2mQ(i2);
        return androidPaint2;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo172toDpGaN1DYA(long j) {
        return Modifier.CC.m389$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo174toDpu2uoSUM(int i) {
        return i / getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final /* synthetic */ long mo175toDpSizekrfVVM(long j) {
        return Modifier.CC.m390$default$toDpSizekrfVVM(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo176toPxR2X_6o(long j) {
        return Modifier.CC.m391$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo177toPx0680j_4(float f) {
        return getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo178toSizeXkaWNTQ(long j) {
        return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public final /* synthetic */ long mo179toSp0xMU5do(float f) {
        return Modifier.CC.m393$default$toSp0xMU5do(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo180toSpkPz2Gy4(float f) {
        return mo179toSp0xMU5do(mo173toDpu2uoSUM(f));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo173toDpu2uoSUM(float f) {
        return f / getDensity();
    }
}
