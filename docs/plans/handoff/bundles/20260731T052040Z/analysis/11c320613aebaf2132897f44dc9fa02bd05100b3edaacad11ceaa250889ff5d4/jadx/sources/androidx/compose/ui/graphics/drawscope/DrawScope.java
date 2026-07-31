package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface DrawScope extends Density {
    /* renamed from: drawImage-AZ2fEMs */
    void mo261drawImageAZ2fEMs(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i);

    /* renamed from: drawLine-NGM6Ib0 */
    void mo262drawLineNGM6Ib0(long j, long j2, long j3, float f);

    /* renamed from: drawPath-GBMwjPU */
    void mo263drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i);

    /* renamed from: drawRect-n-J9OG0 */
    void mo264drawRectnJ9OG0(long j, long j2, long j3, DrawStyle drawStyle, int i);

    /* renamed from: getCenter-F1C5BW0 */
    long mo265getCenterF1C5BW0();

    ProcessFinisher getDrawContext();

    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc */
    long mo266getSizeNHjbRc();
}
