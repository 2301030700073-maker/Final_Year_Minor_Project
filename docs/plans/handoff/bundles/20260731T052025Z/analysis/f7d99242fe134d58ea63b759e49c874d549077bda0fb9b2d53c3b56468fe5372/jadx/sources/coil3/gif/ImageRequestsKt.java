package coil3.gif;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageRequestsKt {
    private static final Extras.Key<Integer> repeatCountKey = new Extras.Key<>(-1);
    private static final Extras.Key<AnimatedTransformation> animatedTransformationKey = new Extras.Key<>(null);
    private static final Extras.Key<Function0> animationStartCallbackKey = new Extras.Key<>(null);
    private static final Extras.Key<Function0> animationEndCallbackKey = new Extras.Key<>(null);

    public static final ImageRequest.Builder animatedTransformation(ImageRequest.Builder builder, AnimatedTransformation animatedTransformation) {
        builder.getExtras().set(animatedTransformationKey, animatedTransformation);
        return builder;
    }

    public static final AnimatedTransformation getAnimatedTransformation(ImageRequest imageRequest) {
        return (AnimatedTransformation) ExtrasKt.getExtra(imageRequest, animatedTransformationKey);
    }

    public static final Function0 getAnimationEndCallback(ImageRequest imageRequest) {
        return (Function0) ExtrasKt.getExtra(imageRequest, animationEndCallbackKey);
    }

    public static final Function0 getAnimationStartCallback(ImageRequest imageRequest) {
        return (Function0) ExtrasKt.getExtra(imageRequest, animationStartCallbackKey);
    }

    public static final int getRepeatCount(ImageRequest imageRequest) {
        return ((Number) ExtrasKt.getExtra(imageRequest, repeatCountKey)).intValue();
    }

    public static final ImageRequest.Builder onAnimationEnd(ImageRequest.Builder builder, Function0 function0) {
        builder.getExtras().set(animationEndCallbackKey, function0);
        return builder;
    }

    public static final ImageRequest.Builder onAnimationStart(ImageRequest.Builder builder, Function0 function0) {
        builder.getExtras().set(animationStartCallbackKey, function0);
        return builder;
    }

    public static final ImageRequest.Builder repeatCount(ImageRequest.Builder builder, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            if (i < -2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid repeatCount: ", i));
                return null;
            }
        } else if (i < -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid repeatCount: ", i));
            return null;
        }
        builder.getExtras().set(repeatCountKey, Integer.valueOf(i));
        return builder;
    }

    public static /* synthetic */ void getAnimatedTransformation$annotations(ImageRequest imageRequest) {
    }

    public static /* synthetic */ void getAnimatedTransformation$annotations(Options options) {
    }

    public static final AnimatedTransformation getAnimatedTransformation(Options options) {
        return (AnimatedTransformation) ExtrasKt.getExtra(options, animatedTransformationKey);
    }

    public static final Function0 getAnimationEndCallback(Options options) {
        return (Function0) ExtrasKt.getExtra(options, animationEndCallbackKey);
    }

    public static final Function0 getAnimationStartCallback(Options options) {
        return (Function0) ExtrasKt.getExtra(options, animationStartCallbackKey);
    }

    public static final Extras.Key<AnimatedTransformation> getAnimatedTransformation(Extras.Key.Companion companion) {
        return animatedTransformationKey;
    }

    public static final Extras.Key<Function0> getAnimationEndCallback(Extras.Key.Companion companion) {
        return animationEndCallbackKey;
    }

    public static final Extras.Key<Function0> getAnimationStartCallback(Extras.Key.Companion companion) {
        return animationStartCallbackKey;
    }

    public static final int getRepeatCount(Options options) {
        return ((Number) ExtrasKt.getExtra(options, repeatCountKey)).intValue();
    }

    public static final Extras.Key<Integer> getRepeatCount(Extras.Key.Companion companion) {
        return repeatCountKey;
    }

    public static /* synthetic */ void getAnimatedTransformation$annotations(Extras.Key.Companion companion) {
    }

    public static final ImageLoader.Builder repeatCount(ImageLoader.Builder builder, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            if (i < -2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid repeatCount: ", i));
                return null;
            }
        } else if (i < -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid repeatCount: ", i));
            return null;
        }
        builder.getExtras().set(repeatCountKey, Integer.valueOf(i));
        return builder;
    }
}
