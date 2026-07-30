package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: Vector.kt */
/* loaded from: classes.dex */
public abstract class VectorKt {
    private static final List EmptyPath = CollectionsKt.emptyList();
    private static final int DefaultStrokeLineCap = StrokeCap.Companion.m1423getButtKaPHkGw();
    private static final int DefaultStrokeLineJoin = StrokeJoin.Companion.m1431getMiterLxFBmk8();
    private static final int DefaultTintBlendMode = BlendMode.Companion.m1282getSrcIn0nO6VwU();
    private static final long DefaultTintColor = Color.Companion.m1316getTransparent0d7_KjU();
    private static final int DefaultFillType = PathFillType.Companion.m1396getNonZeroRgk1Os();

    public static final List getEmptyPath() {
        return EmptyPath;
    }

    public static final int getDefaultStrokeLineCap() {
        return DefaultStrokeLineCap;
    }

    public static final int getDefaultStrokeLineJoin() {
        return DefaultStrokeLineJoin;
    }

    public static final int getDefaultFillType() {
        return DefaultFillType;
    }

    /* renamed from: rgbEqual--OWjLjI, reason: not valid java name */
    public static final boolean m1574rgbEqualOWjLjI(long j, long j2) {
        return Color.m1309getRedimpl(j) == Color.m1309getRedimpl(j2) && Color.m1308getGreenimpl(j) == Color.m1308getGreenimpl(j2) && Color.m1306getBlueimpl(j) == Color.m1306getBlueimpl(j2);
    }

    public static final boolean tintableWithAlphaMask(ColorFilter colorFilter) {
        if (colorFilter instanceof BlendModeColorFilter) {
            BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) colorFilter;
            int m1286getBlendMode0nO6VwU = blendModeColorFilter.m1286getBlendMode0nO6VwU();
            BlendMode.Companion companion = BlendMode.Companion;
            if (BlendMode.m1254equalsimpl0(m1286getBlendMode0nO6VwU, companion.m1282getSrcIn0nO6VwU()) || BlendMode.m1254equalsimpl0(blendModeColorFilter.m1286getBlendMode0nO6VwU(), companion.m1284getSrcOver0nO6VwU())) {
                return true;
            }
        } else if (colorFilter == null) {
            return true;
        }
        return false;
    }
}
