package coil3.gif.internal;

import android.graphics.Canvas;
import android.graphics.PostProcessor;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.gif.AnimatedTransformation;
import coil3.gif.PixelOpacity;
import java.nio.ByteBuffer;
import kotlin.jvm.functions.Function0;
import okio.BufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtilsKt {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PixelOpacity.values().length];
            try {
                iArr[PixelOpacity.UNCHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PixelOpacity.TRANSLUCENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PixelOpacity.OPAQUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Animatable2.AnimationCallback animatable2CallbackOf(final Function0 function0, final Function0 function02) {
        return new Animatable2.AnimationCallback() { // from class: coil3.gif.internal.UtilsKt$animatable2CallbackOf$1
            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                Function0 function03 = function02;
                if (function03 != null) {
                    function03.invoke();
                }
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationStart(Drawable drawable) {
                Function0 function03 = Function0.this;
                if (function03 != null) {
                    function03.invoke();
                }
            }
        };
    }

    public static final Animatable2Compat$AnimationCallback animatable2CompatCallbackOf(final Function0 function0, final Function0 function02) {
        return new Animatable2Compat$AnimationCallback() { // from class: coil3.gif.internal.UtilsKt$animatable2CompatCallbackOf$1
            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                Function0 function03 = function02;
                if (function03 != null) {
                    function03.invoke();
                }
            }

            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
            public void onAnimationStart(Drawable drawable) {
                Function0 function03 = Function0.this;
                if (function03 != null) {
                    function03.invoke();
                }
            }
        };
    }

    public static final PostProcessor asPostProcessor(final AnimatedTransformation animatedTransformation) {
        return new PostProcessor() { // from class: coil3.gif.internal.UtilsKt$$ExternalSyntheticLambda0
            @Override // android.graphics.PostProcessor
            public final int onPostProcess(Canvas canvas) {
                int asPostProcessor$lambda$0;
                asPostProcessor$lambda$0 = UtilsKt.asPostProcessor$lambda$0(AnimatedTransformation.this, canvas);
                return asPostProcessor$lambda$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int asPostProcessor$lambda$0(AnimatedTransformation animatedTransformation, Canvas canvas) {
        return getFlag(animatedTransformation.transform(canvas));
    }

    public static final int getFlag(PixelOpacity pixelOpacity) {
        int i = WhenMappings.$EnumSwitchMapping$0[pixelOpacity.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return -3;
        }
        if (i == 3) {
            return -1;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return 0;
    }

    public static final ByteBuffer squashToDirectByteBuffer(BufferedSource bufferedSource) {
        bufferedSource.request(Long.MAX_VALUE);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect((int) bufferedSource.getBuffer().size);
        while (!bufferedSource.getBuffer().exhausted()) {
            bufferedSource.getBuffer().read(allocateDirect);
        }
        allocateDirect.flip();
        return allocateDirect;
    }
}
