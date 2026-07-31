package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.model.layer.BaseLayer$$ExternalSyntheticLambda0;
import com.airbnb.lottie.value.ScaleXY;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TransformKeyframeAnimation {
    public final KeyframeAnimation anchorPoint;
    public final boolean autoOrient;
    public final TextKeyframeAnimation endOpacity;
    public final TextKeyframeAnimation opacity;
    public final BaseKeyframeAnimation position;
    public final TextKeyframeAnimation rotation;
    public final TextKeyframeAnimation rotationX;
    public final TextKeyframeAnimation rotationY;
    public final TextKeyframeAnimation rotationZ;
    public final PointKeyframeAnimation scale;
    public final TextKeyframeAnimation skew;
    public final TextKeyframeAnimation skewAngle;
    public final Matrix skewMatrix1;
    public final Matrix skewMatrix2;
    public final Matrix skewMatrix3;
    public final float[] skewValues;
    public final TextKeyframeAnimation startOpacity;
    public final Matrix matrix = new Matrix();
    public float cachedRotationX = Float.NaN;
    public float cachedRotationY = Float.NaN;
    public float cachedRotationZ = Float.NaN;
    public float cachedCosX = 1.0f;
    public float cachedCosY = 1.0f;
    public boolean rotation3DCacheDirty = true;

    public TransformKeyframeAnimation(AnimatableTransform animatableTransform) {
        Headers.Builder builder = animatableTransform.anchorPoint;
        this.anchorPoint = (KeyframeAnimation) (builder == null ? null : builder.createAnimation());
        AnimatableValue animatableValue = animatableTransform.position;
        this.position = animatableValue == null ? null : animatableValue.createAnimation();
        AnimatableTextFrame animatableTextFrame = animatableTransform.scale;
        this.scale = (PointKeyframeAnimation) (animatableTextFrame == null ? null : animatableTextFrame.createAnimation());
        AnimatableFloatValue animatableFloatValue = animatableTransform.rotation;
        this.rotation = animatableFloatValue == null ? null : animatableFloatValue.createAnimation();
        AnimatableFloatValue animatableFloatValue2 = animatableTransform.skew;
        TextKeyframeAnimation createAnimation = animatableFloatValue2 == null ? null : animatableFloatValue2.createAnimation();
        this.skew = createAnimation;
        this.autoOrient = animatableTransform.autoOrient;
        AnimatableFloatValue animatableFloatValue3 = animatableTransform.rotationX;
        this.rotationX = animatableFloatValue3 == null ? null : animatableFloatValue3.createAnimation();
        AnimatableFloatValue animatableFloatValue4 = animatableTransform.rotationY;
        this.rotationY = animatableFloatValue4 == null ? null : animatableFloatValue4.createAnimation();
        AnimatableFloatValue animatableFloatValue5 = animatableTransform.rotationZ;
        this.rotationZ = animatableFloatValue5 == null ? null : animatableFloatValue5.createAnimation();
        if (createAnimation != null) {
            this.skewMatrix1 = new Matrix();
            this.skewMatrix2 = new Matrix();
            this.skewMatrix3 = new Matrix();
            this.skewValues = new float[9];
        } else {
            this.skewMatrix1 = null;
            this.skewMatrix2 = null;
            this.skewMatrix3 = null;
            this.skewValues = null;
        }
        AnimatableFloatValue animatableFloatValue6 = animatableTransform.skewAngle;
        this.skewAngle = animatableFloatValue6 == null ? null : animatableFloatValue6.createAnimation();
        AnimatableTextFrame animatableTextFrame2 = animatableTransform.opacity;
        if (animatableTextFrame2 != null) {
            this.opacity = (TextKeyframeAnimation) animatableTextFrame2.createAnimation();
        }
        AnimatableFloatValue animatableFloatValue7 = animatableTransform.startOpacity;
        if (animatableFloatValue7 != null) {
            this.startOpacity = animatableFloatValue7.createAnimation();
        } else {
            this.startOpacity = null;
        }
        AnimatableFloatValue animatableFloatValue8 = animatableTransform.endOpacity;
        if (animatableFloatValue8 != null) {
            this.endOpacity = animatableFloatValue8.createAnimation();
        } else {
            this.endOpacity = null;
        }
    }

    public final void addAnimationsToLayer(BaseLayer baseLayer) {
        baseLayer.addAnimation(this.opacity);
        baseLayer.addAnimation(this.startOpacity);
        baseLayer.addAnimation(this.endOpacity);
        baseLayer.addAnimation(this.anchorPoint);
        baseLayer.addAnimation(this.position);
        baseLayer.addAnimation(this.scale);
        baseLayer.addAnimation(this.rotation);
        baseLayer.addAnimation(this.skew);
        baseLayer.addAnimation(this.skewAngle);
        baseLayer.addAnimation(this.rotationX);
        baseLayer.addAnimation(this.rotationY);
        baseLayer.addAnimation(this.rotationZ);
    }

    public final void addListener(BaseKeyframeAnimation.AnimationListener animationListener) {
        TextKeyframeAnimation textKeyframeAnimation = this.opacity;
        if (textKeyframeAnimation != null) {
            textKeyframeAnimation.addUpdateListener(animationListener);
        }
        TextKeyframeAnimation textKeyframeAnimation2 = this.startOpacity;
        if (textKeyframeAnimation2 != null) {
            textKeyframeAnimation2.addUpdateListener(animationListener);
        }
        TextKeyframeAnimation textKeyframeAnimation3 = this.endOpacity;
        if (textKeyframeAnimation3 != null) {
            textKeyframeAnimation3.addUpdateListener(animationListener);
        }
        KeyframeAnimation keyframeAnimation = this.anchorPoint;
        if (keyframeAnimation != null) {
            keyframeAnimation.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation = this.position;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.addUpdateListener(animationListener);
        }
        PointKeyframeAnimation pointKeyframeAnimation = this.scale;
        if (pointKeyframeAnimation != null) {
            pointKeyframeAnimation.addUpdateListener(animationListener);
        }
        TextKeyframeAnimation textKeyframeAnimation4 = this.rotation;
        if (textKeyframeAnimation4 != null) {
            textKeyframeAnimation4.addUpdateListener(animationListener);
        }
        TextKeyframeAnimation textKeyframeAnimation5 = this.skew;
        if (textKeyframeAnimation5 != null) {
            textKeyframeAnimation5.addUpdateListener(animationListener);
        }
        TextKeyframeAnimation textKeyframeAnimation6 = this.skewAngle;
        if (textKeyframeAnimation6 != null) {
            textKeyframeAnimation6.addUpdateListener(animationListener);
        }
        TextKeyframeAnimation textKeyframeAnimation7 = this.rotationX;
        if (textKeyframeAnimation7 != null) {
            textKeyframeAnimation7.addUpdateListener(animationListener);
            textKeyframeAnimation7.addUpdateListener(new BaseLayer$$ExternalSyntheticLambda0(1, this));
        }
        TextKeyframeAnimation textKeyframeAnimation8 = this.rotationY;
        if (textKeyframeAnimation8 != null) {
            textKeyframeAnimation8.addUpdateListener(animationListener);
            textKeyframeAnimation8.addUpdateListener(new BaseLayer$$ExternalSyntheticLambda0(2, this));
        }
        TextKeyframeAnimation textKeyframeAnimation9 = this.rotationZ;
        if (textKeyframeAnimation9 != null) {
            textKeyframeAnimation9.addUpdateListener(animationListener);
            textKeyframeAnimation9.addUpdateListener(new BaseLayer$$ExternalSyntheticLambda0(3, this));
        }
    }

    public final void clearSkewValues() {
        for (int i = 0; i < 9; i++) {
            this.skewValues[i] = 0.0f;
        }
    }

    public final Matrix getMatrix() {
        PointF pointF;
        ScaleXY scaleXY;
        PointF pointF2;
        Matrix matrix = this.matrix;
        matrix.reset();
        PointKeyframeAnimation pointKeyframeAnimation = this.scale;
        KeyframeAnimation keyframeAnimation = this.anchorPoint;
        BaseKeyframeAnimation baseKeyframeAnimation = this.position;
        TextKeyframeAnimation textKeyframeAnimation = this.rotationZ;
        TextKeyframeAnimation textKeyframeAnimation2 = this.rotationY;
        TextKeyframeAnimation textKeyframeAnimation3 = this.rotationX;
        if ((textKeyframeAnimation3 == null || textKeyframeAnimation3.getFloatValue() == RecyclerView.DECELERATION_RATE) && ((textKeyframeAnimation2 == null || textKeyframeAnimation2.getFloatValue() == RecyclerView.DECELERATION_RATE) && (textKeyframeAnimation == null || textKeyframeAnimation.getFloatValue() == RecyclerView.DECELERATION_RATE))) {
            if (baseKeyframeAnimation != null && (pointF2 = (PointF) baseKeyframeAnimation.getValue()) != null) {
                float f = pointF2.x;
                if (f != RecyclerView.DECELERATION_RATE || pointF2.y != RecyclerView.DECELERATION_RATE) {
                    matrix.preTranslate(f, pointF2.y);
                }
            }
            if (!this.autoOrient) {
                TextKeyframeAnimation textKeyframeAnimation4 = this.rotation;
                if (textKeyframeAnimation4 != null) {
                    float floatValue = textKeyframeAnimation4.getFloatValue();
                    if (floatValue != RecyclerView.DECELERATION_RATE) {
                        matrix.preRotate(floatValue);
                    }
                }
            } else if (baseKeyframeAnimation != null) {
                float f2 = baseKeyframeAnimation.progress;
                PointF pointF3 = (PointF) baseKeyframeAnimation.getValue();
                float f3 = pointF3.x;
                float f4 = pointF3.y;
                baseKeyframeAnimation.setProgress(1.0E-4f + f2);
                PointF pointF4 = (PointF) baseKeyframeAnimation.getValue();
                baseKeyframeAnimation.setProgress(f2);
                matrix.preRotate((float) Math.toDegrees(Math.atan2(pointF4.y - f4, pointF4.x - f3)));
            }
            if (this.skew != null) {
                TextKeyframeAnimation textKeyframeAnimation5 = this.skewAngle;
                float cos = textKeyframeAnimation5 == null ? 0.0f : (float) Math.cos(Math.toRadians((-textKeyframeAnimation5.getFloatValue()) + 90.0f));
                float sin = textKeyframeAnimation5 == null ? 1.0f : (float) Math.sin(Math.toRadians((-textKeyframeAnimation5.getFloatValue()) + 90.0f));
                float tan = (float) Math.tan(Math.toRadians(r4.getFloatValue()));
                clearSkewValues();
                float[] fArr = this.skewValues;
                fArr[0] = cos;
                fArr[1] = sin;
                float f5 = -sin;
                fArr[3] = f5;
                fArr[4] = cos;
                fArr[8] = 1.0f;
                Matrix matrix2 = this.skewMatrix1;
                matrix2.setValues(fArr);
                clearSkewValues();
                fArr[0] = 1.0f;
                fArr[3] = tan;
                fArr[4] = 1.0f;
                fArr[8] = 1.0f;
                Matrix matrix3 = this.skewMatrix2;
                matrix3.setValues(fArr);
                clearSkewValues();
                fArr[0] = cos;
                fArr[1] = f5;
                fArr[3] = sin;
                fArr[4] = cos;
                fArr[8] = 1.0f;
                Matrix matrix4 = this.skewMatrix3;
                matrix4.setValues(fArr);
                matrix3.preConcat(matrix2);
                matrix4.preConcat(matrix3);
                matrix.preConcat(matrix4);
            }
            if (pointKeyframeAnimation != null && (scaleXY = (ScaleXY) pointKeyframeAnimation.getValue()) != null) {
                float f6 = scaleXY.scaleX;
                if (f6 != 1.0f || scaleXY.scaleY != 1.0f) {
                    matrix.preScale(f6, scaleXY.scaleY);
                }
            }
            if (keyframeAnimation != null && (pointF = (PointF) keyframeAnimation.getValue()) != null) {
                float f7 = pointF.x;
                if (f7 != RecyclerView.DECELERATION_RATE || pointF.y != RecyclerView.DECELERATION_RATE) {
                    matrix.preTranslate(-f7, -pointF.y);
                }
            }
        } else {
            float floatValue2 = textKeyframeAnimation3 != null ? textKeyframeAnimation3.getFloatValue() : 0.0f;
            float floatValue3 = textKeyframeAnimation2 != null ? textKeyframeAnimation2.getFloatValue() : 0.0f;
            float floatValue4 = textKeyframeAnimation != null ? textKeyframeAnimation.getFloatValue() : 0.0f;
            if (this.rotation3DCacheDirty || floatValue2 != this.cachedRotationX || floatValue3 != this.cachedRotationY || floatValue4 != this.cachedRotationZ) {
                this.cachedRotationX = floatValue2;
                this.cachedRotationY = floatValue3;
                this.cachedRotationZ = floatValue4;
                if (floatValue2 != RecyclerView.DECELERATION_RATE) {
                    this.cachedCosX = (float) Math.cos(Math.toRadians(floatValue2));
                } else {
                    this.cachedCosX = 1.0f;
                }
                if (floatValue3 != RecyclerView.DECELERATION_RATE) {
                    this.cachedCosY = (float) Math.cos(Math.toRadians(floatValue3));
                } else {
                    this.cachedCosY = 1.0f;
                }
                this.rotation3DCacheDirty = false;
            }
            PointF pointF5 = keyframeAnimation == null ? null : (PointF) keyframeAnimation.getValue();
            PointF pointF6 = baseKeyframeAnimation == null ? null : (PointF) baseKeyframeAnimation.getValue();
            ScaleXY scaleXY2 = pointKeyframeAnimation != null ? (ScaleXY) pointKeyframeAnimation.getValue() : null;
            float f8 = scaleXY2 != null ? scaleXY2.scaleX : 1.0f;
            float f9 = scaleXY2 != null ? scaleXY2.scaleY : 1.0f;
            float f10 = this.cachedCosX;
            float f11 = this.cachedCosY;
            matrix.reset();
            if (pointF6 != null) {
                float f12 = pointF6.x;
                if (f12 != RecyclerView.DECELERATION_RATE || pointF6.y != RecyclerView.DECELERATION_RATE) {
                    matrix.preTranslate(f12, pointF6.y);
                }
            }
            if (floatValue4 != RecyclerView.DECELERATION_RATE) {
                matrix.preRotate(floatValue4);
            }
            if (floatValue3 != RecyclerView.DECELERATION_RATE) {
                matrix.preScale(f11, 1.0f);
            }
            if (floatValue2 != RecyclerView.DECELERATION_RATE) {
                matrix.preScale(1.0f, f10);
            }
            if (f8 != 1.0f || f9 != 1.0f) {
                matrix.preScale(f8, f9);
            }
            if (pointF5 != null) {
                float f13 = pointF5.x;
                if (f13 != RecyclerView.DECELERATION_RATE || pointF5.y != RecyclerView.DECELERATION_RATE) {
                    matrix.preTranslate(-f13, -pointF5.y);
                    return matrix;
                }
            }
        }
        return matrix;
    }

    public final Matrix getMatrixForRepeater(float f) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.position;
        PointF pointF = baseKeyframeAnimation == null ? null : (PointF) baseKeyframeAnimation.getValue();
        PointKeyframeAnimation pointKeyframeAnimation = this.scale;
        ScaleXY scaleXY = pointKeyframeAnimation == null ? null : (ScaleXY) pointKeyframeAnimation.getValue();
        KeyframeAnimation keyframeAnimation = this.anchorPoint;
        PointF pointF2 = keyframeAnimation != null ? (PointF) keyframeAnimation.getValue() : null;
        Matrix matrix = this.matrix;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f, pointF.y * f);
        }
        float f2 = RecyclerView.DECELERATION_RATE;
        TextKeyframeAnimation textKeyframeAnimation = this.rotationX;
        float floatValue = textKeyframeAnimation != null ? textKeyframeAnimation.getFloatValue() * f : 0.0f;
        TextKeyframeAnimation textKeyframeAnimation2 = this.rotationY;
        float floatValue2 = textKeyframeAnimation2 != null ? textKeyframeAnimation2.getFloatValue() * f : 0.0f;
        TextKeyframeAnimation textKeyframeAnimation3 = this.rotationZ;
        float floatValue3 = textKeyframeAnimation3 != null ? textKeyframeAnimation3.getFloatValue() * f : 0.0f;
        if (floatValue == RecyclerView.DECELERATION_RATE && floatValue2 == RecyclerView.DECELERATION_RATE && floatValue3 == RecyclerView.DECELERATION_RATE) {
            TextKeyframeAnimation textKeyframeAnimation4 = this.rotation;
            if (textKeyframeAnimation4 != null) {
                float floatValue4 = ((Float) textKeyframeAnimation4.getValue()).floatValue() * f;
                float f3 = pointF2 == null ? 0.0f : pointF2.x;
                if (pointF2 != null) {
                    f2 = pointF2.y;
                }
                matrix.preRotate(floatValue4, f3, f2);
            }
        } else {
            float cos = floatValue != RecyclerView.DECELERATION_RATE ? (float) Math.cos(Math.toRadians(floatValue)) : 1.0f;
            float cos2 = floatValue2 != RecyclerView.DECELERATION_RATE ? (float) Math.cos(Math.toRadians(floatValue2)) : 1.0f;
            if (floatValue3 != RecyclerView.DECELERATION_RATE) {
                float f4 = pointF2 == null ? 0.0f : pointF2.x;
                if (pointF2 != null) {
                    f2 = pointF2.y;
                }
                matrix.preRotate(floatValue3, f4, f2);
            }
            if (floatValue2 != RecyclerView.DECELERATION_RATE) {
                matrix.preScale(cos2, 1.0f);
            }
            if (floatValue != RecyclerView.DECELERATION_RATE) {
                matrix.preScale(1.0f, cos);
            }
        }
        if (scaleXY != null) {
            double d = f;
            matrix.preScale((float) Math.pow(scaleXY.scaleX, d), (float) Math.pow(scaleXY.scaleY, d));
        }
        return matrix;
    }
}
