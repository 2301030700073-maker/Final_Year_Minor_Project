package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PolystarContent implements PathContent, BaseKeyframeAnimation.AnimationListener, Content {
    public final boolean hidden;
    public final TextKeyframeAnimation innerRadiusAnimation;
    public final TextKeyframeAnimation innerRoundednessAnimation;
    public boolean isPathValid;
    public final boolean isReversed;
    public final LottieDrawable lottieDrawable;
    public final TextKeyframeAnimation outerRadiusAnimation;
    public final TextKeyframeAnimation outerRoundednessAnimation;
    public final TextKeyframeAnimation pointsAnimation;
    public final BaseKeyframeAnimation positionAnimation;
    public final TextKeyframeAnimation rotationAnimation;
    public final PolystarShape.Type type;
    public final Path path = new Path();
    public final Path lastSegmentPath = new Path();
    public final PathMeasure lastSegmentPathMeasure = new PathMeasure();
    public final float[] lastSegmentPosition = new float[2];
    public final Headers.Builder trimPaths = new Headers.Builder(2, (byte) 0);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.animation.content.PolystarContent$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public PolystarContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, PolystarShape polystarShape) {
        TextKeyframeAnimation textKeyframeAnimation;
        TextKeyframeAnimation textKeyframeAnimation2;
        this.lottieDrawable = lottieDrawable;
        PolystarShape.Type type = polystarShape.type;
        this.type = type;
        this.hidden = polystarShape.hidden;
        this.isReversed = polystarShape.isReversed;
        TextKeyframeAnimation createAnimation = polystarShape.points.createAnimation();
        this.pointsAnimation = createAnimation;
        BaseKeyframeAnimation createAnimation2 = polystarShape.position.createAnimation();
        this.positionAnimation = createAnimation2;
        TextKeyframeAnimation createAnimation3 = polystarShape.rotation.createAnimation();
        this.rotationAnimation = createAnimation3;
        TextKeyframeAnimation createAnimation4 = polystarShape.outerRadius.createAnimation();
        this.outerRadiusAnimation = createAnimation4;
        TextKeyframeAnimation createAnimation5 = polystarShape.outerRoundedness.createAnimation();
        this.outerRoundednessAnimation = createAnimation5;
        PolystarShape.Type type2 = PolystarShape.Type.STAR;
        if (type == type2) {
            textKeyframeAnimation = polystarShape.innerRadius.createAnimation();
            this.innerRadiusAnimation = textKeyframeAnimation;
            textKeyframeAnimation2 = polystarShape.innerRoundedness.createAnimation();
            this.innerRoundednessAnimation = textKeyframeAnimation2;
        } else {
            textKeyframeAnimation = null;
            this.innerRadiusAnimation = null;
            this.innerRoundednessAnimation = null;
            textKeyframeAnimation2 = null;
        }
        baseLayer.addAnimation(createAnimation);
        baseLayer.addAnimation(createAnimation2);
        baseLayer.addAnimation(createAnimation3);
        baseLayer.addAnimation(createAnimation4);
        baseLayer.addAnimation(createAnimation5);
        if (type == type2) {
            baseLayer.addAnimation(textKeyframeAnimation);
            baseLayer.addAnimation(textKeyframeAnimation2);
        }
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
        createAnimation4.addUpdateListener(this);
        createAnimation5.addUpdateListener(this);
        if (type == type2) {
            textKeyframeAnimation.addUpdateListener(this);
            textKeyframeAnimation2.addUpdateListener(this);
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        boolean z;
        float f;
        double d;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i;
        double d2;
        boolean z2 = this.isPathValid;
        Path path = this.path;
        if (z2) {
            return path;
        }
        path.reset();
        if (this.hidden) {
            this.isPathValid = true;
            return path;
        }
        int i2 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[this.type.ordinal()];
        BaseKeyframeAnimation baseKeyframeAnimation = this.positionAnimation;
        TextKeyframeAnimation textKeyframeAnimation = this.outerRadiusAnimation;
        TextKeyframeAnimation textKeyframeAnimation2 = this.outerRoundednessAnimation;
        TextKeyframeAnimation textKeyframeAnimation3 = this.rotationAnimation;
        TextKeyframeAnimation textKeyframeAnimation4 = this.pointsAnimation;
        if (i2 == 1) {
            z = true;
            float floatValue = ((Float) textKeyframeAnimation4.getValue()).floatValue();
            double radians = Math.toRadians((textKeyframeAnimation3 != null ? ((Float) textKeyframeAnimation3.getValue()).floatValue() : 0.0d) - 90.0d);
            double d3 = floatValue;
            float f7 = (float) (6.283185307179586d / d3);
            if (this.isReversed) {
                f7 *= -1.0f;
            }
            float f8 = f7;
            float f9 = f8 / 2.0f;
            float f10 = floatValue - ((int) floatValue);
            if (f10 != RecyclerView.DECELERATION_RATE) {
                f = 2.0f;
                radians += (1.0f - f10) * f9;
            } else {
                f = 2.0f;
            }
            float floatValue2 = ((Float) textKeyframeAnimation.getValue()).floatValue();
            float floatValue3 = ((Float) this.innerRadiusAnimation.getValue()).floatValue();
            TextKeyframeAnimation textKeyframeAnimation5 = this.innerRoundednessAnimation;
            float floatValue4 = textKeyframeAnimation5 != null ? ((Float) textKeyframeAnimation5.getValue()).floatValue() / 100.0f : 0.0f;
            float floatValue5 = textKeyframeAnimation2 != null ? ((Float) textKeyframeAnimation2.getValue()).floatValue() / 100.0f : 0.0f;
            if (f10 != RecyclerView.DECELERATION_RATE) {
                float m = Animation.CC.m(floatValue2, floatValue3, f10, floatValue3);
                double d4 = m;
                f4 = m;
                float cos = (float) (Math.cos(radians) * d4);
                float sin = (float) (Math.sin(radians) * d4);
                path.moveTo(cos, sin);
                d = radians + ((f8 * f10) / f);
                f2 = cos;
                f3 = sin;
            } else {
                double d5 = floatValue2;
                float cos2 = (float) (Math.cos(radians) * d5);
                float sin2 = (float) (Math.sin(radians) * d5);
                path.moveTo(cos2, sin2);
                d = radians + f9;
                f2 = cos2;
                f3 = sin2;
                f4 = 0.0f;
            }
            double ceil = Math.ceil(d3) * 2.0d;
            double d6 = d;
            int i3 = 0;
            boolean z3 = false;
            while (true) {
                double d7 = i3;
                if (d7 >= ceil) {
                    break;
                }
                float f11 = z3 ? floatValue2 : floatValue3;
                float f12 = (f4 == RecyclerView.DECELERATION_RATE || d7 != ceil - 2.0d) ? f9 : (f8 * f10) / f;
                if (f4 != RecyclerView.DECELERATION_RATE && d7 == ceil - 1.0d) {
                    f11 = f4;
                }
                double d8 = f11;
                float cos3 = (float) (Math.cos(d6) * d8);
                float sin3 = (float) (Math.sin(d6) * d8);
                if (floatValue4 == RecyclerView.DECELERATION_RATE && floatValue5 == RecyclerView.DECELERATION_RATE) {
                    path.lineTo(cos3, sin3);
                    f5 = f10;
                    f6 = cos3;
                } else {
                    f5 = f10;
                    Path path2 = path;
                    double atan2 = (float) (Math.atan2(f3, f2) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin4 = (float) Math.sin(atan2);
                    float f13 = f2;
                    float f14 = f3;
                    double atan22 = (float) (Math.atan2(sin3, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin5 = (float) Math.sin(atan22);
                    float f15 = z3 ? floatValue4 : floatValue5;
                    float f16 = z3 ? floatValue5 : floatValue4;
                    float f17 = (z3 ? floatValue3 : floatValue2) * f15 * 0.47829f;
                    float f18 = cos4 * f17;
                    float f19 = f17 * sin4;
                    float f20 = (z3 ? floatValue2 : floatValue3) * f16 * 0.47829f;
                    float f21 = cos5 * f20;
                    float f22 = f20 * sin5;
                    if (f10 != RecyclerView.DECELERATION_RATE) {
                        if (i3 == 0) {
                            f18 *= f5;
                            f19 *= f5;
                        } else if (d7 == ceil - 1.0d) {
                            f21 *= f5;
                            f22 *= f5;
                        }
                    }
                    f6 = cos3;
                    path = path2;
                    path.cubicTo(f13 - f18, f14 - f19, f21 + cos3, sin3 + f22, f6, sin3);
                }
                d6 += f12;
                z3 = !z3;
                i3++;
                f2 = f6;
                f3 = sin3;
                f10 = f5;
                f = 2.0f;
            }
            PointF pointF = (PointF) baseKeyframeAnimation.getValue();
            path.offset(pointF.x, pointF.y);
            path.close();
        } else if (i2 != 2) {
            z = true;
        } else {
            int floor = (int) Math.floor(((Float) textKeyframeAnimation4.getValue()).floatValue());
            double radians2 = Math.toRadians((textKeyframeAnimation3 != null ? ((Float) textKeyframeAnimation3.getValue()).floatValue() : 0.0d) - 90.0d);
            double d9 = floor;
            float floatValue6 = ((Float) textKeyframeAnimation2.getValue()).floatValue() / 100.0f;
            float floatValue7 = ((Float) textKeyframeAnimation.getValue()).floatValue();
            double d10 = floatValue7;
            z = true;
            float cos6 = (float) (Math.cos(radians2) * d10);
            float sin6 = (float) (Math.sin(radians2) * d10);
            path.moveTo(cos6, sin6);
            double d11 = (float) (6.283185307179586d / d9);
            double ceil2 = Math.ceil(d9);
            double d12 = radians2 + d11;
            int i4 = 0;
            while (true) {
                double d13 = i4;
                if (d13 >= ceil2) {
                    break;
                }
                double d14 = ceil2;
                float cos7 = (float) (Math.cos(d12) * d10);
                float sin7 = (float) (Math.sin(d12) * d10);
                if (floatValue6 != RecyclerView.DECELERATION_RATE) {
                    i = i4;
                    Path path3 = path;
                    d2 = d10;
                    double atan23 = (float) (Math.atan2(sin6, cos6) - 1.5707963267948966d);
                    float cos8 = (float) Math.cos(atan23);
                    float sin8 = (float) Math.sin(atan23);
                    double atan24 = (float) (Math.atan2(sin7, cos7) - 1.5707963267948966d);
                    float f23 = floatValue7 * floatValue6 * 0.25f;
                    float f24 = f23 * cos8;
                    float f25 = f23 * sin8;
                    float cos9 = ((float) Math.cos(atan24)) * f23;
                    float sin9 = f23 * ((float) Math.sin(atan24));
                    if (d13 == d14 - 1.0d) {
                        Path path4 = this.lastSegmentPath;
                        path4.reset();
                        path4.moveTo(cos6, sin6);
                        float f26 = cos6 - f24;
                        float f27 = sin6 - f25;
                        float f28 = cos7 + cos9;
                        float f29 = sin7 + sin9;
                        path4.cubicTo(f26, f27, f28, f29, cos7, sin7);
                        PathMeasure pathMeasure = this.lastSegmentPathMeasure;
                        pathMeasure.setPath(path4, false);
                        float length = pathMeasure.getLength() * 0.9999f;
                        float[] fArr = this.lastSegmentPosition;
                        pathMeasure.getPosTan(length, fArr, null);
                        path = path3;
                        path.cubicTo(f26, f27, f28, f29, fArr[0], fArr[1]);
                        cos6 = cos7;
                        sin6 = sin7;
                    } else {
                        float f30 = sin7 + sin9;
                        path = path3;
                        sin6 = sin7;
                        path.cubicTo(cos6 - f24, sin6 - f25, cos7 + cos9, f30, cos7, sin6);
                        cos6 = cos7;
                    }
                } else {
                    i = i4;
                    d2 = d10;
                    cos6 = cos7;
                    sin6 = sin7;
                    if (d13 == d14 - 1.0d) {
                        i4 = i + 1;
                        ceil2 = d14;
                        d10 = d2;
                    } else {
                        path.lineTo(cos6, sin6);
                    }
                }
                d12 += d11;
                i4 = i + 1;
                ceil2 = d14;
                d10 = d2;
            }
            PointF pointF2 = (PointF) baseKeyframeAnimation.getValue();
            path.offset(pointF2.x, pointF2.y);
            path.close();
        }
        path.close();
        this.trimPaths.apply(path);
        this.isPathValid = z;
        return path;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i >= arrayList.size()) {
                return;
            }
            Content content = (Content) arrayList.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.type == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.trimPaths.namesAndValues.add(trimPathContent);
                    trimPathContent.addListener(this);
                }
            }
            i++;
        }
    }
}
