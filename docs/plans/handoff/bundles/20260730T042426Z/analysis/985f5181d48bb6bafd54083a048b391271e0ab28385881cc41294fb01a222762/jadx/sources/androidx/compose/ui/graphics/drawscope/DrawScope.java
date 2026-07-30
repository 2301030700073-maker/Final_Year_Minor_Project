package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: DrawScope.kt */
/* loaded from: classes.dex */
public interface DrawScope extends Density {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* renamed from: drawArc-yD3GUKo */
    void mo1478drawArcyD3GUKo(long j, float f, float f2, boolean z, long j2, long j3, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawCircle-VaOC9Bg */
    void mo1479drawCircleVaOC9Bg(long j, float f, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawImage-AZ2fEMs */
    void mo1480drawImageAZ2fEMs(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2);

    /* renamed from: drawImage-gbVJVH8 */
    void mo1481drawImagegbVJVH8(ImageBitmap imageBitmap, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawLine-1RTmtNc */
    void mo1482drawLine1RTmtNc(Brush brush, long j, long j2, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2);

    /* renamed from: drawLine-NGM6Ib0 */
    void mo1483drawLineNGM6Ib0(long j, long j2, long j3, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2);

    /* renamed from: drawPath-GBMwjPU */
    void mo1484drawPathGBMwjPU(Path path, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawPath-LG529CI */
    void mo1485drawPathLG529CI(Path path, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawRect-AsUm42w */
    void mo1486drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawRect-n-J9OG0 */
    void mo1487drawRectnJ9OG0(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawRoundRect-ZuiqVtQ */
    void mo1488drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* renamed from: drawRoundRect-u-Aw5IA */
    void mo1489drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i);

    /* renamed from: getCenter-F1C5BW0 */
    long mo1490getCenterF1C5BW0();

    DrawContext getDrawContext();

    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc */
    long mo1491getSizeNHjbRc();

    /* compiled from: DrawScope.kt */
    /* renamed from: androidx.compose.ui.graphics.drawscope.DrawScope$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Companion companion = DrawScope.Companion;
        }

        /* renamed from: drawLine-1RTmtNc$default, reason: not valid java name */
        public static /* synthetic */ void m1510drawLine1RTmtNc$default(DrawScope drawScope, Brush brush, long j, long j2, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-1RTmtNc");
            }
            drawScope.mo1482drawLine1RTmtNc(brush, j, j2, (i3 & 8) != 0 ? 0.0f : f, (i3 & 16) != 0 ? Stroke.Companion.m1521getDefaultCapKaPHkGw() : i, (i3 & 32) != 0 ? null : pathEffect, (i3 & 64) != 0 ? 1.0f : f2, (i3 & 128) != 0 ? null : colorFilter, (i3 & 256) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i2);
        }

        /* renamed from: drawLine-NGM6Ib0$default, reason: not valid java name */
        public static /* synthetic */ void m1511drawLineNGM6Ib0$default(DrawScope drawScope, long j, long j2, long j3, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0");
            }
            drawScope.mo1483drawLineNGM6Ib0(j, j2, j3, (i3 & 8) != 0 ? 0.0f : f, (i3 & 16) != 0 ? Stroke.Companion.m1521getDefaultCapKaPHkGw() : i, (i3 & 32) != 0 ? null : pathEffect, (i3 & 64) != 0 ? 1.0f : f2, (i3 & 128) != 0 ? null : colorFilter, (i3 & 256) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i2);
        }

        /* renamed from: drawRect-AsUm42w$default, reason: not valid java name */
        public static /* synthetic */ void m1513drawRectAsUm42w$default(DrawScope drawScope, Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-AsUm42w");
            }
            long m1179getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m1179getZeroF1C5BW0() : j;
            drawScope.mo1486drawRectAsUm42w(brush, m1179getZeroF1C5BW0, (i2 & 4) != 0 ? m1505$private$offsetSizePENXr5M(drawScope, drawScope.mo1491getSizeNHjbRc(), m1179getZeroF1C5BW0) : j2, (i2 & 8) != 0 ? 1.0f : f, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i);
        }

        /* renamed from: drawRect-n-J9OG0$default, reason: not valid java name */
        public static /* synthetic */ void m1514drawRectnJ9OG0$default(DrawScope drawScope, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0");
            }
            long m1179getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m1179getZeroF1C5BW0() : j2;
            drawScope.mo1487drawRectnJ9OG0(j, m1179getZeroF1C5BW0, (i2 & 4) != 0 ? m1505$private$offsetSizePENXr5M(drawScope, drawScope.mo1491getSizeNHjbRc(), m1179getZeroF1C5BW0) : j3, (i2 & 8) != 0 ? 1.0f : f, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i);
        }

        /* renamed from: drawImage-gbVJVH8$default, reason: not valid java name */
        public static /* synthetic */ void m1509drawImagegbVJVH8$default(DrawScope drawScope, ImageBitmap imageBitmap, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-gbVJVH8");
            }
            drawScope.mo1481drawImagegbVJVH8(imageBitmap, (i2 & 2) != 0 ? Offset.Companion.m1179getZeroF1C5BW0() : j, (i2 & 4) != 0 ? 1.0f : f, (i2 & 8) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 16) != 0 ? null : colorFilter, (i2 & 32) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i);
        }

        /* renamed from: drawImage-AZ2fEMs$default, reason: not valid java name */
        public static /* synthetic */ void m1508drawImageAZ2fEMs$default(DrawScope drawScope, ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs");
            }
            long m2472getZeronOccac = (i3 & 2) != 0 ? IntOffset.Companion.m2472getZeronOccac() : j;
            long IntSize = (i3 & 4) != 0 ? IntSizeKt.IntSize(imageBitmap.getWidth(), imageBitmap.getHeight()) : j2;
            drawScope.mo1480drawImageAZ2fEMs(imageBitmap, m2472getZeronOccac, IntSize, (i3 & 8) != 0 ? IntOffset.Companion.m2472getZeronOccac() : j3, (i3 & 16) != 0 ? IntSize : j4, (i3 & 32) != 0 ? 1.0f : f, (i3 & 64) != 0 ? Fill.INSTANCE : drawStyle, (i3 & 128) != 0 ? null : colorFilter, (i3 & 256) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i, (i3 & 512) != 0 ? DrawScope.Companion.m1517getDefaultFilterQualityfv9h1I() : i2);
        }

        /* renamed from: drawRoundRect-ZuiqVtQ$default, reason: not valid java name */
        public static /* synthetic */ void m1515drawRoundRectZuiqVtQ$default(DrawScope drawScope, Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ");
            }
            long m1179getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m1179getZeroF1C5BW0() : j;
            drawScope.mo1488drawRoundRectZuiqVtQ(brush, m1179getZeroF1C5BW0, (i2 & 4) != 0 ? m1505$private$offsetSizePENXr5M(drawScope, drawScope.mo1491getSizeNHjbRc(), m1179getZeroF1C5BW0) : j2, (i2 & 8) != 0 ? CornerRadius.Companion.m1157getZerokKHJgLs() : j3, (i2 & 16) != 0 ? 1.0f : f, (i2 & 32) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 64) != 0 ? null : colorFilter, (i2 & 128) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i);
        }

        /* renamed from: drawCircle-VaOC9Bg$default, reason: not valid java name */
        public static /* synthetic */ void m1507drawCircleVaOC9Bg$default(DrawScope drawScope, long j, float f, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg");
            }
            drawScope.mo1479drawCircleVaOC9Bg(j, (i2 & 2) != 0 ? Size.m1203getMinDimensionimpl(drawScope.mo1491getSizeNHjbRc()) / 2.0f : f, (i2 & 4) != 0 ? drawScope.mo1490getCenterF1C5BW0() : j2, (i2 & 8) != 0 ? 1.0f : f2, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i);
        }

        /* renamed from: drawArc-yD3GUKo$default, reason: not valid java name */
        public static /* synthetic */ void m1506drawArcyD3GUKo$default(DrawScope drawScope, long j, float f, float f2, boolean z, long j2, long j3, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawArc-yD3GUKo");
            }
            long m1179getZeroF1C5BW0 = (i2 & 16) != 0 ? Offset.Companion.m1179getZeroF1C5BW0() : j2;
            drawScope.mo1478drawArcyD3GUKo(j, f, f2, z, m1179getZeroF1C5BW0, (i2 & 32) != 0 ? m1505$private$offsetSizePENXr5M(drawScope, drawScope.mo1491getSizeNHjbRc(), m1179getZeroF1C5BW0) : j3, (i2 & 64) != 0 ? 1.0f : f3, (i2 & 128) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 256) != 0 ? null : colorFilter, (i2 & 512) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : i);
        }

        /* renamed from: drawPath-GBMwjPU$default, reason: not valid java name */
        public static /* synthetic */ void m1512drawPathGBMwjPU$default(DrawScope drawScope, Path path, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU");
            }
            if ((i2 & 4) != 0) {
                f = 1.0f;
            }
            float f2 = f;
            if ((i2 & 8) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            DrawStyle drawStyle2 = drawStyle;
            if ((i2 & 16) != 0) {
                colorFilter = null;
            }
            ColorFilter colorFilter2 = colorFilter;
            if ((i2 & 32) != 0) {
                i = DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU();
            }
            drawScope.mo1484drawPathGBMwjPU(path, brush, f2, drawStyle2, colorFilter2, i);
        }

        /* renamed from: $private$offsetSize-PENXr5M, reason: not valid java name */
        public static long m1505$private$offsetSizePENXr5M(DrawScope drawScope, long j, long j2) {
            return SizeKt.Size(Size.m1204getWidthimpl(j) - Offset.m1167getXimpl(j2), Size.m1202getHeightimpl(j) - Offset.m1168getYimpl(j2));
        }
    }

    /* compiled from: DrawScope.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int DefaultBlendMode = BlendMode.Companion.m1284getSrcOver0nO6VwU();
        private static final int DefaultFilterQuality = FilterQuality.Companion.m1337getLowfv9h1I();

        private Companion() {
        }

        /* renamed from: getDefaultBlendMode-0nO6VwU, reason: not valid java name */
        public final int m1516getDefaultBlendMode0nO6VwU() {
            return DefaultBlendMode;
        }

        /* renamed from: getDefaultFilterQuality-f-v9h1I, reason: not valid java name */
        public final int m1517getDefaultFilterQualityfv9h1I() {
            return DefaultFilterQuality;
        }
    }
}
