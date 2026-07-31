package org.wikipedia.talk;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArchivedTalkPagesActivity$onCreate$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ArchivedTalkPagesActivity this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.talk.ArchivedTalkPagesActivity$onCreate$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ ArchivedTalkPagesActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(ArchivedTalkPagesActivity archivedTalkPagesActivity, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = archivedTalkPagesActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            ArchivedTalkPagesActivity archivedTalkPagesActivity = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(archivedTalkPagesActivity, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(archivedTalkPagesActivity, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                default:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(archivedTalkPagesActivity, continuation, 2);
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
                    ((AnonymousClass1) create((PagingData) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                default:
                    ((AnonymousClass1) create((CombinedLoadStates) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
            }
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            ArchivedTalkPagesActivity archivedTalkPagesActivity = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    Continuation continuation = null;
                    AwaitKt.launch$default(coroutineScope, null, null, new ArchivedTalkPagesActivity$onCreate$1(archivedTalkPagesActivity, continuation, 1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ArchivedTalkPagesActivity$onCreate$1(archivedTalkPagesActivity, continuation, 2), 3);
                    break;
                case 1:
                    ResultKt.throwOnFailure(obj);
                    archivedTalkPagesActivity.archivedTalkPagesAdapter.submitData(ViewModelKt.getLifecycleScope(archivedTalkPagesActivity), (PagingData) obj2);
                    break;
                default:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    archivedTalkPagesActivity.archivedTalkPagesLoadHeader.setLoadState(combinedLoadStates.refresh);
                    CategoryActivity.LoadingItemAdapter loadingItemAdapter = archivedTalkPagesActivity.archivedTalkPagesLoadFooter;
                    LoadState loadState = combinedLoadStates.append;
                    loadingItemAdapter.setLoadState(loadState);
                    if ((loadState instanceof LoadState.NotLoading) && loadState.endOfPaginationReached && archivedTalkPagesActivity.archivedTalkPagesAdapter.getItemCount() == 0) {
                        archivedTalkPagesActivity.archivedTalkPagesConcatAdapter.addAdapter(new DiffUtil$DiffLinesAdapter(11, archivedTalkPagesActivity));
                        break;
                    }
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ArchivedTalkPagesActivity$onCreate$1(ArchivedTalkPagesActivity archivedTalkPagesActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = archivedTalkPagesActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ArchivedTalkPagesActivity archivedTalkPagesActivity = this.this$0;
        switch (i) {
            case 0:
                return new ArchivedTalkPagesActivity$onCreate$1(archivedTalkPagesActivity, continuation, 0);
            case 1:
                return new ArchivedTalkPagesActivity$onCreate$1(archivedTalkPagesActivity, continuation, 1);
            default:
                return new ArchivedTalkPagesActivity$onCreate$1(archivedTalkPagesActivity, continuation, 2);
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
        return ((ArchivedTalkPagesActivity$onCreate$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ArchivedTalkPagesActivity archivedTalkPagesActivity = this.this$0;
        int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(archivedTalkPagesActivity, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(archivedTalkPagesActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                int i5 = ArchivedTalkPagesActivity.$r8$clinit;
                ReadonlySharedFlow readonlySharedFlow = ((ArchivedTalkPagesViewModel) archivedTalkPagesActivity.viewModel$delegate.getValue()).archivedTalkPagesFlow;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(archivedTalkPagesActivity, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass12, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            default:
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
                Flow flow = archivedTalkPagesActivity.archivedTalkPagesAdapter.loadStateFlow;
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(archivedTalkPagesActivity, continuation, 2);
                this.label = 1;
                return StateFlowKt.collectLatest(flow, anonymousClass13, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
        }
    }
}
