package org.wikipedia.suggestededits;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.RecyclerView;
import coil3.disk.DiskLruCache$launchCleanup$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.usercontrib.UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsFragment$onViewCreated$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ SuggestedEditsRecentEditsFragment this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment$onViewCreated$3$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ SuggestedEditsRecentEditsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = suggestedEditsRecentEditsFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(suggestedEditsRecentEditsFragment, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(suggestedEditsRecentEditsFragment, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                default:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(suggestedEditsRecentEditsFragment, continuation, 2);
                    anonymousClass13.L$0 = obj;
                    return anonymousClass13;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                case 1:
                    ((AnonymousClass1) create((CombinedLoadStates) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                default:
                    ((AnonymousClass1) create((PagingData) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
            }
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    Continuation continuation = null;
                    AwaitKt.launch$default(coroutineScope, null, null, new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 2), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 3), 3);
                    break;
                case 1:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    SuggestedEditsRecentEditsFragment.SearchBarAdapter searchBarAdapter = suggestedEditsRecentEditsFragment.recentEditsEmptyMessagesAdapter;
                    suggestedEditsRecentEditsFragment.loadHeader.setLoadState(combinedLoadStates.refresh);
                    CategoryActivity.LoadingItemAdapter loadingItemAdapter = suggestedEditsRecentEditsFragment.loadFooter;
                    LoadState loadState = combinedLoadStates.append;
                    loadingItemAdapter.setLoadState(loadState);
                    if (!(loadState instanceof LoadState.NotLoading) || !(combinedLoadStates.source.refresh instanceof LoadState.NotLoading) || suggestedEditsRecentEditsFragment.recentEditsListAdapter.getItemCount() != 0) {
                        DefaultSocket defaultSocket = suggestedEditsRecentEditsFragment._binding;
                        defaultSocket.getClass();
                        RecyclerView.Adapter adapter = ((RecyclerView) defaultSocket.closeBits).getAdapter();
                        adapter.getClass();
                        ((ConcatAdapter) adapter).removeAdapter(searchBarAdapter);
                        break;
                    } else {
                        Cookie.Companion.submitPatrollerActivityEvent("filter_empty_impression", "pt_filters", "");
                        DefaultSocket defaultSocket2 = suggestedEditsRecentEditsFragment._binding;
                        defaultSocket2.getClass();
                        RecyclerView.Adapter adapter2 = ((RecyclerView) defaultSocket2.closeBits).getAdapter();
                        adapter2.getClass();
                        ((ConcatAdapter) adapter2).addAdapter(searchBarAdapter);
                        break;
                    }
                    break;
                default:
                    ResultKt.throwOnFailure(obj);
                    suggestedEditsRecentEditsFragment.recentEditsListAdapter.submitData(ViewModelKt.getLifecycleScope(suggestedEditsRecentEditsFragment), (PagingData) obj2);
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SuggestedEditsRecentEditsFragment$onViewCreated$3(SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = suggestedEditsRecentEditsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.this$0;
        switch (i) {
            case 0:
                return new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 0);
            case 1:
                return new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 1);
            case 2:
                return new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 2);
            default:
                return new SuggestedEditsRecentEditsFragment$onViewCreated$3(suggestedEditsRecentEditsFragment, continuation, 3);
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
        return ((SuggestedEditsRecentEditsFragment$onViewCreated$3) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        int i2 = 2;
        Unit unit = Unit.INSTANCE;
        SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.this$0;
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
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(suggestedEditsRecentEditsFragment, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(suggestedEditsRecentEditsFragment, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
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
                UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1 userContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1 = new UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1(StateFlowKt.distinctUntilChangedBy$FlowKt__DistinctKt(suggestedEditsRecentEditsFragment.recentEditsListAdapter.loadStateFlow, new TalkTopicsViewModel$$ExternalSyntheticLambda0(27), StateFlowKt.defaultAreEquivalent), 2);
                DiskLruCache$launchCleanup$1 diskLruCache$launchCleanup$1 = new DiskLruCache$launchCleanup$1(12, suggestedEditsRecentEditsFragment, null);
                this.label = 1;
                return StateFlowKt.collectLatest(userContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1, diskLruCache$launchCleanup$1, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
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
                Flow flow = suggestedEditsRecentEditsFragment.recentEditsListAdapter.loadStateFlow;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(suggestedEditsRecentEditsFragment, continuation, i3);
                this.label = 1;
                return StateFlowKt.collectLatest(flow, anonymousClass12, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            default:
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
                ReadonlySharedFlow readonlySharedFlow = suggestedEditsRecentEditsFragment.getViewModel().recentEditsFlow;
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(suggestedEditsRecentEditsFragment, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass13, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
        }
    }
}
