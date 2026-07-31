package org.wikipedia.random;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.pager.DefaultPagerState;
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
public final class RandomScreenKt$RandomScreen$goToNext$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ DefaultPagerState $pagerState;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RandomScreenKt$RandomScreen$goToNext$1$1$1(DefaultPagerState defaultPagerState, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$pagerState = defaultPagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DefaultPagerState defaultPagerState = this.$pagerState;
        switch (i) {
            case 0:
                return new RandomScreenKt$RandomScreen$goToNext$1$1$1(defaultPagerState, continuation, 0);
            default:
                return new RandomScreenKt$RandomScreen$goToNext$1$1$1(defaultPagerState, continuation, 1);
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
        return ((RandomScreenKt$RandomScreen$goToNext$1$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object animateScrollToPage;
        Object animateScrollToPage2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DefaultPagerState defaultPagerState = this.$pagerState;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                int currentPage = defaultPagerState.getCurrentPage() + 1;
                this.label = 1;
                animateScrollToPage = defaultPagerState.animateScrollToPage(currentPage, ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7), this);
                return animateScrollToPage == coroutineSingletons ? coroutineSingletons : unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                int currentPage2 = defaultPagerState.getCurrentPage() - 1;
                this.label = 1;
                animateScrollToPage2 = defaultPagerState.animateScrollToPage(currentPage2, ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7), this);
                return animateScrollToPage2 == coroutineSingletons2 ? coroutineSingletons2 : unit;
        }
    }
}
