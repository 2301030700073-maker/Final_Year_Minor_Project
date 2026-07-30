package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;

/* compiled from: DrawCache.kt */
/* loaded from: classes.dex */
public final class DrawCache {
    private Canvas cachedCanvas;
    private ImageBitmap mCachedImage;
    private Density scopeDensity;
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    private long size = IntSize.Companion.m2488getZeroYbymL2g();
    private int config = ImageBitmapConfig.Companion.m1356getArgb8888_sVssgQ();
    private final CanvasDrawScope cacheScope = new CanvasDrawScope();

    public final ImageBitmap getMCachedImage() {
        return this.mCachedImage;
    }

    /* renamed from: drawCachedImage-FqjB98A, reason: not valid java name */
    public final void m1558drawCachedImageFqjB98A(int i, long j, Density density, LayoutDirection layoutDirection, Function1 function1) {
        this.scopeDensity = density;
        this.layoutDirection = layoutDirection;
        ImageBitmap imageBitmap = this.mCachedImage;
        Canvas canvas = this.cachedCanvas;
        if (imageBitmap == null || canvas == null || IntSize.m2484getWidthimpl(j) > imageBitmap.getWidth() || IntSize.m2483getHeightimpl(j) > imageBitmap.getHeight() || !ImageBitmapConfig.m1351equalsimpl0(this.config, i)) {
            imageBitmap = ImageBitmapKt.m1361ImageBitmapx__hDU$default(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j), i, false, null, 24, null);
            canvas = CanvasKt.Canvas(imageBitmap);
            this.mCachedImage = imageBitmap;
            this.cachedCanvas = canvas;
            this.config = i;
        }
        this.size = j;
        CanvasDrawScope canvasDrawScope = this.cacheScope;
        long m2491toSizeozmzZPI = IntSizeKt.m2491toSizeozmzZPI(j);
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m1492component4NHjbRc = drawParams.m1492component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(density);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m1494setSizeuvyYCjk(m2491toSizeozmzZPI);
        canvas.save();
        clear(canvasDrawScope);
        function1.invoke(canvasDrawScope);
        canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m1494setSizeuvyYCjk(m1492component4NHjbRc);
        imageBitmap.prepareToDraw();
    }

    public final void drawInto(DrawScope drawScope, float f, ColorFilter colorFilter) {
        ImageBitmap imageBitmap = this.mCachedImage;
        if (!(imageBitmap != null)) {
            InlineClassHelperKt.throwIllegalStateException("drawCachedImage must be invoked first before attempting to draw the result into another destination");
        }
        DrawScope.CC.m1508drawImageAZ2fEMs$default(drawScope, imageBitmap, 0L, this.size, 0L, 0L, f, null, colorFilter, 0, 0, 858, null);
    }

    private final void clear(DrawScope drawScope) {
        DrawScope.CC.m1514drawRectnJ9OG0$default(drawScope, Color.Companion.m1313getBlack0d7_KjU(), 0L, 0L, 0.0f, null, null, BlendMode.Companion.m1257getClear0nO6VwU(), 62, null);
    }
}
