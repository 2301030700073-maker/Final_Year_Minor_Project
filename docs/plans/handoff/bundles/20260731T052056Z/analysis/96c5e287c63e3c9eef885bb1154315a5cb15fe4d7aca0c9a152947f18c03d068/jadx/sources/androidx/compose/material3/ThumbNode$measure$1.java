package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThumbNode$measure$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ float $size;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThumbNode$measure$1(ThumbNode thumbNode, float f, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = thumbNode;
        this.$size = f;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new ThumbNode$measure$1((ThumbNode) obj2, this.$size, continuation, 0);
            case 1:
                return new ThumbNode$measure$1((ThumbNode) obj2, this.$size, continuation, 1);
            default:
                ThumbNode$measure$1 thumbNode$measure$1 = new ThumbNode$measure$1((ComposeScrollCaptureCallback) obj2, continuation);
                thumbNode$measure$1.$size = ((Number) obj).floatValue();
                return thumbNode$measure$1;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ThumbNode$measure$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((ThumbNode$measure$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((ThumbNode$measure$1) create(Float.valueOf(((Number) obj).floatValue()), (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                ThumbNode thumbNode = (ThumbNode) obj2;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = thumbNode.sizeAnim;
                    if (animatable == null) {
                        return unit;
                    }
                    Float f = new Float(this.$size);
                    AnimationSpec animationSpec = thumbNode.isPressed ? SwitchKt.SnapSpec : thumbNode.animationSpec;
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, f, animationSpec, null, this, 12);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return unit;
            case 1:
                ThumbNode thumbNode2 = (ThumbNode) obj2;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable2 = thumbNode2.offsetAnim;
                    if (animatable2 == null) {
                        return unit;
                    }
                    Float f2 = new Float(this.$size);
                    AnimationSpec animationSpec2 = thumbNode2.isPressed ? SwitchKt.SnapSpec : thumbNode2.animationSpec;
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable2, f2, animationSpec2, null, this, 12);
                    if (obj == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return unit;
            default:
                ComposeScrollCaptureCallback composeScrollCaptureCallback = (ComposeScrollCaptureCallback) obj2;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    float f3 = this.$size;
                    Object obj3 = composeScrollCaptureCallback.node.unmergedConfig.props.get(SemanticsActions.ScrollByOffset);
                    Function2 function2 = (Function2) (obj3 != null ? obj3 : null);
                    if (function2 == null) {
                        throw Modifier.CC.m("Required value was null.");
                    }
                    Offset offset = new Offset((Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L));
                    this.label = 1;
                    obj = function2.invoke(offset, this);
                    if (obj == coroutineSingletons3) {
                        return coroutineSingletons3;
                    }
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return new Float(Float.intBitsToFloat((int) (((Offset) obj).packedValue & 4294967295L)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThumbNode$measure$1(ComposeScrollCaptureCallback composeScrollCaptureCallback, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.this$0 = composeScrollCaptureCallback;
    }
}
