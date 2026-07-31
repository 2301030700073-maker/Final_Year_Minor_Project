package com.airbnb.lottie.parser;

import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AnimatableTransformParser {
    public static final AndroidSvg NAMES = AndroidSvg.of("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa", "rx", "ry");
    public static final AndroidSvg ANIMATABLE_NAMES = AndroidSvg.of("k");

    public static void ensureValidRotationKeyframes(AnimatableFloatValue animatableFloatValue, LottieComposition lottieComposition) {
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        List list = (List) animatableFloatValue.fragment;
        if (list.isEmpty()) {
            list.add(new Keyframe(lottieComposition, valueOf, valueOf, (Interpolator) null, RecyclerView.DECELERATION_RATE, Float.valueOf(lottieComposition.endFrame)));
        } else if (((Keyframe) list.get(0)).startValue == null) {
            list.set(0, new Keyframe(lottieComposition, valueOf, valueOf, (Interpolator) null, RecyclerView.DECELERATION_RATE, Float.valueOf(lottieComposition.endFrame)));
        }
    }

    public static boolean isRotationIdentity(AnimatableFloatValue animatableFloatValue) {
        if (animatableFloatValue != null) {
            return animatableFloatValue.isStatic() && ((Float) ((Keyframe) ((List) animatableFloatValue.fragment).get(0)).startValue).floatValue() == RecyclerView.DECELERATION_RATE;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x011c, code lost:
    
        if (r1.scaleY == 1.0f) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.airbnb.lottie.model.animatable.AnimatableTransform parse(com.airbnb.lottie.parser.moshi.JsonUtf8Reader r27, com.airbnb.lottie.LottieComposition r28) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.parse(com.airbnb.lottie.parser.moshi.JsonUtf8Reader, com.airbnb.lottie.LottieComposition):com.airbnb.lottie.model.animatable.AnimatableTransform");
    }
}
