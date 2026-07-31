package org.wikipedia.edit.insertmedia;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import com.google.android.material.progressindicator.LinearProgressIndicator;
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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.FragmentPlacesBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InsertMediaActivity$onCreate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ InsertMediaActivity this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.edit.insertmedia.InsertMediaActivity$onCreate$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ InsertMediaActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(InsertMediaActivity insertMediaActivity, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = insertMediaActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            InsertMediaActivity insertMediaActivity = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(insertMediaActivity, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(insertMediaActivity, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                default:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(insertMediaActivity, continuation, 2);
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
            CategoryActivity.CategoryMembersAdapter categoryMembersAdapter;
            int i = this.$r8$classId;
            Continuation continuation = null;
            Unit unit = Unit.INSTANCE;
            InsertMediaActivity insertMediaActivity = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    AwaitKt.launch$default(coroutineScope, null, null, new InsertMediaActivity$onCreate$2(insertMediaActivity, continuation, r1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new InsertMediaActivity$onCreate$2(insertMediaActivity, continuation, 2), 3);
                    return unit;
                case 1:
                    PagingData pagingData = (PagingData) obj2;
                    ResultKt.throwOnFailure(obj);
                    CategoryActivity.CategoryMembersAdapter categoryMembersAdapter2 = insertMediaActivity.insertMediaAdapter;
                    if (categoryMembersAdapter2 != null) {
                        categoryMembersAdapter2.submitData(ViewModelKt.getLifecycleScope(insertMediaActivity), pagingData);
                    }
                    return unit;
                default:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                    if (fragmentPlacesBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((LinearProgressIndicator) fragmentPlacesBinding.listEmptyContainer).setVisibility(((combinedLoadStates.append instanceof LoadState.Loading) || (combinedLoadStates.refresh instanceof LoadState.Loading)) ? 0 : 8);
                    LoadState loadState = combinedLoadStates.append;
                    r1 = ((loadState instanceof LoadState.NotLoading) && loadState.endOfPaginationReached && (categoryMembersAdapter = insertMediaActivity.insertMediaAdapter) != null && categoryMembersAdapter.getItemCount() == 0) ? 1 : 0;
                    FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding2 != null) {
                        fragmentPlacesBinding2.listEmptyMessage.setVisibility(r1 != 0 ? 0 : 8);
                        return unit;
                    }
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ InsertMediaActivity$onCreate$2(InsertMediaActivity insertMediaActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = insertMediaActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        InsertMediaActivity insertMediaActivity = this.this$0;
        switch (i) {
            case 0:
                return new InsertMediaActivity$onCreate$2(insertMediaActivity, continuation, 0);
            case 1:
                return new InsertMediaActivity$onCreate$2(insertMediaActivity, continuation, 1);
            default:
                return new InsertMediaActivity$onCreate$2(insertMediaActivity, continuation, 2);
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
        return ((InsertMediaActivity$onCreate$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flow;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        InsertMediaActivity insertMediaActivity = this.this$0;
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
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(insertMediaActivity, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(insertMediaActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
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
                ReadonlySharedFlow readonlySharedFlow = insertMediaActivity.getViewModel().insertMediaFlow;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(insertMediaActivity, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass12, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = insertMediaActivity.insertMediaAdapter;
                if (categoryMembersAdapter == null || (flow = categoryMembersAdapter.loadStateFlow) == null) {
                    return unit;
                }
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(insertMediaActivity, continuation, 2);
                this.label = 1;
                return StateFlowKt.collectLatest(flow, anonymousClass13, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
        }
    }
}
