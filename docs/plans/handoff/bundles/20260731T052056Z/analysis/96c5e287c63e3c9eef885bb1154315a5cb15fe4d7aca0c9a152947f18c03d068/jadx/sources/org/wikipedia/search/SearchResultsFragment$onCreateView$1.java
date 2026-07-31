package org.wikipedia.search;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsFragment$onCreateView$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ SearchResultsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SearchResultsFragment$onCreateView$1(SearchResultsFragment searchResultsFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = searchResultsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SearchResultsFragment searchResultsFragment = this.this$0;
        switch (i) {
            case 0:
                return new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 0);
            case 1:
                return new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 1);
            case 2:
                return new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 2);
            case 3:
                return new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 3);
            case 4:
                return new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 4);
            default:
                return new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 5);
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
        return ((SearchResultsFragment$onCreateView$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        int i2 = 2;
        Unit unit = Unit.INSTANCE;
        SearchResultsFragment searchResultsFragment = this.this$0;
        int i3 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                SearchResultsFragment$onCreateView$1 searchResultsFragment$onCreateView$1 = new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, i3);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(searchResultsFragment, lifecycle$State, searchResultsFragment$onCreateView$1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow readonlySharedFlow = searchResultsFragment.getViewModel().searchTermForLogging;
                SearchResultsFragment$onCreateView$1$1$1 searchResultsFragment$onCreateView$1$1$1 = new SearchResultsFragment$onCreateView$1$1$1(searchResultsFragment, null, 0);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, searchResultsFragment$onCreateView$1$1$1, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 != 0) {
                    if (i6 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlyStateFlow readonlyStateFlow = searchResultsFragment.getViewModel().lexicalResultsForLogging;
                SearchResultsFragment$onCreateView$1$1$1 searchResultsFragment$onCreateView$1$1$12 = new SearchResultsFragment$onCreateView$1$1$1(searchResultsFragment, null, 1);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlyStateFlow, searchResultsFragment$onCreateView$1$1$12, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Lifecycle$State lifecycle$State2 = Lifecycle$State.CREATED;
                SearchResultsFragment$onCreateView$1 searchResultsFragment$onCreateView$12 = new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, i2);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(searchResultsFragment, lifecycle$State2, searchResultsFragment$onCreateView$12, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
            case 4:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i8 = this.label;
                if (i8 != 0) {
                    if (i8 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlyStateFlow readonlyStateFlow2 = searchResultsFragment.getViewModel().hybridSearchResultState;
                SearchResultsFragment$onCreateView$1$1$1 searchResultsFragment$onCreateView$1$1$13 = new SearchResultsFragment$onCreateView$1$1$1(searchResultsFragment, null, 2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlyStateFlow2, searchResultsFragment$onCreateView$1$1$13, this) == coroutineSingletons5 ? coroutineSingletons5 : unit;
            default:
                CoroutineSingletons coroutineSingletons6 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i9 = this.label;
                if (i9 != 0) {
                    if (i9 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Lifecycle$State lifecycle$State3 = Lifecycle$State.CREATED;
                SearchResultsFragment$onCreateView$1 searchResultsFragment$onCreateView$13 = new SearchResultsFragment$onCreateView$1(searchResultsFragment, continuation, 4);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(searchResultsFragment, lifecycle$State3, searchResultsFragment$onCreateView$13, this) == coroutineSingletons6 ? coroutineSingletons6 : unit;
        }
    }
}
