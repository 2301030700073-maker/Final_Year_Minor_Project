package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
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
public final class AbstractClickableNode$handlePressInteractionStart$1$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ MutableInteractionSourceImpl $interactionSource;
    public final /* synthetic */ PressInteraction.Press $press;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionStart$1$2(PressInteraction.Press press, MutableInteractionSourceImpl mutableInteractionSourceImpl, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.$press = press;
        this.$interactionSource = mutableInteractionSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PressInteraction.Press press = this.$press;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.$interactionSource;
        switch (i) {
            case 0:
                return new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSourceImpl, press, continuation, 0);
            case 1:
                return new AbstractClickableNode$handlePressInteractionStart$1$2(press, mutableInteractionSourceImpl, continuation);
            default:
                return new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSourceImpl, press, continuation, 2);
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
        return ((AbstractClickableNode$handlePressInteractionStart$1$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PressInteraction.Press press = this.$press;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.$interactionSource;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (mutableInteractionSourceImpl.emit(press, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 1:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    PressInteraction.Release release = new PressInteraction.Release(press);
                    this.label = 1;
                    if (mutableInteractionSourceImpl.emit(release, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (mutableInteractionSourceImpl.emit(press, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AbstractClickableNode$handlePressInteractionStart$1$2(MutableInteractionSourceImpl mutableInteractionSourceImpl, PressInteraction.Press press, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$interactionSource = mutableInteractionSourceImpl;
        this.$press = press;
    }
}
