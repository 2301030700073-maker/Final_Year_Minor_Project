package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import java.util.List;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PointKeyframeAnimation extends KeyframeAnimation {
    public final /* synthetic */ int $r8$classId;
    public final Object point;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointKeyframeAnimation(List list, int i) {
        super(list);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(list);
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    GradientColor gradientColor = (GradientColor) ((Keyframe) list.get(i3)).startValue;
                    if (gradientColor != null) {
                        i2 = Math.max(i2, gradientColor.colors.length);
                    }
                }
                this.point = new GradientColor(new float[i2], new int[i2]);
                break;
            case 2:
                super(list);
                this.point = new ScaleXY(1.0f, 1.0f);
                break;
            default:
                this.point = new PointF();
                break;
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        Object obj;
        int i = this.$r8$classId;
        Object obj2 = this.point;
        switch (i) {
            case 0:
                break;
            case 1:
                GradientColor gradientColor = (GradientColor) obj2;
                GradientColor gradientColor2 = (GradientColor) keyframe.startValue;
                GradientColor gradientColor3 = (GradientColor) keyframe.endValue;
                int[] iArr = gradientColor.colors;
                float[] fArr = gradientColor.positions;
                boolean equals = gradientColor2.equals(gradientColor3);
                int[] iArr2 = gradientColor2.colors;
                if (equals) {
                    gradientColor.copyFrom(gradientColor2);
                } else if (f <= RecyclerView.DECELERATION_RATE) {
                    gradientColor.copyFrom(gradientColor2);
                } else if (f < 1.0f) {
                    int length = iArr2.length;
                    int[] iArr3 = gradientColor3.colors;
                    if (length != iArr3.length) {
                        StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
                        sb.append(iArr2.length);
                        sb.append(" vs ");
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(sb, iArr3.length, ")"));
                        break;
                    } else {
                        for (int i2 = 0; i2 < iArr2.length; i2++) {
                            fArr[i2] = MiscUtils.lerp(gradientColor2.positions[i2], gradientColor3.positions[i2], f);
                            iArr[i2] = UuidKt.evaluate(iArr2[i2], f, iArr3[i2]);
                        }
                        for (int length2 = iArr2.length; length2 < fArr.length; length2++) {
                            fArr[length2] = fArr[iArr2.length - 1];
                            iArr[length2] = iArr[iArr2.length - 1];
                        }
                    }
                } else {
                    gradientColor.copyFrom(gradientColor3);
                }
                break;
            default:
                ScaleXY scaleXY = (ScaleXY) obj2;
                Object obj3 = keyframe.startValue;
                if (obj3 != null && (obj = keyframe.endValue) != null) {
                    ScaleXY scaleXY2 = (ScaleXY) obj3;
                    ScaleXY scaleXY3 = (ScaleXY) obj;
                    float lerp = MiscUtils.lerp(scaleXY2.scaleX, scaleXY3.scaleX, f);
                    float lerp2 = MiscUtils.lerp(scaleXY2.scaleY, scaleXY3.scaleY, f);
                    scaleXY.scaleX = lerp;
                    scaleXY.scaleY = lerp2;
                    break;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Missing values for keyframe.");
                    break;
                }
                break;
        }
        return null;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f, float f2, float f3) {
        switch (this.$r8$classId) {
            case 0:
                return getValue(keyframe, f2, f3);
            default:
                return super.getValue(keyframe, f, f2, f3);
        }
    }

    public PointF getValue(Keyframe keyframe, float f, float f2) {
        Object obj;
        PointF pointF = (PointF) this.point;
        Object obj2 = keyframe.startValue;
        if (obj2 != null && (obj = keyframe.endValue) != null) {
            PointF pointF2 = (PointF) obj2;
            PointF pointF3 = (PointF) obj;
            float f3 = pointF2.x;
            float m = Animation.CC.m(pointF3.x, f3, f, f3);
            float f4 = pointF2.y;
            pointF.set(m, Animation.CC.m(pointF3.y, f4, f2, f4));
            return pointF;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Missing values for keyframe.");
        return null;
    }
}
