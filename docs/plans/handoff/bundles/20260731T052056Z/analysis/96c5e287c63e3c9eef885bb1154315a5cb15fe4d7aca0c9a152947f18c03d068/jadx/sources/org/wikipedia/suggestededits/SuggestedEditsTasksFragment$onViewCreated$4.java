package org.wikipedia.suggestededits;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.ChannelFlowCollector;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.events.LoggedOutEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsTasksFragment$onViewCreated$4 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ SuggestedEditsTasksFragment this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.suggestededits.SuggestedEditsTasksFragment$onViewCreated$4$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ SuggestedEditsTasksFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(SuggestedEditsTasksFragment suggestedEditsTasksFragment, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = suggestedEditsTasksFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            SuggestedEditsTasksFragment suggestedEditsTasksFragment = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(suggestedEditsTasksFragment, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                default:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(suggestedEditsTasksFragment, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
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
                default:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
            }
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            SuggestedEditsTasksFragment suggestedEditsTasksFragment = this.this$0;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    Continuation continuation = null;
                    AwaitKt.launch$default(coroutineScope, null, null, new SuggestedEditsTasksFragment$onViewCreated$4(suggestedEditsTasksFragment, continuation, 1), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new SuggestedEditsTasksFragment$onViewCreated$4(suggestedEditsTasksFragment, continuation, 2), 3);
                    break;
                default:
                    ResultKt.throwOnFailure(obj);
                    if (obj2 instanceof LoggedOutEvent) {
                        suggestedEditsTasksFragment.refreshContents$1();
                        break;
                    }
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SuggestedEditsTasksFragment$onViewCreated$4(SuggestedEditsTasksFragment suggestedEditsTasksFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = suggestedEditsTasksFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SuggestedEditsTasksFragment suggestedEditsTasksFragment = this.this$0;
        switch (i) {
            case 0:
                return new SuggestedEditsTasksFragment$onViewCreated$4(suggestedEditsTasksFragment, continuation, 0);
            case 1:
                return new SuggestedEditsTasksFragment$onViewCreated$4(suggestedEditsTasksFragment, continuation, 1);
            default:
                return new SuggestedEditsTasksFragment$onViewCreated$4(suggestedEditsTasksFragment, continuation, 2);
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
        return ((SuggestedEditsTasksFragment$onViewCreated$4) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SuggestedEditsTasksFragment suggestedEditsTasksFragment = this.this$0;
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
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(suggestedEditsTasksFragment, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(suggestedEditsTasksFragment, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = suggestedEditsTasksFragment.getViewModel().uiState;
                    ChannelFlowCollector channelFlowCollector = new ChannelFlowCollector(23, suggestedEditsTasksFragment);
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(channelFlowCollector, this) == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
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
                ReadonlySharedFlow readonlySharedFlow = FlowEventBus.events;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(suggestedEditsTasksFragment, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass12, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
        }
    }
}
