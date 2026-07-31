package org.wikipedia.categories;

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
import org.wikipedia.R;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.categories.CategoryActivity.EmptyItemAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryActivity$onCreate$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ CategoryActivity this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.categories.CategoryActivity$onCreate$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ CategoryActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(CategoryActivity categoryActivity, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = categoryActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            CategoryActivity categoryActivity = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(categoryActivity, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(categoryActivity, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                case 2:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(categoryActivity, continuation, 2);
                    anonymousClass13.L$0 = obj;
                    return anonymousClass13;
                case 3:
                    AnonymousClass1 anonymousClass14 = new AnonymousClass1(categoryActivity, continuation, 3);
                    anonymousClass14.L$0 = obj;
                    return anonymousClass14;
                default:
                    AnonymousClass1 anonymousClass15 = new AnonymousClass1(categoryActivity, continuation, 4);
                    anonymousClass15.L$0 = obj;
                    return anonymousClass15;
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
                case 2:
                    ((AnonymousClass1) create((PagingData) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                case 3:
                    ((AnonymousClass1) create((CombinedLoadStates) obj, (Continuation) obj2)).invokeSuspend(unit);
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
            CategoryActivity categoryActivity = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    Continuation continuation = null;
                    AwaitKt.launch$default(coroutineScope, null, null, new CategoryActivity$onCreate$1(categoryActivity, continuation, 1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new CategoryActivity$onCreate$1(categoryActivity, continuation, 2), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new CategoryActivity$onCreate$1(categoryActivity, continuation, 3), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new CategoryActivity$onCreate$1(categoryActivity, continuation, 4), 3);
                    break;
                case 1:
                    ResultKt.throwOnFailure(obj);
                    categoryActivity.categoryMembersAdapter.submitData(ViewModelKt.getLifecycleScope(categoryActivity), (PagingData) obj2);
                    break;
                case 2:
                    ResultKt.throwOnFailure(obj);
                    categoryActivity.subcategoriesAdapter.submitData(ViewModelKt.getLifecycleScope(categoryActivity), (PagingData) obj2);
                    break;
                case 3:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    categoryActivity.categoryMembersLoadHeader.setLoadState(combinedLoadStates.refresh);
                    CategoryActivity.LoadingItemAdapter loadingItemAdapter = categoryActivity.categoryMembersLoadFooter;
                    LoadState loadState = combinedLoadStates.append;
                    loadingItemAdapter.setLoadState(loadState);
                    if ((loadState instanceof LoadState.NotLoading) && loadState.endOfPaginationReached && categoryActivity.categoryMembersAdapter.getItemCount() == 0) {
                        categoryActivity.categoryMembersConcatAdapter.addAdapter(categoryActivity.new EmptyItemAdapter(R.string.category_empty));
                        break;
                    }
                    break;
                default:
                    CombinedLoadStates combinedLoadStates2 = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    categoryActivity.subcategoriesLoadHeader.setLoadState(combinedLoadStates2.refresh);
                    CategoryActivity.LoadingItemAdapter loadingItemAdapter2 = categoryActivity.subcategoriesLoadFooter;
                    LoadState loadState2 = combinedLoadStates2.append;
                    loadingItemAdapter2.setLoadState(loadState2);
                    if ((loadState2 instanceof LoadState.NotLoading) && loadState2.endOfPaginationReached && categoryActivity.subcategoriesAdapter.getItemCount() == 0) {
                        categoryActivity.subcategoriesConcatAdapter.addAdapter(categoryActivity.new EmptyItemAdapter(R.string.subcategory_empty));
                        break;
                    }
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CategoryActivity$onCreate$1(CategoryActivity categoryActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = categoryActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        CategoryActivity categoryActivity = this.this$0;
        switch (i) {
            case 0:
                return new CategoryActivity$onCreate$1(categoryActivity, continuation, 0);
            case 1:
                return new CategoryActivity$onCreate$1(categoryActivity, continuation, 1);
            case 2:
                return new CategoryActivity$onCreate$1(categoryActivity, continuation, 2);
            case 3:
                return new CategoryActivity$onCreate$1(categoryActivity, continuation, 3);
            default:
                return new CategoryActivity$onCreate$1(categoryActivity, continuation, 4);
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
        return ((CategoryActivity$onCreate$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CategoryActivity categoryActivity = this.this$0;
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
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(categoryActivity, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(categoryActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
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
                int i5 = CategoryActivity.$r8$clinit;
                ReadonlySharedFlow readonlySharedFlow = categoryActivity.getViewModel().categoryMembersFlow;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(categoryActivity, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass12, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
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
                int i7 = CategoryActivity.$r8$clinit;
                ReadonlySharedFlow readonlySharedFlow2 = categoryActivity.getViewModel().subcategoriesFlow;
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(categoryActivity, continuation, 2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow2, anonymousClass13, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            case 3:
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
                Flow flow = categoryActivity.categoryMembersAdapter.loadStateFlow;
                AnonymousClass1 anonymousClass14 = new AnonymousClass1(categoryActivity, continuation, 3);
                this.label = 1;
                return StateFlowKt.collectLatest(flow, anonymousClass14, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
            default:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                Flow flow2 = categoryActivity.subcategoriesAdapter.loadStateFlow;
                AnonymousClass1 anonymousClass15 = new AnonymousClass1(categoryActivity, continuation, 4);
                this.label = 1;
                return StateFlowKt.collectLatest(flow2, anonymousClass15, this) == coroutineSingletons5 ? coroutineSingletons5 : unit;
        }
    }
}
