package androidx.compose.ui.platform;

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
public final class WrappedComposition$setContent$1$2$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ WrappedComposition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WrappedComposition$setContent$1$2$1$1(WrappedComposition wrappedComposition, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = wrappedComposition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        WrappedComposition wrappedComposition = this.this$0;
        switch (i) {
            case 0:
                return new WrappedComposition$setContent$1$2$1$1(wrappedComposition, continuation, 0);
            default:
                return new WrappedComposition$setContent$1$2$1$1(wrappedComposition, continuation, 1);
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
        return ((WrappedComposition$setContent$1$2$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        WrappedComposition wrappedComposition = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AndroidComposeView androidComposeView = wrappedComposition.owner;
                    this.label = 1;
                    Object boundsUpdatesEventLoop$ui = androidComposeView.composeAccessibilityDelegate.boundsUpdatesEventLoop$ui(this);
                    if (boundsUpdatesEventLoop$ui != coroutineSingletons) {
                        boundsUpdatesEventLoop$ui = unit;
                    }
                    if (boundsUpdatesEventLoop$ui == coroutineSingletons) {
                        break;
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
                    AndroidComposeView androidComposeView2 = wrappedComposition.owner;
                    this.label = 1;
                    Object boundsUpdatesEventLoop$ui2 = androidComposeView2.contentCaptureManager.boundsUpdatesEventLoop$ui(this);
                    if (boundsUpdatesEventLoop$ui2 != coroutineSingletons) {
                        boundsUpdatesEventLoop$ui2 = unit;
                    }
                    if (boundsUpdatesEventLoop$ui2 == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
        }
        return coroutineSingletons;
    }
}
