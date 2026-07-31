package org.wikipedia.usercontrib;

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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.StringUtil$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribListActivity$onCreate$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ UserContribListActivity this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.usercontrib.UserContribListActivity$onCreate$3$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ UserContribListActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(UserContribListActivity userContribListActivity, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = userContribListActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            UserContribListActivity userContribListActivity = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(userContribListActivity, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(userContribListActivity, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                default:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(userContribListActivity, continuation, 2);
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
            Continuation continuation = null;
            Unit unit = Unit.INSTANCE;
            UserContribListActivity userContribListActivity = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    AwaitKt.launch$default(coroutineScope, null, null, new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 2), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 3), 3);
                    return unit;
                case 1:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    UserContribListActivity.SearchBarAdapter searchBarAdapter = userContribListActivity.userContribEmptyMessagesAdapter;
                    userContribListActivity.loadHeader.setLoadState(combinedLoadStates.refresh);
                    CategoryActivity.LoadingItemAdapter loadingItemAdapter = userContribListActivity.loadFooter;
                    LoadState loadState = combinedLoadStates.append;
                    loadingItemAdapter.setLoadState(loadState);
                    if ((loadState instanceof LoadState.NotLoading) && (combinedLoadStates.source.refresh instanceof LoadState.NotLoading) && userContribListActivity.userContribListAdapter.getItemCount() == 0) {
                        MultipartBody.Builder builder = userContribListActivity.binding;
                        if (builder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        RecyclerView.Adapter adapter = ((RecyclerView) builder.parts).getAdapter();
                        adapter.getClass();
                        ((ConcatAdapter) adapter).addAdapter(searchBarAdapter);
                    } else {
                        MultipartBody.Builder builder2 = userContribListActivity.binding;
                        if (builder2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        RecyclerView.Adapter adapter2 = ((RecyclerView) builder2.parts).getAdapter();
                        adapter2.getClass();
                        ((ConcatAdapter) adapter2).removeAdapter(searchBarAdapter);
                    }
                    return unit;
                default:
                    ResultKt.throwOnFailure(obj);
                    userContribListActivity.userContribListAdapter.submitData(ViewModelKt.getLifecycleScope(userContribListActivity), (PagingData) obj2);
                    return unit;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UserContribListActivity$onCreate$3(UserContribListActivity userContribListActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = userContribListActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        UserContribListActivity userContribListActivity = this.this$0;
        switch (i) {
            case 0:
                return new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 0);
            case 1:
                return new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 1);
            case 2:
                return new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 2);
            default:
                return new UserContribListActivity$onCreate$3(userContribListActivity, continuation, 3);
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
        return ((UserContribListActivity$onCreate$3) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        int i2 = 0;
        int i3 = 2;
        Unit unit = Unit.INSTANCE;
        UserContribListActivity userContribListActivity = this.this$0;
        int i4 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(userContribListActivity, continuation, i2);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(userContribListActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1 userContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1 = new UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1(StateFlowKt.distinctUntilChangedBy$FlowKt__DistinctKt(userContribListActivity.userContribListAdapter.loadStateFlow, new StringUtil$$ExternalSyntheticLambda0(2), StateFlowKt.defaultAreEquivalent), 0);
                DiskLruCache$launchCleanup$1 diskLruCache$launchCleanup$1 = new DiskLruCache$launchCleanup$1(13, userContribListActivity, null);
                this.label = 1;
                return StateFlowKt.collectLatest(userContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1, diskLruCache$launchCleanup$1, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                Flow flow = userContribListActivity.userContribListAdapter.loadStateFlow;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(userContribListActivity, continuation, i4);
                this.label = 1;
                return StateFlowKt.collectLatest(flow, anonymousClass12, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            default:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                int i9 = UserContribListActivity.$r8$clinit;
                ReadonlySharedFlow readonlySharedFlow = userContribListActivity.getViewModel().userContribFlow;
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(userContribListActivity, continuation, i3);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass13, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
        }
    }
}
