package org.wikipedia.edit.templates;

import android.widget.TextView;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.ChannelFlowCollector;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.GsonBuilder;
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
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.categories.CategoryActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TemplatesSearchActivity$onCreate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ TemplatesSearchActivity this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.edit.templates.TemplatesSearchActivity$onCreate$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ TemplatesSearchActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(TemplatesSearchActivity templatesSearchActivity, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = templatesSearchActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            TemplatesSearchActivity templatesSearchActivity = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(templatesSearchActivity, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(templatesSearchActivity, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                default:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(templatesSearchActivity, continuation, 2);
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
            TemplatesSearchActivity templatesSearchActivity = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    AwaitKt.launch$default(coroutineScope, null, null, new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, r1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, 2), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, 3), 3);
                    return unit;
                case 1:
                    PagingData pagingData = (PagingData) obj2;
                    ResultKt.throwOnFailure(obj);
                    CategoryActivity.CategoryMembersAdapter categoryMembersAdapter2 = templatesSearchActivity.templatesSearchAdapter;
                    if (categoryMembersAdapter2 != null) {
                        categoryMembersAdapter2.submitData(ViewModelKt.getLifecycleScope(templatesSearchActivity), pagingData);
                    }
                    return unit;
                default:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj2;
                    ResultKt.throwOnFailure(obj);
                    GsonBuilder gsonBuilder = templatesSearchActivity.binding;
                    if (gsonBuilder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((LinearProgressIndicator) gsonBuilder.instanceCreators).setVisibility(((combinedLoadStates.append instanceof LoadState.Loading) || (combinedLoadStates.refresh instanceof LoadState.Loading)) ? 0 : 8);
                    LoadState loadState = combinedLoadStates.append;
                    r1 = ((loadState instanceof LoadState.NotLoading) && loadState.endOfPaginationReached && (categoryMembersAdapter = templatesSearchActivity.templatesSearchAdapter) != null && categoryMembersAdapter.getItemCount() == 0) ? 1 : 0;
                    GsonBuilder gsonBuilder2 = templatesSearchActivity.binding;
                    if (gsonBuilder2 != null) {
                        ((TextView) gsonBuilder2.excluder).setVisibility(r1 != 0 ? 0 : 8);
                        return unit;
                    }
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TemplatesSearchActivity$onCreate$2(TemplatesSearchActivity templatesSearchActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = templatesSearchActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        TemplatesSearchActivity templatesSearchActivity = this.this$0;
        switch (i) {
            case 0:
                return new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, 0);
            case 1:
                return new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, 1);
            case 2:
                return new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, 2);
            default:
                return new TemplatesSearchActivity$onCreate$2(templatesSearchActivity, continuation, 3);
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
        return ((TemplatesSearchActivity$onCreate$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flow;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TemplatesSearchActivity templatesSearchActivity = this.this$0;
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
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(templatesSearchActivity, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(templatesSearchActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
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
                ReadonlySharedFlow readonlySharedFlow = templatesSearchActivity.getViewModel().searchTemplatesFlow;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(templatesSearchActivity, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass12, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
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
                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = templatesSearchActivity.templatesSearchAdapter;
                if (categoryMembersAdapter == null || (flow = categoryMembersAdapter.loadStateFlow) == null) {
                    return unit;
                }
                AnonymousClass1 anonymousClass13 = new AnonymousClass1(templatesSearchActivity, continuation, 2);
                this.label = 1;
                return StateFlowKt.collectLatest(flow, anonymousClass13, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            default:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    StateFlowImpl stateFlowImpl = templatesSearchActivity.getViewModel().uiState;
                    ChannelFlowCollector channelFlowCollector = new ChannelFlowCollector(13, templatesSearchActivity);
                    this.label = 1;
                    if (stateFlowImpl.collect(channelFlowCollector, this) == coroutineSingletons4) {
                        return coroutineSingletons4;
                    }
                } else {
                    if (i6 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
        }
    }
}
