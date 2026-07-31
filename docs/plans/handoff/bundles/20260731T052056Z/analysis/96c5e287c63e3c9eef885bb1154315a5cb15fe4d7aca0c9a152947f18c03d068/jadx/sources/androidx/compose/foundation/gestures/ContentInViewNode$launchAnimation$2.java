package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.diff.ArticleEditDetailsViewModel$undoEdit$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentInViewNode$launchAnimation$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ UpdatableAnimationState $animationState;
    public final /* synthetic */ BringIntoViewSpec $bringIntoViewSpec;
    public final /* synthetic */ long $viewportAdjustmentForReverseScroll;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ ContentInViewNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewNode$launchAnimation$2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, BringIntoViewSpec bringIntoViewSpec, long j, Continuation continuation) {
        super(2, continuation);
        this.this$0 = contentInViewNode;
        this.$animationState = updatableAnimationState;
        this.$bringIntoViewSpec = bringIntoViewSpec;
        this.$viewportAdjustmentForReverseScroll = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$2 = new ContentInViewNode$launchAnimation$2(this.this$0, this.$animationState, this.$bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll, continuation);
        contentInViewNode$launchAnimation$2.L$0 = obj;
        return contentInViewNode$launchAnimation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ContentInViewNode$launchAnimation$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ContentInViewNode contentInViewNode = this.this$0;
        LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo = contentInViewNode.bringIntoViewRequests;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Job job = AwaitKt.getJob(((CoroutineScope) this.L$0).getCoroutineContext());
                    contentInViewNode.isAnimationRunning = true;
                    ScrollingLogic scrollingLogic = contentInViewNode.scrollingLogic;
                    MutatePriority mutatePriority = MutatePriority.Default;
                    ArticleEditDetailsViewModel$undoEdit$2 articleEditDetailsViewModel$undoEdit$2 = new ArticleEditDetailsViewModel$undoEdit$2(this.$animationState, contentInViewNode, this.$bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll, job, (Continuation) null);
                    this.label = 1;
                    if (scrollingLogic.scroll(mutatePriority, articleEditDetailsViewModel$undoEdit$2, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                lazyLayoutBeyondBoundsInfo.resumeAndRemoveAll();
                contentInViewNode.isAnimationRunning = false;
                lazyLayoutBeyondBoundsInfo.cancelAndRemoveAll(null);
                contentInViewNode.trackingFocusedChild = false;
                return Unit.INSTANCE;
            } catch (CancellationException e) {
                throw e;
            }
        } catch (Throwable th) {
            contentInViewNode.isAnimationRunning = false;
            lazyLayoutBeyondBoundsInfo.cancelAndRemoveAll(null);
            contentInViewNode.trackingFocusedChild = false;
            throw th;
        }
    }
}
