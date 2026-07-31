package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.MenuHostHelper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DrawScope extends Density {
    /* renamed from: drawArc-yD3GUKo */
    void mo523drawArcyD3GUKo(long j, float f, float f2, long j2, long j3, float f3, Stroke stroke);

    /* renamed from: drawCircle-VaOC9Bg */
    void mo524drawCircleVaOC9Bg(long j, float f, long j2, DrawStyle drawStyle);

    /* renamed from: drawImage-AZ2fEMs */
    void mo525drawImageAZ2fEMs(ImageBitmap imageBitmap, long j, long j2, long j3, float f, ColorFilter colorFilter, int i);

    /* renamed from: drawLine-NGM6Ib0 */
    void mo527drawLineNGM6Ib0(long j, long j2, long j3, float f);

    /* renamed from: drawPath-GBMwjPU */
    void mo528drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i);

    /* renamed from: drawPath-LG529CI */
    void mo529drawPathLG529CI(AndroidPath androidPath, long j, float f, DrawStyle drawStyle);

    /* renamed from: drawRect-n-J9OG0 */
    void mo530drawRectnJ9OG0(long j, long j2, long j3, float f, ColorFilter colorFilter, int i);

    /* renamed from: drawRoundRect-ZuiqVtQ */
    void mo531drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle);

    /* renamed from: drawRoundRect-u-Aw5IA */
    void mo532drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle drawStyle);

    /* renamed from: getCenter-F1C5BW0 */
    long mo533getCenterF1C5BW0();

    MenuHostHelper getDrawContext();

    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc */
    long mo534getSizeNHjbRc();
}
