package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutationInterruptedException;
import androidx.compose.ui.unit.Velocity;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollingLogic$doFlingAnimation$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ long $available;
    final /* synthetic */ Ref$LongRef $result;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, Ref$LongRef ref$LongRef, long j, Continuation continuation) {
        super(2, continuation);
        this.this$0 = scrollingLogic;
        this.$result = ref$LongRef;
        this.$available = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.this$0, this.$result, this.$available, continuation);
        scrollingLogic$doFlingAnimation$2.L$0 = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollingLogic$doFlingAnimation$2) create((ScrollingLogic$nestedScrollScope$1) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final ScrollingLogic scrollingLogic;
        Ref$LongRef ref$LongRef;
        long j;
        ScrollingLogic scrollingLogic2;
        int i = this.label;
        Orientation orientation = Orientation.Horizontal;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) this.L$0;
            scrollingLogic = this.this$0;
            ?? r0 = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public final float scrollBy(float f) {
                    float abs = Math.abs(f);
                    ScrollingLogic scrollingLogic3 = ScrollingLogic.this;
                    if (abs != 0.0f && !((Boolean) scrollingLogic3.isScrollableNodeAttached.invoke()).booleanValue()) {
                        throw new MutationInterruptedException("The fling animation was cancelled", 1);
                    }
                    return scrollingLogic3.reverseIfNeeded(scrollingLogic3.m74toFloatk4lQ0M(scrollingLogic$nestedScrollScope$1.m77scrollByWithOverscrollOzD1aCk(2, scrollingLogic3.m73reverseIfNeededMKHz9U(scrollingLogic3.m75toOffsettuRUvjQ(f)))));
                }
            };
            Ref$LongRef ref$LongRef2 = this.$result;
            long j2 = this.$available;
            FlingBehavior flingBehavior = scrollingLogic.flingBehavior;
            long j3 = ref$LongRef2.element;
            float reverseIfNeeded = scrollingLogic.reverseIfNeeded(scrollingLogic.orientation == orientation ? Velocity.m458getXimpl(j2) : Velocity.m459getYimpl(j2));
            this.L$0 = scrollingLogic;
            this.L$1 = scrollingLogic;
            this.L$2 = ref$LongRef2;
            this.J$0 = j3;
            this.label = 1;
            Object performFling = flingBehavior.performFling(r0, reverseIfNeeded, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (performFling == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$LongRef = ref$LongRef2;
            j = j3;
            obj = performFling;
            scrollingLogic2 = scrollingLogic;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.J$0;
            ref$LongRef = (Ref$LongRef) this.L$2;
            scrollingLogic = (ScrollingLogic) this.L$1;
            scrollingLogic2 = (ScrollingLogic) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        float reverseIfNeeded2 = scrollingLogic2.reverseIfNeeded(((Number) obj).floatValue());
        ref$LongRef.element = scrollingLogic.orientation == orientation ? Velocity.m457copyOhffZ5M$default(j, reverseIfNeeded2, 0.0f, 2) : Velocity.m457copyOhffZ5M$default(j, 0.0f, reverseIfNeeded2, 1);
        return Unit.INSTANCE;
    }
}
