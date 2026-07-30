package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.FontScaling;
import androidx.compose.ui.unit.LayoutDirection;
import ch.qos.logback.core.CoreConstants;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CanvasDrawScope.kt */
/* loaded from: classes.dex */
public final class CanvasDrawScope implements DrawScope {
    private Paint fillPaint;
    private Paint strokePaint;
    private final DrawParams drawParams = new DrawParams(null, null, null, 0, 15, null);
    private final DrawContext drawContext = new DrawContext() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1
        private GraphicsLayer graphicsLayer;
        private final DrawTransform transform;

        {
            DrawTransform asDrawTransform;
            asDrawTransform = CanvasDrawScopeKt.asDrawTransform(this);
            this.transform = asDrawTransform;
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public Canvas getCanvas() {
            return CanvasDrawScope.this.getDrawParams().getCanvas();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public void setCanvas(Canvas canvas) {
            CanvasDrawScope.this.getDrawParams().setCanvas(canvas);
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        /* renamed from: getSize-NH-jbRc, reason: not valid java name */
        public long mo1495getSizeNHjbRc() {
            return CanvasDrawScope.this.getDrawParams().m1493getSizeNHjbRc();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        /* renamed from: setSize-uvyYCjk, reason: not valid java name */
        public void mo1496setSizeuvyYCjk(long j) {
            CanvasDrawScope.this.getDrawParams().m1494setSizeuvyYCjk(j);
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public DrawTransform getTransform() {
            return this.transform;
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public LayoutDirection getLayoutDirection() {
            return CanvasDrawScope.this.getDrawParams().getLayoutDirection();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public void setLayoutDirection(LayoutDirection layoutDirection) {
            CanvasDrawScope.this.getDrawParams().setLayoutDirection(layoutDirection);
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public Density getDensity() {
            return CanvasDrawScope.this.getDrawParams().getDensity();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public void setDensity(Density density) {
            CanvasDrawScope.this.getDrawParams().setDensity(density);
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public GraphicsLayer getGraphicsLayer() {
            return this.graphicsLayer;
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public void setGraphicsLayer(GraphicsLayer graphicsLayer) {
            this.graphicsLayer = graphicsLayer;
        }
    };

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public /* synthetic */ long mo1490getCenterF1C5BW0() {
        long m1211getCenteruvyYCjk;
        m1211getCenteruvyYCjk = SizeKt.m1211getCenteruvyYCjk(getDrawContext().mo1495getSizeNHjbRc());
        return m1211getCenteruvyYCjk;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public /* synthetic */ long mo1491getSizeNHjbRc() {
        long mo1495getSizeNHjbRc;
        mo1495getSizeNHjbRc = getDrawContext().mo1495getSizeNHjbRc();
        return mo1495getSizeNHjbRc;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public /* synthetic */ int mo207roundToPx0680j_4(float f) {
        return Density.CC.m2414$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toDp-GaN1DYA */
    public /* synthetic */ float mo208toDpGaN1DYA(long j) {
        return FontScaling.CC.m2457$default$toDpGaN1DYA(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo209toDpu2uoSUM(float f) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(f / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo210toDpu2uoSUM(int i) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(i / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public /* synthetic */ long mo211toDpSizekrfVVM(long j) {
        return Density.CC.m2417$default$toDpSizekrfVVM(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public /* synthetic */ float mo212toPxR2X_6o(long j) {
        return Density.CC.m2418$default$toPxR2X_6o(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public /* synthetic */ float mo213toPx0680j_4(float f) {
        return Density.CC.m2419$default$toPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public /* synthetic */ long mo214toSizeXkaWNTQ(long j) {
        return Density.CC.m2420$default$toSizeXkaWNTQ(this, j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toSp-0xMU5do */
    public /* synthetic */ long mo215toSp0xMU5do(float f) {
        return FontScaling.CC.m2458$default$toSp0xMU5do(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public /* synthetic */ long mo216toSpkPz2Gy4(float f) {
        long mo215toSp0xMU5do;
        mo215toSp0xMU5do = mo215toSp0xMU5do(mo209toDpu2uoSUM(f));
        return mo215toSp0xMU5do;
    }

    public final DrawParams getDrawParams() {
        return this.drawParams;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public LayoutDirection getLayoutDirection() {
        return this.drawParams.getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.drawParams.getDensity().getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.drawParams.getDensity().getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public DrawContext getDrawContext() {
        return this.drawContext;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-1RTmtNc, reason: not valid java name */
    public void mo1482drawLine1RTmtNc(Brush brush, long j, long j2, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2) {
        this.drawParams.getCanvas().mo1222drawLineWko1d7g(j, j2, m1476configureStrokePaintho4zsrM$default(this, brush, f, 4.0f, i, StrokeJoin.Companion.m1431getMiterLxFBmk8(), pathEffect, f2, colorFilter, i2, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0, reason: not valid java name */
    public void mo1483drawLineNGM6Ib0(long j, long j2, long j3, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2) {
        this.drawParams.getCanvas().mo1222drawLineWko1d7g(j2, j3, m1474configureStrokePaintQ_0CZUI$default(this, j, f, 4.0f, i, StrokeJoin.Companion.m1431getMiterLxFBmk8(), pathEffect, f2, colorFilter, i2, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w, reason: not valid java name */
    public void mo1486drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawRect(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j), Offset.m1167getXimpl(j) + Size.m1204getWidthimpl(j2), Offset.m1168getYimpl(j) + Size.m1202getHeightimpl(j2), m1472configurePaintswdJneE$default(this, brush, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0, reason: not valid java name */
    public void mo1487drawRectnJ9OG0(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawRect(Offset.m1167getXimpl(j2), Offset.m1168getYimpl(j2), Offset.m1167getXimpl(j2) + Size.m1204getWidthimpl(j3), Offset.m1168getYimpl(j2) + Size.m1202getHeightimpl(j3), m1470configurePaint2qPWKa0$default(this, j, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8, reason: not valid java name */
    public void mo1481drawImagegbVJVH8(ImageBitmap imageBitmap, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().mo1220drawImaged4ec7I(imageBitmap, j, m1472configurePaintswdJneE$default(this, null, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs, reason: not valid java name */
    public void mo1480drawImageAZ2fEMs(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2) {
        this.drawParams.getCanvas().mo1221drawImageRectHPBpro0(imageBitmap, j, j2, j3, j4, m1471configurePaintswdJneE(null, drawStyle, f, colorFilter, i, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ, reason: not valid java name */
    public void mo1488drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawRoundRect(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j), Offset.m1167getXimpl(j) + Size.m1204getWidthimpl(j2), Offset.m1168getYimpl(j) + Size.m1202getHeightimpl(j2), CornerRadius.m1153getXimpl(j3), CornerRadius.m1154getYimpl(j3), m1472configurePaintswdJneE$default(this, brush, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA, reason: not valid java name */
    public void mo1489drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawRoundRect(Offset.m1167getXimpl(j2), Offset.m1168getYimpl(j2), Offset.m1167getXimpl(j2) + Size.m1204getWidthimpl(j3), Offset.m1168getYimpl(j2) + Size.m1202getHeightimpl(j3), CornerRadius.m1153getXimpl(j4), CornerRadius.m1154getYimpl(j4), m1470configurePaint2qPWKa0$default(this, j, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg, reason: not valid java name */
    public void mo1479drawCircleVaOC9Bg(long j, float f, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().mo1219drawCircle9KIMszo(j2, f, m1470configurePaint2qPWKa0$default(this, j, drawStyle, f2, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo, reason: not valid java name */
    public void mo1478drawArcyD3GUKo(long j, float f, float f2, boolean z, long j2, long j3, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawArc(Offset.m1167getXimpl(j2), Offset.m1168getYimpl(j2), Offset.m1167getXimpl(j2) + Size.m1204getWidthimpl(j3), Offset.m1168getYimpl(j2) + Size.m1202getHeightimpl(j3), f, f2, z, m1470configurePaint2qPWKa0$default(this, j, drawStyle, f3, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI, reason: not valid java name */
    public void mo1485drawPathLG529CI(Path path, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawPath(path, m1470configurePaint2qPWKa0$default(this, j, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU, reason: not valid java name */
    public void mo1484drawPathGBMwjPU(Path path, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.drawParams.getCanvas().drawPath(path, m1472configurePaintswdJneE$default(this, brush, drawStyle, f, colorFilter, i, 0, 32, null));
    }

    private final Paint obtainFillPaint() {
        Paint paint = this.fillPaint;
        if (paint != null) {
            return paint;
        }
        Paint Paint = AndroidPaint_androidKt.Paint();
        Paint.mo1240setStylek9PVt8s(PaintingStyle.Companion.m1389getFillTiuSbCo());
        this.fillPaint = Paint;
        return Paint;
    }

    private final Paint obtainStrokePaint() {
        Paint paint = this.strokePaint;
        if (paint != null) {
            return paint;
        }
        Paint Paint = AndroidPaint_androidKt.Paint();
        Paint.mo1240setStylek9PVt8s(PaintingStyle.Companion.m1390getStrokeTiuSbCo());
        this.strokePaint = Paint;
        return Paint;
    }

    private final Paint selectPaint(DrawStyle drawStyle) {
        if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
            return obtainFillPaint();
        }
        if (drawStyle instanceof Stroke) {
            Paint obtainStrokePaint = obtainStrokePaint();
            Stroke stroke = (Stroke) drawStyle;
            if (obtainStrokePaint.getStrokeWidth() != stroke.getWidth()) {
                obtainStrokePaint.setStrokeWidth(stroke.getWidth());
            }
            if (!StrokeCap.m1420equalsimpl0(obtainStrokePaint.mo1233getStrokeCapKaPHkGw(), stroke.m1519getCapKaPHkGw())) {
                obtainStrokePaint.mo1238setStrokeCapBeK7IIE(stroke.m1519getCapKaPHkGw());
            }
            if (obtainStrokePaint.getStrokeMiterLimit() != stroke.getMiter()) {
                obtainStrokePaint.setStrokeMiterLimit(stroke.getMiter());
            }
            if (!StrokeJoin.m1427equalsimpl0(obtainStrokePaint.mo1234getStrokeJoinLxFBmk8(), stroke.m1520getJoinLxFBmk8())) {
                obtainStrokePaint.mo1239setStrokeJoinWw9F2mQ(stroke.m1520getJoinLxFBmk8());
            }
            obtainStrokePaint.getPathEffect();
            stroke.getPathEffect();
            if (!Intrinsics.areEqual((Object) null, (Object) null)) {
                stroke.getPathEffect();
                obtainStrokePaint.setPathEffect(null);
            }
            return obtainStrokePaint;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: configurePaint-swdJneE$default, reason: not valid java name */
    static /* synthetic */ Paint m1472configurePaintswdJneE$default(CanvasDrawScope canvasDrawScope, Brush brush, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2, int i3, Object obj) {
        if ((i3 & 32) != 0) {
            i2 = DrawScope.Companion.m1517getDefaultFilterQualityfv9h1I();
        }
        return canvasDrawScope.m1471configurePaintswdJneE(brush, drawStyle, f, colorFilter, i, i2);
    }

    /* renamed from: configurePaint-swdJneE, reason: not valid java name */
    private final Paint m1471configurePaintswdJneE(Brush brush, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2) {
        Paint selectPaint = selectPaint(drawStyle);
        if (brush != null) {
            brush.mo1288applyToPq9zytI(mo1491getSizeNHjbRc(), selectPaint, f);
        } else {
            if (selectPaint.getShader() != null) {
                selectPaint.setShader(null);
            }
            long mo1231getColor0d7_KjU = selectPaint.mo1231getColor0d7_KjU();
            Color.Companion companion = Color.Companion;
            if (!Color.m1304equalsimpl0(mo1231getColor0d7_KjU, companion.m1313getBlack0d7_KjU())) {
                selectPaint.mo1236setColor8_81llA(companion.m1313getBlack0d7_KjU());
            }
            if (selectPaint.getAlpha() != f) {
                selectPaint.setAlpha(f);
            }
        }
        if (!Intrinsics.areEqual(selectPaint.getColorFilter(), colorFilter)) {
            selectPaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1254equalsimpl0(selectPaint.mo1230getBlendMode0nO6VwU(), i)) {
            selectPaint.mo1235setBlendModes9anfk8(i);
        }
        if (!FilterQuality.m1334equalsimpl0(selectPaint.mo1232getFilterQualityfv9h1I(), i2)) {
            selectPaint.mo1237setFilterQualityvDHp3xo(i2);
        }
        return selectPaint;
    }

    /* renamed from: configurePaint-2qPWKa0$default, reason: not valid java name */
    static /* synthetic */ Paint m1470configurePaint2qPWKa0$default(CanvasDrawScope canvasDrawScope, long j, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2, int i3, Object obj) {
        return canvasDrawScope.m1469configurePaint2qPWKa0(j, drawStyle, f, colorFilter, i, (i3 & 32) != 0 ? DrawScope.Companion.m1517getDefaultFilterQualityfv9h1I() : i2);
    }

    /* renamed from: configurePaint-2qPWKa0, reason: not valid java name */
    private final Paint m1469configurePaint2qPWKa0(long j, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2) {
        Paint selectPaint = selectPaint(drawStyle);
        long m1477modulate5vOe2sY = m1477modulate5vOe2sY(j, f);
        if (!Color.m1304equalsimpl0(selectPaint.mo1231getColor0d7_KjU(), m1477modulate5vOe2sY)) {
            selectPaint.mo1236setColor8_81llA(m1477modulate5vOe2sY);
        }
        if (selectPaint.getShader() != null) {
            selectPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(selectPaint.getColorFilter(), colorFilter)) {
            selectPaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1254equalsimpl0(selectPaint.mo1230getBlendMode0nO6VwU(), i)) {
            selectPaint.mo1235setBlendModes9anfk8(i);
        }
        if (!FilterQuality.m1334equalsimpl0(selectPaint.mo1232getFilterQualityfv9h1I(), i2)) {
            selectPaint.mo1237setFilterQualityvDHp3xo(i2);
        }
        return selectPaint;
    }

    /* renamed from: configureStrokePaint-Q_0CZUI$default, reason: not valid java name */
    static /* synthetic */ Paint m1474configureStrokePaintQ_0CZUI$default(CanvasDrawScope canvasDrawScope, long j, float f, float f2, int i, int i2, PathEffect pathEffect, float f3, ColorFilter colorFilter, int i3, int i4, int i5, Object obj) {
        return canvasDrawScope.m1473configureStrokePaintQ_0CZUI(j, f, f2, i, i2, pathEffect, f3, colorFilter, i3, (i5 & 512) != 0 ? DrawScope.Companion.m1517getDefaultFilterQualityfv9h1I() : i4);
    }

    /* renamed from: configureStrokePaint-Q_0CZUI, reason: not valid java name */
    private final Paint m1473configureStrokePaintQ_0CZUI(long j, float f, float f2, int i, int i2, PathEffect pathEffect, float f3, ColorFilter colorFilter, int i3, int i4) {
        Paint obtainStrokePaint = obtainStrokePaint();
        long m1477modulate5vOe2sY = m1477modulate5vOe2sY(j, f3);
        if (!Color.m1304equalsimpl0(obtainStrokePaint.mo1231getColor0d7_KjU(), m1477modulate5vOe2sY)) {
            obtainStrokePaint.mo1236setColor8_81llA(m1477modulate5vOe2sY);
        }
        if (obtainStrokePaint.getShader() != null) {
            obtainStrokePaint.setShader(null);
        }
        if (!Intrinsics.areEqual(obtainStrokePaint.getColorFilter(), colorFilter)) {
            obtainStrokePaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1254equalsimpl0(obtainStrokePaint.mo1230getBlendMode0nO6VwU(), i3)) {
            obtainStrokePaint.mo1235setBlendModes9anfk8(i3);
        }
        if (obtainStrokePaint.getStrokeWidth() != f) {
            obtainStrokePaint.setStrokeWidth(f);
        }
        if (obtainStrokePaint.getStrokeMiterLimit() != f2) {
            obtainStrokePaint.setStrokeMiterLimit(f2);
        }
        if (!StrokeCap.m1420equalsimpl0(obtainStrokePaint.mo1233getStrokeCapKaPHkGw(), i)) {
            obtainStrokePaint.mo1238setStrokeCapBeK7IIE(i);
        }
        if (!StrokeJoin.m1427equalsimpl0(obtainStrokePaint.mo1234getStrokeJoinLxFBmk8(), i2)) {
            obtainStrokePaint.mo1239setStrokeJoinWw9F2mQ(i2);
        }
        obtainStrokePaint.getPathEffect();
        if (!Intrinsics.areEqual((Object) null, pathEffect)) {
            obtainStrokePaint.setPathEffect(pathEffect);
        }
        if (!FilterQuality.m1334equalsimpl0(obtainStrokePaint.mo1232getFilterQualityfv9h1I(), i4)) {
            obtainStrokePaint.mo1237setFilterQualityvDHp3xo(i4);
        }
        return obtainStrokePaint;
    }

    /* renamed from: configureStrokePaint-ho4zsrM$default, reason: not valid java name */
    static /* synthetic */ Paint m1476configureStrokePaintho4zsrM$default(CanvasDrawScope canvasDrawScope, Brush brush, float f, float f2, int i, int i2, PathEffect pathEffect, float f3, ColorFilter colorFilter, int i3, int i4, int i5, Object obj) {
        return canvasDrawScope.m1475configureStrokePaintho4zsrM(brush, f, f2, i, i2, pathEffect, f3, colorFilter, i3, (i5 & 512) != 0 ? DrawScope.Companion.m1517getDefaultFilterQualityfv9h1I() : i4);
    }

    /* renamed from: configureStrokePaint-ho4zsrM, reason: not valid java name */
    private final Paint m1475configureStrokePaintho4zsrM(Brush brush, float f, float f2, int i, int i2, PathEffect pathEffect, float f3, ColorFilter colorFilter, int i3, int i4) {
        Paint obtainStrokePaint = obtainStrokePaint();
        if (brush != null) {
            brush.mo1288applyToPq9zytI(mo1491getSizeNHjbRc(), obtainStrokePaint, f3);
        } else if (obtainStrokePaint.getAlpha() != f3) {
            obtainStrokePaint.setAlpha(f3);
        }
        if (!Intrinsics.areEqual(obtainStrokePaint.getColorFilter(), colorFilter)) {
            obtainStrokePaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1254equalsimpl0(obtainStrokePaint.mo1230getBlendMode0nO6VwU(), i3)) {
            obtainStrokePaint.mo1235setBlendModes9anfk8(i3);
        }
        if (obtainStrokePaint.getStrokeWidth() != f) {
            obtainStrokePaint.setStrokeWidth(f);
        }
        if (obtainStrokePaint.getStrokeMiterLimit() != f2) {
            obtainStrokePaint.setStrokeMiterLimit(f2);
        }
        if (!StrokeCap.m1420equalsimpl0(obtainStrokePaint.mo1233getStrokeCapKaPHkGw(), i)) {
            obtainStrokePaint.mo1238setStrokeCapBeK7IIE(i);
        }
        if (!StrokeJoin.m1427equalsimpl0(obtainStrokePaint.mo1234getStrokeJoinLxFBmk8(), i2)) {
            obtainStrokePaint.mo1239setStrokeJoinWw9F2mQ(i2);
        }
        obtainStrokePaint.getPathEffect();
        if (!Intrinsics.areEqual((Object) null, pathEffect)) {
            obtainStrokePaint.setPathEffect(pathEffect);
        }
        if (!FilterQuality.m1334equalsimpl0(obtainStrokePaint.mo1232getFilterQualityfv9h1I(), i4)) {
            obtainStrokePaint.mo1237setFilterQualityvDHp3xo(i4);
        }
        return obtainStrokePaint;
    }

    /* renamed from: modulate-5vOe2sY, reason: not valid java name */
    private final long m1477modulate5vOe2sY(long j, float f) {
        return f == 1.0f ? j : Color.m1302copywmQWz5c$default(j, Color.m1305getAlphaimpl(j) * f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    /* compiled from: CanvasDrawScope.kt */
    public static final class DrawParams {
        private Canvas canvas;
        private Density density;
        private LayoutDirection layoutDirection;
        private long size;

        public /* synthetic */ DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(density, layoutDirection, canvas, j);
        }

        public final Density component1() {
            return this.density;
        }

        public final LayoutDirection component2() {
            return this.layoutDirection;
        }

        public final Canvas component3() {
            return this.canvas;
        }

        /* renamed from: component4-NH-jbRc, reason: not valid java name */
        public final long m1492component4NHjbRc() {
            return this.size;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawParams)) {
                return false;
            }
            DrawParams drawParams = (DrawParams) obj;
            return Intrinsics.areEqual(this.density, drawParams.density) && this.layoutDirection == drawParams.layoutDirection && Intrinsics.areEqual(this.canvas, drawParams.canvas) && Size.m1201equalsimpl0(this.size, drawParams.size);
        }

        public int hashCode() {
            return (((((this.density.hashCode() * 31) + this.layoutDirection.hashCode()) * 31) + this.canvas.hashCode()) * 31) + Size.m1205hashCodeimpl(this.size);
        }

        public String toString() {
            return "DrawParams(density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", canvas=" + this.canvas + ", size=" + ((Object) Size.m1207toStringimpl(this.size)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        private DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j) {
            this.density = density;
            this.layoutDirection = layoutDirection;
            this.canvas = canvas;
            this.size = j;
        }

        public /* synthetic */ DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? DrawContextKt.getDefaultDensity() : density, (i & 2) != 0 ? LayoutDirection.Ltr : layoutDirection, (i & 4) != 0 ? new EmptyCanvas() : canvas, (i & 8) != 0 ? Size.Companion.m1210getZeroNHjbRc() : j, null);
        }

        public final Density getDensity() {
            return this.density;
        }

        public final void setDensity(Density density) {
            this.density = density;
        }

        public final LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        public final void setLayoutDirection(LayoutDirection layoutDirection) {
            this.layoutDirection = layoutDirection;
        }

        public final Canvas getCanvas() {
            return this.canvas;
        }

        public final void setCanvas(Canvas canvas) {
            this.canvas = canvas;
        }

        /* renamed from: getSize-NH-jbRc, reason: not valid java name */
        public final long m1493getSizeNHjbRc() {
            return this.size;
        }

        /* renamed from: setSize-uvyYCjk, reason: not valid java name */
        public final void m1494setSizeuvyYCjk(long j) {
            this.size = j;
        }
    }
}
