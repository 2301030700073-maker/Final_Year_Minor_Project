package androidx.compose.animation.core;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VectorizedKeyframesSpec implements VectorizedDurationBasedAnimationSpec {
    public PopupMenu$1 arcSpline;
    public final Easing defaultEasing;
    public final int durationMillis;
    public final MutableIntObjectMap keyframes;
    public AnimationVector lastInitialValue;
    public AnimationVector lastTargetValue;
    public int[] modes = VectorizedAnimationSpecKt.EmptyIntArray;
    public float[] posArray;
    public float[] slopeArray;
    public float[] times;
    public final MutableIntList timestamps;
    public AnimationVector valueVector;
    public AnimationVector velocityVector;

    public VectorizedKeyframesSpec(MutableIntList mutableIntList, MutableIntObjectMap mutableIntObjectMap, int i, Easing easing) {
        this.timestamps = mutableIntList;
        this.keyframes = mutableIntObjectMap;
        this.durationMillis = i;
        this.defaultEasing = easing;
        float[] fArr = VectorizedAnimationSpecKt.EmptyFloatArray;
        this.times = fArr;
        this.posArray = fArr;
        this.slopeArray = fArr;
        this.arcSpline = VectorizedAnimationSpecKt.EmptyArcSpline;
    }

    public final int findEntryForTimeMillis(int i) {
        int i2;
        MutableIntList mutableIntList = this.timestamps;
        int i3 = mutableIntList._size;
        int i4 = 0;
        if (i3 <= 0) {
            Gson$$ExternalSyntheticBUOutline0.m$2("");
            return 0;
        }
        int i5 = i3 - 1;
        while (true) {
            if (i4 <= i5) {
                i2 = (i4 + i5) >>> 1;
                int i6 = mutableIntList.content[i2];
                if (i6 >= i) {
                    if (i6 <= i) {
                        break;
                    }
                    i5 = i2 - 1;
                } else {
                    i4 = i2 + 1;
                }
            } else {
                i2 = -(i4 + 1);
                break;
            }
        }
        return i2 < -1 ? -(i2 + 2) : i2;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public final int getDelayMillis() {
        return 0;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public final int getDurationMillis() {
        return this.durationMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return getDurationMillis() * 1000000;
    }

    public final float getEasedTimeFromIndex(int i, int i2, boolean z) {
        Easing easing;
        float f;
        MutableIntList mutableIntList = this.timestamps;
        if (i >= mutableIntList._size - 1) {
            f = i2;
        } else {
            int i3 = mutableIntList.get(i);
            int i4 = mutableIntList.get(i + 1);
            if (i2 != i3) {
                int i5 = i4 - i3;
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) this.keyframes.get(i3);
                if (vectorizedKeyframeSpecElementInfo == null || (easing = vectorizedKeyframeSpecElementInfo.easing) == null) {
                    easing = this.defaultEasing;
                }
                float f2 = i5;
                float transform = easing.transform((i2 - i3) / f2);
                return z ? transform : ((f2 * transform) + i3) / 1000.0f;
            }
            f = i3;
        }
        return f / 1000.0f;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return getVelocityFromNanos(getDurationNanos(animationVector, animationVector2, animationVector3), animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        AnimationVector animationVector4;
        AnimationVector animationVector5;
        ArcSpline$Arc[][] arcSpline$ArcArr;
        AnimationVector animationVector6 = animationVector;
        long j2 = j / 1000000;
        int[] iArr = VectorizedAnimationSpecKt.EmptyIntArray;
        int i = this.durationMillis;
        long j3 = i;
        if (j2 < 0) {
            j2 = 0;
        }
        if (j2 <= j3) {
            j3 = j2;
        }
        int i2 = (int) j3;
        MutableIntObjectMap mutableIntObjectMap = this.keyframes;
        VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.get(i2);
        if (vectorizedKeyframeSpecElementInfo != null) {
            return vectorizedKeyframeSpecElementInfo.vectorValue;
        }
        if (i2 >= i) {
            return animationVector2;
        }
        if (i2 <= 0) {
            return animationVector6;
        }
        init(animationVector6, animationVector2, animationVector3);
        AnimationVector animationVector7 = this.valueVector;
        animationVector7.getClass();
        int i3 = 0;
        if (this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline) {
            float easedTimeFromIndex = getEasedTimeFromIndex(findEntryForTimeMillis(i2), i2, false);
            float[] fArr = this.posArray;
            ArcSpline$Arc[][] arcSpline$ArcArr2 = (ArcSpline$Arc[][]) this.arcSpline.this$0;
            int length = arcSpline$ArcArr2.length - 1;
            float f = arcSpline$ArcArr2[0][0].time1;
            float f2 = arcSpline$ArcArr2[length][0].time2;
            int length2 = fArr.length;
            if (easedTimeFromIndex < f || easedTimeFromIndex > f2) {
                if (easedTimeFromIndex > f2) {
                    f = f2;
                } else {
                    length = 0;
                }
                float f3 = easedTimeFromIndex - f;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length2 - 1) {
                    ArcSpline$Arc arcSpline$Arc = arcSpline$ArcArr2[length][i5];
                    boolean z = arcSpline$Arc.isLinear;
                    float f4 = arcSpline$Arc.ellipseCenterY;
                    float f5 = arcSpline$Arc.ellipseCenterX;
                    if (z) {
                        float f6 = arcSpline$Arc.time1;
                        float f7 = arcSpline$Arc.oneOverDeltaTime;
                        float f8 = arcSpline$Arc.x1;
                        arcSpline$ArcArr = arcSpline$ArcArr2;
                        fArr[i4] = (f5 * f3) + Animation.CC.m(arcSpline$Arc.x2, f8, (f - f6) * f7, f8);
                        float f9 = (f - f6) * f7;
                        float f10 = arcSpline$Arc.y1;
                        fArr[i4 + 1] = (f4 * f3) + Animation.CC.m(arcSpline$Arc.y2, f10, f9, f10);
                    } else {
                        arcSpline$ArcArr = arcSpline$ArcArr2;
                        arcSpline$Arc.setPoint(f);
                        fArr[i4] = (arcSpline$Arc.calcDX() * f3) + (arcSpline$Arc.ellipseA * arcSpline$Arc.tmpSinAngle) + f5;
                        fArr[i4 + 1] = (arcSpline$Arc.calcDY() * f3) + (arcSpline$Arc.ellipseB * arcSpline$Arc.tmpCosAngle) + f4;
                    }
                    i4 += 2;
                    i5++;
                    arcSpline$ArcArr2 = arcSpline$ArcArr;
                }
            } else {
                int length3 = arcSpline$ArcArr2.length;
                int i6 = 0;
                boolean z2 = false;
                while (i6 < length3) {
                    int i7 = i3;
                    int i8 = i7;
                    while (i7 < length2 - 1) {
                        ArcSpline$Arc arcSpline$Arc2 = arcSpline$ArcArr2[i6][i8];
                        if (easedTimeFromIndex <= arcSpline$Arc2.time2) {
                            if (arcSpline$Arc2.isLinear) {
                                float f11 = arcSpline$Arc2.time1;
                                float f12 = arcSpline$Arc2.oneOverDeltaTime;
                                float f13 = arcSpline$Arc2.x1;
                                fArr[i7] = Animation.CC.m(arcSpline$Arc2.x2, f13, (easedTimeFromIndex - f11) * f12, f13);
                                float f14 = arcSpline$Arc2.y1;
                                fArr[i7 + 1] = Animation.CC.m(arcSpline$Arc2.y2, f14, (easedTimeFromIndex - f11) * f12, f14);
                            } else {
                                arcSpline$Arc2.setPoint(easedTimeFromIndex);
                                fArr[i7] = (arcSpline$Arc2.ellipseA * arcSpline$Arc2.tmpSinAngle) + arcSpline$Arc2.ellipseCenterX;
                                fArr[i7 + 1] = (arcSpline$Arc2.ellipseB * arcSpline$Arc2.tmpCosAngle) + arcSpline$Arc2.ellipseCenterY;
                            }
                            z2 = true;
                        }
                        i7 += 2;
                        i8++;
                    }
                    if (z2) {
                        break;
                    }
                    i6++;
                    i3 = 0;
                }
            }
            int length4 = fArr.length;
            for (int i9 = 0; i9 < length4; i9++) {
                animationVector7.set$animation_core(i9, fArr[i9]);
            }
        } else {
            int findEntryForTimeMillis = findEntryForTimeMillis(i2);
            float easedTimeFromIndex2 = getEasedTimeFromIndex(findEntryForTimeMillis, i2, true);
            MutableIntList mutableIntList = this.timestamps;
            VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo2 = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.get(mutableIntList.get(findEntryForTimeMillis));
            if (vectorizedKeyframeSpecElementInfo2 != null && (animationVector5 = vectorizedKeyframeSpecElementInfo2.vectorValue) != null) {
                animationVector6 = animationVector5;
            }
            VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo3 = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.get(mutableIntList.get(findEntryForTimeMillis + 1));
            if (vectorizedKeyframeSpecElementInfo3 == null || (animationVector4 = vectorizedKeyframeSpecElementInfo3.vectorValue) == null) {
                animationVector4 = animationVector2;
            }
            int size$animation_core = animationVector7.getSize$animation_core();
            for (int i10 = 0; i10 < size$animation_core; i10++) {
                animationVector7.set$animation_core(i10, (animationVector4.get$animation_core(i10) * easedTimeFromIndex2) + ((1.0f - easedTimeFromIndex2) * animationVector6.get$animation_core(i10)));
            }
        }
        return animationVector7;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j2 = j / 1000000;
        int[] iArr = VectorizedAnimationSpecKt.EmptyIntArray;
        long j3 = this.durationMillis;
        if (j2 < 0) {
            j2 = 0;
        }
        long j4 = j2 > j3 ? j3 : j2;
        if (j4 < 0) {
            return animationVector3;
        }
        init(animationVector, animationVector2, animationVector3);
        AnimationVector animationVector4 = this.velocityVector;
        animationVector4.getClass();
        int i = 0;
        if (this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline) {
            int i2 = (int) j4;
            float easedTimeFromIndex = getEasedTimeFromIndex(findEntryForTimeMillis(i2), i2, false);
            float[] fArr = this.slopeArray;
            ArcSpline$Arc[][] arcSpline$ArcArr = (ArcSpline$Arc[][]) this.arcSpline.this$0;
            float f = arcSpline$ArcArr[0][0].time1;
            float f2 = arcSpline$ArcArr[arcSpline$ArcArr.length - 1][0].time2;
            if (easedTimeFromIndex < f) {
                easedTimeFromIndex = f;
            }
            if (easedTimeFromIndex <= f2) {
                f2 = easedTimeFromIndex;
            }
            int length = fArr.length;
            boolean z = false;
            for (ArcSpline$Arc[] arcSpline$ArcArr2 : arcSpline$ArcArr) {
                int i3 = 0;
                int i4 = 0;
                while (i3 < length - 1) {
                    ArcSpline$Arc arcSpline$Arc = arcSpline$ArcArr2[i4];
                    if (f2 <= arcSpline$Arc.time2) {
                        if (arcSpline$Arc.isLinear) {
                            fArr[i3] = arcSpline$Arc.ellipseCenterX;
                            fArr[i3 + 1] = arcSpline$Arc.ellipseCenterY;
                        } else {
                            arcSpline$Arc.setPoint(f2);
                            fArr[i3] = arcSpline$Arc.calcDX();
                            fArr[i3 + 1] = arcSpline$Arc.calcDY();
                        }
                        z = true;
                    }
                    i3 += 2;
                    i4++;
                }
                if (z) {
                    break;
                }
            }
            int length2 = fArr.length;
            while (i < length2) {
                animationVector4.set$animation_core(i, fArr[i]);
                i++;
            }
        } else {
            AnimationVector valueFromNanos = getValueFromNanos((j4 - 1) * 1000000, animationVector, animationVector2, animationVector3);
            AnimationVector valueFromNanos2 = getValueFromNanos(j4 * 1000000, animationVector, animationVector2, animationVector3);
            int size$animation_core = valueFromNanos.getSize$animation_core();
            while (i < size$animation_core) {
                animationVector4.set$animation_core(i, (valueFromNanos.get$animation_core(i) - valueFromNanos2.get$animation_core(i)) * 1000.0f);
                i++;
            }
        }
        return animationVector4;
    }

    public final void init(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        float[] fArr;
        boolean z = this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline;
        AnimationVector animationVector4 = this.valueVector;
        MutableIntObjectMap mutableIntObjectMap = this.keyframes;
        MutableIntList mutableIntList = this.timestamps;
        if (animationVector4 == null) {
            this.valueVector = animationVector.newVector$animation_core();
            this.velocityVector = animationVector3.newVector$animation_core();
            int i = mutableIntList._size;
            float[] fArr2 = new float[i];
            for (int i2 = 0; i2 < i; i2++) {
                fArr2[i2] = mutableIntList.get(i2) / 1000.0f;
            }
            this.times = fArr2;
            int i3 = mutableIntList._size;
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i4] = 0;
            }
            this.modes = iArr;
        }
        if (z) {
            if (this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline && Intrinsics.areEqual(this.lastInitialValue, animationVector) && Intrinsics.areEqual(this.lastTargetValue, animationVector2)) {
                return;
            }
            this.lastInitialValue = animationVector;
            this.lastTargetValue = animationVector2;
            int size$animation_core = animationVector.getSize$animation_core() + (animationVector.getSize$animation_core() % 2);
            this.posArray = new float[size$animation_core];
            this.slopeArray = new float[size$animation_core];
            int i5 = mutableIntList._size;
            float[][] fArr3 = new float[i5][];
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = mutableIntList.get(i6);
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.get(i7);
                if (i7 == 0 && vectorizedKeyframeSpecElementInfo == null) {
                    fArr = new float[size$animation_core];
                    for (int i8 = 0; i8 < size$animation_core; i8++) {
                        fArr[i8] = animationVector.get$animation_core(i8);
                    }
                } else if (i7 == this.durationMillis && vectorizedKeyframeSpecElementInfo == null) {
                    fArr = new float[size$animation_core];
                    for (int i9 = 0; i9 < size$animation_core; i9++) {
                        fArr[i9] = animationVector2.get$animation_core(i9);
                    }
                } else {
                    vectorizedKeyframeSpecElementInfo.getClass();
                    AnimationVector animationVector5 = vectorizedKeyframeSpecElementInfo.vectorValue;
                    float[] fArr4 = new float[size$animation_core];
                    for (int i10 = 0; i10 < size$animation_core; i10++) {
                        fArr4[i10] = animationVector5.get$animation_core(i10);
                    }
                    fArr = fArr4;
                }
                fArr3[i6] = fArr;
            }
            this.arcSpline = new PopupMenu$1(this.modes, this.times, fArr3);
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final boolean isInfinite() {
        return false;
    }
}
