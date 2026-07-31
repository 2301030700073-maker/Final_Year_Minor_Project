package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.caverock.androidsvg.SVG;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface DrawScope extends Density {
    /* renamed from: drawArc-yD3GUKo */
    void mo465drawArcyD3GUKo(long j, float f, float f2, long j2, long j3, float f3, DrawStyle drawStyle);

    /* renamed from: drawCircle-VaOC9Bg */
    void mo466drawCircleVaOC9Bg(long j, float f, long j2, DrawStyle drawStyle);

    /* renamed from: drawImage-AZ2fEMs */
    void mo467drawImageAZ2fEMs(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i);

    /* renamed from: drawImage-gbVJVH8 */
    void mo468drawImagegbVJVH8(AndroidImageBitmap androidImageBitmap, long j, float f, BlendModeColorFilter blendModeColorFilter, int i);

    /* renamed from: drawLine-NGM6Ib0 */
    void mo469drawLineNGM6Ib0(long j, long j2, long j3, float f, int i);

    /* renamed from: drawPath-GBMwjPU */
    void mo470drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i);

    /* renamed from: drawPath-LG529CI */
    void mo471drawPathLG529CI(AndroidPath androidPath, long j, float f, DrawStyle drawStyle);

    /* renamed from: drawRect-AsUm42w */
    void mo472drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, BlendModeColorFilter blendModeColorFilter, int i);

    /* renamed from: drawRect-n-J9OG0 */
    void mo473drawRectnJ9OG0(long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i);

    /* renamed from: drawRoundRect-u-Aw5IA */
    void mo474drawRoundRectuAw5IA(long j, long j2, long j3, long j4);

    /* renamed from: getCenter-F1C5BW0 */
    long mo475getCenterF1C5BW0();

    SVG getDrawContext();

    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc */
    long mo476getSizeNHjbRc();
}
