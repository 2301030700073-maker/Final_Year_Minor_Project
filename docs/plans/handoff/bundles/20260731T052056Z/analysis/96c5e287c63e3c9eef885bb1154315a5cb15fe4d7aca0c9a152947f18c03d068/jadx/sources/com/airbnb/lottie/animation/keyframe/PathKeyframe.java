package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PathKeyframe extends Keyframe {
    public Path path;
    public final Keyframe pointKeyFrame;

    public PathKeyframe(LottieComposition lottieComposition, Keyframe keyframe) {
        super(lottieComposition, (PointF) keyframe.startValue, (PointF) keyframe.endValue, keyframe.interpolator, keyframe.xInterpolator, keyframe.yInterpolator, keyframe.startFrame, keyframe.endFrame);
        this.pointKeyFrame = keyframe;
        createPath();
    }

    public final void createPath() {
        boolean z;
        Object obj;
        Object obj2 = this.endValue;
        Object obj3 = this.startValue;
        if (obj2 != null && obj3 != null) {
            PointF pointF = (PointF) obj2;
            if (((PointF) obj3).equals(pointF.x, pointF.y)) {
                z = true;
                if (obj3 != null || (obj = this.endValue) == null || z) {
                    return;
                }
                PointF pointF2 = (PointF) obj3;
                PointF pointF3 = (PointF) obj;
                Keyframe keyframe = this.pointKeyFrame;
                PointF pointF4 = keyframe.pathCp1;
                PointF pointF5 = keyframe.pathCp2;
                Matrix matrix = Utils.IDENTITY_MATRIX;
                Path path = new Path();
                path.moveTo(pointF2.x, pointF2.y);
                if (pointF4 == null || pointF5 == null || (pointF4.length() == RecyclerView.DECELERATION_RATE && pointF5.length() == RecyclerView.DECELERATION_RATE)) {
                    path.lineTo(pointF3.x, pointF3.y);
                } else {
                    float f = pointF4.x + pointF2.x;
                    float f2 = pointF2.y + pointF4.y;
                    float f3 = pointF3.x;
                    float f4 = f3 + pointF5.x;
                    float f5 = pointF3.y;
                    path.cubicTo(f, f2, f4, f5 + pointF5.y, f3, f5);
                }
                this.path = path;
                return;
            }
        }
        z = false;
        if (obj3 != null) {
        }
    }
}
