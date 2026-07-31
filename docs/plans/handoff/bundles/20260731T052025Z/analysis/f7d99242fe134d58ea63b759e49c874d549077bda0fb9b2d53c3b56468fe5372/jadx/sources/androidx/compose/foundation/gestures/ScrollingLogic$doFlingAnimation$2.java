package androidx.compose.foundation.gestures;

import androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.ui.unit.Velocity;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollingLogic$doFlingAnimation$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ long $available;
    public final /* synthetic */ Ref$LongRef $result;
    public long J$0;
    public /* synthetic */ Object L$0;
    public ScrollingLogic L$1;
    public Ref$LongRef L$2;
    public int label;
    public final /* synthetic */ ScrollingLogic this$0;

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

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ScrollingLogic scrollingLogic;
        Ref$LongRef ref$LongRef;
        ScrollingLogic scrollingLogic2;
        long j;
        int i = this.label;
        Orientation orientation = Orientation.Horizontal;
        int i2 = 1;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) this.L$0;
            scrollingLogic = this.this$0;
            LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$1 = new LazyListScrollScopeKt$LazyLayoutScrollScope$1(i2, scrollingLogic, scrollingLogic$nestedScrollScope$1);
            DefaultFlingBehavior defaultFlingBehavior = scrollingLogic.flingBehavior;
            ref$LongRef = this.$result;
            long j2 = ref$LongRef.element;
            Orientation orientation2 = scrollingLogic.orientation;
            long j3 = this.$available;
            float reverseIfNeeded = scrollingLogic.reverseIfNeeded(orientation2 == orientation ? Velocity.m779getXimpl(j3) : Velocity.m780getYimpl(j3));
            this.L$0 = scrollingLogic;
            this.L$1 = scrollingLogic;
            this.L$2 = ref$LongRef;
            this.J$0 = j2;
            this.label = 1;
            defaultFlingBehavior.getClass();
            obj = JobKt.withContext(ScrollableKt.DefaultScrollMotionDurationScale, new DefaultFlingBehavior$performFling$2(reverseIfNeeded, defaultFlingBehavior, lazyListScrollScopeKt$LazyLayoutScrollScope$1, null), this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            scrollingLogic2 = scrollingLogic;
            j = j2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.J$0;
            ref$LongRef = this.L$2;
            scrollingLogic = this.L$1;
            scrollingLogic2 = (ScrollingLogic) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        float reverseIfNeeded2 = scrollingLogic2.reverseIfNeeded(((Number) obj).floatValue());
        ref$LongRef.element = scrollingLogic.orientation == orientation ? Velocity.m778copyOhffZ5M$default(j, reverseIfNeeded2, 0.0f, 2) : Velocity.m778copyOhffZ5M$default(j, 0.0f, reverseIfNeeded2, 1);
        return Unit.INSTANCE;
    }
}
