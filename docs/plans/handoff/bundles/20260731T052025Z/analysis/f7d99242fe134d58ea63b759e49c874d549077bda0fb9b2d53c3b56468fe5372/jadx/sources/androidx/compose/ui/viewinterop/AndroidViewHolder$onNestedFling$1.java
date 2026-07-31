package androidx.compose.ui.viewinterop;

import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.unit.Velocity;
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
public final class AndroidViewHolder$onNestedFling$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $consumed;
    public final /* synthetic */ long $viewVelocity;
    public int label;
    public final /* synthetic */ AndroidViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$onNestedFling$1(boolean z, AndroidViewHolder androidViewHolder, long j, Continuation continuation) {
        super(2, continuation);
        this.$consumed = z;
        this.this$0 = androidViewHolder;
        this.$viewVelocity = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AndroidViewHolder$onNestedFling$1(this.$consumed, this.this$0, this.$viewVelocity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AndroidViewHolder$onNestedFling$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            NestedScrollDispatcher nestedScrollDispatcher = this.this$0.dispatcher;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.$consumed) {
                this.label = 2;
                Object m559dispatchPostFlingRZ2iAVY = nestedScrollDispatcher.m559dispatchPostFlingRZ2iAVY(this.$viewVelocity, 0L, this);
                if (m559dispatchPostFlingRZ2iAVY != coroutineSingletons) {
                    obj = m559dispatchPostFlingRZ2iAVY;
                    ((Velocity) obj).getClass();
                }
            } else {
                this.label = 1;
                Object m559dispatchPostFlingRZ2iAVY2 = nestedScrollDispatcher.m559dispatchPostFlingRZ2iAVY(0L, this.$viewVelocity, this);
                if (m559dispatchPostFlingRZ2iAVY2 != coroutineSingletons) {
                    obj = m559dispatchPostFlingRZ2iAVY2;
                    ((Velocity) obj).getClass();
                }
            }
            return coroutineSingletons;
        }
        if (i == 1) {
            ResultKt.throwOnFailure(obj);
            ((Velocity) obj).getClass();
        } else {
            if (i != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            ((Velocity) obj).getClass();
        }
        return Unit.INSTANCE;
    }
}
