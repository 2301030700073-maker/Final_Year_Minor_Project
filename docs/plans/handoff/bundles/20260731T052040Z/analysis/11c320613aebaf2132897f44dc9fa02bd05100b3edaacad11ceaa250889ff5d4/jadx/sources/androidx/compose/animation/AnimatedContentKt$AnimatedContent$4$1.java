package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$4$1 extends Lambda implements Function1 {
    public static final AnimatedContentKt$AnimatedContent$4$1 INSTANCE;
    public static final AnimatedContentKt$AnimatedContent$4$1 INSTANCE$1;
    public static final AnimatedContentKt$AnimatedContent$4$1 INSTANCE$2;
    public static final AnimatedContentKt$AnimatedContent$4$1 INSTANCE$3;
    public static final AnimatedContentKt$AnimatedContent$4$1 INSTANCE$4;
    public static final AnimatedContentKt$AnimatedContent$4$1 INSTANCE$5;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new AnimatedContentKt$AnimatedContent$4$1(i, 0);
        INSTANCE$1 = new AnimatedContentKt$AnimatedContent$4$1(i, 1);
        INSTANCE$2 = new AnimatedContentKt$AnimatedContent$4$1(i, 2);
        INSTANCE$3 = new AnimatedContentKt$AnimatedContent$4$1(i, 3);
        INSTANCE$4 = new AnimatedContentKt$AnimatedContent$4$1(i, 4);
        INSTANCE$5 = new AnimatedContentKt$AnimatedContent$4$1(i, 5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AnimatedContentKt$AnimatedContent$4$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return new ContentTransform(EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(220, 4, null)).plus(new EnterTransitionImpl(new TransitionData((Fade) null, new Scale(0.92f, TransformOrigin.Center, ArcSplineKt.tween$default(220, 4, null)), (LinkedHashMap) null, Token.INC))), EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(90, 6, null)));
            case 1:
                return obj;
            case 2:
                long m242convertvNxB06k = Color.m242convertvNxB06k(((Color) obj).value, ColorSpaces.Oklab);
                return new AnimationVector4D(Color.m245getAlphaimpl(m242convertvNxB06k), Color.m249getRedimpl(m242convertvNxB06k), Color.m248getGreenimpl(m242convertvNxB06k), Color.m246getBlueimpl(m242convertvNxB06k));
            case 3:
                long j = ((TransformOrigin) obj).packedValue;
                return new AnimationVector2D(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
            case 4:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                float f = animationVector2D.v1;
                float f2 = animationVector2D.v2;
                return new TransformOrigin((Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
            default:
                return ArcSplineKt.spring$default(0.0f, 0.0f, null, 7);
        }
    }
}
