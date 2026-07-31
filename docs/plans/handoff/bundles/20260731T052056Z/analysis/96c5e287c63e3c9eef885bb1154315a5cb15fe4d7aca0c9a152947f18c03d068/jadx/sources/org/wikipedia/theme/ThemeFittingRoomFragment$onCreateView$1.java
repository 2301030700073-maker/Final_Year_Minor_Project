package org.wikipedia.theme;

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
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.talk.TalkTopicsActivity$onCreate$5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThemeFittingRoomFragment$onCreateView$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ThemeFittingRoomFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThemeFittingRoomFragment$onCreateView$1(ThemeFittingRoomFragment themeFittingRoomFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = themeFittingRoomFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ThemeFittingRoomFragment themeFittingRoomFragment = this.this$0;
        switch (i) {
            case 0:
                return new ThemeFittingRoomFragment$onCreateView$1(themeFittingRoomFragment, continuation, 0);
            default:
                return new ThemeFittingRoomFragment$onCreateView$1(themeFittingRoomFragment, continuation, 1);
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
        return ((ThemeFittingRoomFragment$onCreateView$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ThemeFittingRoomFragment themeFittingRoomFragment = this.this$0;
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
                ThemeFittingRoomFragment$onCreateView$1 themeFittingRoomFragment$onCreateView$1 = new ThemeFittingRoomFragment$onCreateView$1(themeFittingRoomFragment, continuation, i2);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(themeFittingRoomFragment, lifecycle$State, themeFittingRoomFragment$onCreateView$1, this) == coroutineSingletons ? coroutineSingletons : unit;
            default:
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
                ReadonlySharedFlow readonlySharedFlow = FlowEventBus.events;
                TalkTopicsActivity$onCreate$5.AnonymousClass1 anonymousClass1 = new TalkTopicsActivity$onCreate$5.AnonymousClass1(3, themeFittingRoomFragment, continuation);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow, anonymousClass1, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
        }
    }
}
