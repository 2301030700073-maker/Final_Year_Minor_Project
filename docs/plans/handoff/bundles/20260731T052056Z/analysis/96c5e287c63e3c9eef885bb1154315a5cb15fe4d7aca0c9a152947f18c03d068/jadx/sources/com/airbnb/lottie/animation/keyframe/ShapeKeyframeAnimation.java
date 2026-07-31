package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.animation.content.RoundedCornersContent;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeKeyframeAnimation extends BaseKeyframeAnimation {
    public ArrayList shapeModifiers;
    public final Path tempPath;
    public final ShapeData tempShapeData;

    public ShapeKeyframeAnimation(List list) {
        super(list);
        this.tempShapeData = new ShapeData();
        this.tempPath = new Path();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        int i;
        ShapeData shapeData;
        float f2;
        boolean z;
        ShapeData shapeData2 = (ShapeData) keyframe.startValue;
        ShapeData shapeData3 = (ShapeData) keyframe.endValue;
        if (shapeData3 == null) {
            shapeData3 = shapeData2;
        }
        ShapeData shapeData4 = this.tempShapeData;
        ArrayList arrayList = shapeData4.curves;
        if (shapeData4.initialPoint == null) {
            shapeData4.initialPoint = new PointF();
        }
        boolean z2 = shapeData2.closed;
        ArrayList arrayList2 = shapeData2.curves;
        boolean z3 = true;
        shapeData4.closed = z2 || shapeData3.closed;
        int size = arrayList2.size();
        ArrayList arrayList3 = shapeData3.curves;
        if (size != arrayList3.size()) {
            Logger.warning("Curves must have the same number of control points. Shape 1: " + arrayList2.size() + "\tShape 2: " + arrayList3.size());
        }
        int min = Math.min(arrayList2.size(), arrayList3.size());
        if (arrayList.size() < min) {
            for (int size2 = arrayList.size(); size2 < min; size2++) {
                arrayList.add(new CubicCurveData());
            }
        } else if (arrayList.size() > min) {
            for (int size3 = arrayList.size() - 1; size3 >= min; size3--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF pointF = shapeData2.initialPoint;
        PointF pointF2 = shapeData3.initialPoint;
        float lerp = MiscUtils.lerp(pointF.x, pointF2.x, f);
        float lerp2 = MiscUtils.lerp(pointF.y, pointF2.y, f);
        PointF pointF3 = shapeData4.initialPoint;
        if (pointF3 == null) {
            pointF3 = new PointF();
            shapeData4.initialPoint = pointF3;
        }
        pointF3.set(lerp, lerp2);
        int size4 = arrayList.size() - 1;
        while (size4 >= 0) {
            CubicCurveData cubicCurveData = (CubicCurveData) arrayList2.get(size4);
            CubicCurveData cubicCurveData2 = (CubicCurveData) arrayList3.get(size4);
            PointF pointF4 = cubicCurveData.controlPoint1;
            PointF pointF5 = cubicCurveData.controlPoint2;
            PointF pointF6 = cubicCurveData.vertex;
            PointF pointF7 = cubicCurveData2.controlPoint1;
            PointF pointF8 = cubicCurveData2.controlPoint2;
            PointF pointF9 = cubicCurveData2.vertex;
            ((CubicCurveData) arrayList.get(size4)).controlPoint1.set(MiscUtils.lerp(pointF4.x, pointF7.x, f), MiscUtils.lerp(pointF4.y, pointF7.y, f));
            ((CubicCurveData) arrayList.get(size4)).controlPoint2.set(MiscUtils.lerp(pointF5.x, pointF8.x, f), MiscUtils.lerp(pointF5.y, pointF8.y, f));
            ((CubicCurveData) arrayList.get(size4)).vertex.set(MiscUtils.lerp(pointF6.x, pointF9.x, f), MiscUtils.lerp(pointF6.y, pointF9.y, f));
            size4--;
            z3 = z3;
        }
        boolean z4 = z3;
        ArrayList arrayList4 = this.shapeModifiers;
        if (arrayList4 != null) {
            int size5 = arrayList4.size() - 1;
            while (true) {
                ArrayList arrayList5 = shapeData4.curves;
                if (size5 < 0) {
                    break;
                }
                RoundedCornersContent roundedCornersContent = (RoundedCornersContent) this.shapeModifiers.get(size5);
                roundedCornersContent.getClass();
                if (arrayList5.size() > 2) {
                    float floatValue = ((Float) roundedCornersContent.roundedCorners.getValue()).floatValue();
                    if (floatValue != RecyclerView.DECELERATION_RATE) {
                        boolean z5 = shapeData4.closed;
                        int size6 = arrayList5.size() - 1;
                        int i2 = 0;
                        while (size6 >= 0) {
                            CubicCurveData cubicCurveData3 = (CubicCurveData) arrayList5.get(size6);
                            CubicCurveData cubicCurveData4 = (CubicCurveData) arrayList5.get(RoundedCornersContent.floorMod(size6 - 1, arrayList5.size()));
                            PointF pointF10 = (size6 != 0 || z5) ? cubicCurveData4.vertex : shapeData4.initialPoint;
                            i2 = (((size6 != 0 || z5) ? cubicCurveData4.controlPoint2 : pointF10).equals(pointF10) && cubicCurveData3.controlPoint1.equals(pointF10) && !((shapeData4.closed || (size6 != 0 && size6 != arrayList5.size() + (-1))) ? false : z4)) ? i2 + 2 : i2 + 1;
                            size6--;
                        }
                        ShapeData shapeData5 = roundedCornersContent.shapeData;
                        if (shapeData5 == null || shapeData5.curves.size() != i2) {
                            ArrayList arrayList6 = new ArrayList(i2);
                            for (int i3 = 0; i3 < i2; i3++) {
                                arrayList6.add(new CubicCurveData());
                            }
                            i = 0;
                            roundedCornersContent.shapeData = new ShapeData(new PointF(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE), false, arrayList6);
                        } else {
                            i = 0;
                        }
                        ShapeData shapeData6 = roundedCornersContent.shapeData;
                        shapeData6.closed = z5;
                        PointF pointF11 = shapeData4.initialPoint;
                        float f3 = pointF11.x;
                        float f4 = pointF11.y;
                        PointF pointF12 = shapeData6.initialPoint;
                        if (pointF12 == null) {
                            pointF12 = new PointF();
                            shapeData6.initialPoint = pointF12;
                        }
                        pointF12.set(f3, f4);
                        ArrayList arrayList7 = shapeData6.curves;
                        boolean z6 = shapeData4.closed;
                        int i4 = i;
                        int i5 = i4;
                        while (i4 < arrayList5.size()) {
                            CubicCurveData cubicCurveData5 = (CubicCurveData) arrayList5.get(i4);
                            CubicCurveData cubicCurveData6 = (CubicCurveData) arrayList5.get(RoundedCornersContent.floorMod(i4 - 1, arrayList5.size()));
                            CubicCurveData cubicCurveData7 = (CubicCurveData) arrayList5.get(RoundedCornersContent.floorMod(i4 - 2, arrayList5.size()));
                            PointF pointF13 = (i4 != 0 || z6) ? cubicCurveData6.vertex : shapeData4.initialPoint;
                            PointF pointF14 = (i4 != 0 || z6) ? cubicCurveData6.controlPoint2 : pointF13;
                            PointF pointF15 = cubicCurveData5.controlPoint1;
                            PointF pointF16 = cubicCurveData7.vertex;
                            int i6 = size5;
                            PointF pointF17 = cubicCurveData5.vertex;
                            ArrayList arrayList8 = arrayList5;
                            boolean z7 = (shapeData4.closed || !(i4 == 0 || i4 == arrayList8.size() + (-1))) ? false : z4;
                            if (pointF14.equals(pointF13) && pointF15.equals(pointF13) && !z7) {
                                float f5 = pointF13.x;
                                float f6 = f5 - pointF16.x;
                                float f7 = pointF13.y;
                                float f8 = f7 - pointF16.y;
                                float f9 = pointF17.x - f5;
                                float f10 = pointF17.y - f7;
                                shapeData = shapeData4;
                                f2 = floatValue;
                                float hypot = (float) Math.hypot(f6, f8);
                                float hypot2 = (float) Math.hypot(f9, f10);
                                float min2 = Math.min(f2 / hypot, 0.5f);
                                float min3 = Math.min(f2 / hypot2, 0.5f);
                                float f11 = pointF13.x;
                                float m = Animation.CC.m(pointF16.x, f11, min2, f11);
                                float f12 = pointF13.y;
                                float m2 = Animation.CC.m(pointF16.y, f12, min2, f12);
                                float m3 = Animation.CC.m(pointF17.x, f11, min3, f11);
                                float m4 = Animation.CC.m(pointF17.y, f12, min3, f12);
                                float f13 = m - ((m - f11) * 0.5519f);
                                float f14 = m2 - ((m2 - f12) * 0.5519f);
                                float f15 = m3 - ((m3 - f11) * 0.5519f);
                                float f16 = m4 - ((m4 - f12) * 0.5519f);
                                CubicCurveData cubicCurveData8 = (CubicCurveData) arrayList7.get(RoundedCornersContent.floorMod(i5 - 1, arrayList7.size()));
                                CubicCurveData cubicCurveData9 = (CubicCurveData) arrayList7.get(i5);
                                z = z6;
                                cubicCurveData8.controlPoint2.set(m, m2);
                                cubicCurveData8.vertex.set(m, m2);
                                if (i4 == 0) {
                                    PointF pointF18 = shapeData6.initialPoint;
                                    if (pointF18 == null) {
                                        pointF18 = new PointF();
                                        shapeData6.initialPoint = pointF18;
                                    }
                                    pointF18.set(m, m2);
                                }
                                cubicCurveData9.controlPoint1.set(f13, f14);
                                CubicCurveData cubicCurveData10 = (CubicCurveData) arrayList7.get(i5 + 1);
                                cubicCurveData9.controlPoint2.set(f15, f16);
                                cubicCurveData9.vertex.set(m3, m4);
                                cubicCurveData10.controlPoint1.set(m3, m4);
                                i5 += 2;
                            } else {
                                shapeData = shapeData4;
                                f2 = floatValue;
                                z = z6;
                                CubicCurveData cubicCurveData11 = (CubicCurveData) arrayList7.get(RoundedCornersContent.floorMod(i5 - 1, arrayList7.size()));
                                CubicCurveData cubicCurveData12 = (CubicCurveData) arrayList7.get(i5);
                                PointF pointF19 = cubicCurveData6.controlPoint2;
                                cubicCurveData11.controlPoint2.set(pointF19.x, pointF19.y);
                                PointF pointF20 = cubicCurveData6.vertex;
                                cubicCurveData11.vertex.set(pointF20.x, pointF20.y);
                                PointF pointF21 = cubicCurveData5.controlPoint1;
                                cubicCurveData12.controlPoint1.set(pointF21.x, pointF21.y);
                                i5++;
                            }
                            i4++;
                            size5 = i6;
                            arrayList5 = arrayList8;
                            shapeData4 = shapeData;
                            floatValue = f2;
                            z6 = z;
                        }
                        shapeData4 = shapeData6;
                    }
                }
                size5--;
            }
        }
        Path path = this.tempPath;
        path.reset();
        PointF pointF22 = shapeData4.initialPoint;
        ArrayList arrayList9 = shapeData4.curves;
        path.moveTo(pointF22.x, pointF22.y);
        PointF pointF23 = MiscUtils.pathFromDataCurrentPoint;
        pointF23.set(pointF22.x, pointF22.y);
        for (int i7 = 0; i7 < arrayList9.size(); i7++) {
            CubicCurveData cubicCurveData13 = (CubicCurveData) arrayList9.get(i7);
            PointF pointF24 = cubicCurveData13.controlPoint1;
            PointF pointF25 = cubicCurveData13.controlPoint2;
            PointF pointF26 = cubicCurveData13.vertex;
            if (pointF24.equals(pointF23) && pointF25.equals(pointF26)) {
                path.lineTo(pointF26.x, pointF26.y);
            } else {
                path.cubicTo(pointF24.x, pointF24.y, pointF25.x, pointF25.y, pointF26.x, pointF26.y);
            }
            pointF23.set(pointF26.x, pointF26.y);
        }
        if (shapeData4.closed) {
            path.close();
        }
        return path;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final boolean skipCache() {
        ArrayList arrayList = this.shapeModifiers;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }
}
