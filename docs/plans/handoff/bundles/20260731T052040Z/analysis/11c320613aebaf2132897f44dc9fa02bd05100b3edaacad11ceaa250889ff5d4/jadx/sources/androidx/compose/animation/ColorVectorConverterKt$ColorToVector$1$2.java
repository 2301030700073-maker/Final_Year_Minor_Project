package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ColorVectorConverterKt$ColorToVector$1$2 extends Lambda implements Function1 {
    final /* synthetic */ ColorSpace $colorSpace;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorVectorConverterKt$ColorToVector$1$2(ColorSpace colorSpace) {
        super(1);
        this.$colorSpace = colorSpace;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AnimationVector4D animationVector4D = (AnimationVector4D) obj;
        float f = animationVector4D.v2;
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        float f2 = animationVector4D.v3;
        if (f2 < -0.5f) {
            f2 = -0.5f;
        }
        if (f2 > 0.5f) {
            f2 = 0.5f;
        }
        float f3 = animationVector4D.v4;
        float f4 = f3 >= -0.5f ? f3 : -0.5f;
        float f5 = f4 <= 0.5f ? f4 : 0.5f;
        float f6 = animationVector4D.v1;
        float f7 = f6 >= 0.0f ? f6 : 0.0f;
        return new Color(Color.m242convertvNxB06k(Brush.Color(f, f2, f5, f7 <= 1.0f ? f7 : 1.0f, ColorSpaces.Oklab), this.$colorSpace));
    }
}
