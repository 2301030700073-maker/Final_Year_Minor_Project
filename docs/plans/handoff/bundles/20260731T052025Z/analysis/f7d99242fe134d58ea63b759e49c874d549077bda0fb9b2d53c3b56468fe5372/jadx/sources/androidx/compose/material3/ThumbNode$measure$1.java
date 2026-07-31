package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThumbNode$measure$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ float $size;
    public int label;
    public final /* synthetic */ ThumbNode this$0;

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
        float f = this.$size;
        ThumbNode thumbNode = this.this$0;
        switch (i) {
            case 0:
                return new ThumbNode$measure$1(thumbNode, f, continuation, 0);
            default:
                return new ThumbNode$measure$1(thumbNode, f, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((ThumbNode$measure$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        float f = this.$size;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ThumbNode thumbNode = this.this$0;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = thumbNode.sizeAnim;
                    if (animatable != null) {
                        Float f2 = new Float(f);
                        AnimationSpec animationSpec = thumbNode.isPressed ? SwitchKt.SnapSpec : thumbNode.animationSpec;
                        this.label = 1;
                        obj = Animatable.animateTo$default(animatable, f2, animationSpec, null, this, 12);
                        if (obj == coroutineSingletons) {
                            break;
                        }
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            default:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable2 = thumbNode.offsetAnim;
                    if (animatable2 != null) {
                        Float f3 = new Float(f);
                        AnimationSpec animationSpec2 = thumbNode.isPressed ? SwitchKt.SnapSpec : thumbNode.animationSpec;
                        this.label = 1;
                        obj = Animatable.animateTo$default(animatable2, f3, animationSpec2, null, this, 12);
                        if (obj == coroutineSingletons) {
                            break;
                        }
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
        }
        return unit;
    }
}
