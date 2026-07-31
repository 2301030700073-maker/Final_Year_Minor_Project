package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextKeyframeAnimation extends KeyframeAnimation {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextKeyframeAnimation(List list, int i) {
        super(list);
        this.$r8$classId = i;
    }

    public static float getFloatValue(Keyframe keyframe, float f) {
        Object obj = keyframe.startValue;
        if (obj == null || keyframe.endValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Missing values for keyframe.");
            return RecyclerView.DECELERATION_RATE;
        }
        float f2 = keyframe.startValueFloat;
        if (f2 == -3987645.8f) {
            f2 = ((Float) obj).floatValue();
            keyframe.startValueFloat = f2;
        }
        float f3 = keyframe.endValueFloat;
        if (f3 == -3987645.8f) {
            f3 = ((Float) keyframe.endValue).floatValue();
            keyframe.endValueFloat = f3;
        }
        return MiscUtils.lerp(f2, f3, f);
    }

    public int getIntValue(Keyframe keyframe, float f) {
        if (keyframe.startValue == null || keyframe.endValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Missing values for keyframe.");
            return 0;
        }
        return UuidKt.evaluate(((Integer) keyframe.startValue).intValue(), MiscUtils.clamp(f, RecyclerView.DECELERATION_RATE, 1.0f), ((Integer) keyframe.endValue).intValue());
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        Object obj;
        int i;
        switch (this.$r8$classId) {
            case 0:
                return (f != 1.0f || (obj = keyframe.endValue) == null) ? (DocumentData) keyframe.startValue : (DocumentData) obj;
            case 1:
                return Integer.valueOf(getIntValue(keyframe, f));
            case 2:
                return Float.valueOf(getFloatValue(keyframe, f));
            default:
                Object obj2 = keyframe.startValue;
                if (obj2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Missing values for keyframe.");
                    return null;
                }
                Object obj3 = keyframe.endValue;
                if (obj3 == null) {
                    i = keyframe.startValueInt;
                    if (i == 784923401) {
                        i = ((Integer) obj2).intValue();
                        keyframe.startValueInt = i;
                    }
                } else {
                    int i2 = keyframe.endValueInt;
                    if (i2 == 784923401) {
                        i = ((Integer) obj3).intValue();
                        keyframe.endValueInt = i;
                    } else {
                        i = i2;
                    }
                }
                int i3 = keyframe.startValueInt;
                if (i3 == 784923401) {
                    i3 = ((Integer) obj2).intValue();
                    keyframe.startValueInt = i3;
                }
                PointF pointF = MiscUtils.pathFromDataCurrentPoint;
                return Integer.valueOf((int) ((f * (i - i3)) + i3));
        }
    }

    public float getFloatValue() {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        return getFloatValue(this.keyframesWrapper.getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
