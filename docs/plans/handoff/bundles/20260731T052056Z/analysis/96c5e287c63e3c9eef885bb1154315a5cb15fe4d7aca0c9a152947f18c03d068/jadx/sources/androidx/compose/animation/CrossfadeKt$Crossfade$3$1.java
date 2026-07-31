package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CrossfadeKt$Crossfade$3$1 extends Lambda implements Function1 {
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$1;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$2;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$3;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$4;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$5;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$6;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$7;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$8;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$9;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new CrossfadeKt$Crossfade$3$1(i, 1);
        INSTANCE$2 = new CrossfadeKt$Crossfade$3$1(i, 2);
        INSTANCE$3 = new CrossfadeKt$Crossfade$3$1(i, 3);
        INSTANCE$4 = new CrossfadeKt$Crossfade$3$1(i, 4);
        INSTANCE$5 = new CrossfadeKt$Crossfade$3$1(i, 5);
        INSTANCE = new CrossfadeKt$Crossfade$3$1(i, 0);
        INSTANCE$6 = new CrossfadeKt$Crossfade$3$1(i, 6);
        INSTANCE$7 = new CrossfadeKt$Crossfade$3$1(i, 7);
        INSTANCE$8 = new CrossfadeKt$Crossfade$3$1(i, 8);
        INSTANCE$9 = new CrossfadeKt$Crossfade$3$1(i, 9);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CrossfadeKt$Crossfade$3$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return obj;
            case 1:
                return CrossfadeKt.togetherWith(EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(220, 4, null), 2).plus(EnterExitTransitionKt.m17scaleInL8ZKhE$default(ArcSplineKt.tween$default(220, 4, null), 4)), EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(90, 6, null), 2));
            case 2:
                return obj;
            case 3:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case 4:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                return bool2;
            case 5:
                long m427convertvNxB06k = Color.m427convertvNxB06k(((Color) obj).value, ColorSpaces.Oklab);
                return new AnimationVector4D(Color.m429getAlphaimpl(m427convertvNxB06k), Color.m433getRedimpl(m427convertvNxB06k), Color.m432getGreenimpl(m427convertvNxB06k), Color.m430getBlueimpl(m427convertvNxB06k));
            case 6:
                long j = ((TransformOrigin) obj).packedValue;
                return new AnimationVector2D(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
            case 7:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                return new TransformOrigin(ColorKt.TransformOrigin(animationVector2D.v1, animationVector2D.v2));
            case 8:
                return ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7);
            case 9:
                return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
            case 10:
                return new IntSize((((int) (((IntSize) obj).packedValue & 4294967295L)) & 4294967295L) | (0 << 32));
            default:
                return new IntSize((((int) (((IntSize) obj).packedValue & 4294967295L)) & 4294967295L) | (0 << 32));
        }
    }
}
