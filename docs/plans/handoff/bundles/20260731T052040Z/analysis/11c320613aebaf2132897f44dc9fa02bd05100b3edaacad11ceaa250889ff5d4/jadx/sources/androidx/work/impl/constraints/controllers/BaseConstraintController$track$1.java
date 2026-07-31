package androidx.work.impl.constraints.controllers;

import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.trackers.ConstraintTrackerKt;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import java.util.LinkedHashSet;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.commonmark.node.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BaseConstraintController$track$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BaseConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseConstraintController$track$1(BaseConstraintController baseConstraintController, Continuation continuation) {
        super(2, continuation);
        this.this$0 = baseConstraintController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BaseConstraintController$track$1 baseConstraintController$track$1 = new BaseConstraintController$track$1(this.this$0, continuation);
        baseConstraintController$track$1.L$0 = obj;
        return baseConstraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BaseConstraintController$track$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ProducerScope producerScope = (ProducerScope) this.L$0;
            BaseConstraintController baseConstraintController = this.this$0;
            BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = new BaseConstraintController$track$1$listener$1(baseConstraintController, producerScope);
            Node node = baseConstraintController.tracker;
            node.getClass();
            synchronized (node.lastChild) {
                try {
                    if (((LinkedHashSet) node.prev).add(baseConstraintController$track$1$listener$1)) {
                        if (((LinkedHashSet) node.prev).size() == 1) {
                            node.next = node.readSystemState();
                            Logger$LogcatLogger.get().debug(ConstraintTrackerKt.TAG, node.getClass().getSimpleName() + ": initial state = " + node.next);
                            node.startTracking();
                        }
                        baseConstraintController$track$1$listener$1.onConstraintChanged(node.next);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ComponentRegistry$Builder$$ExternalSyntheticLambda0 componentRegistry$Builder$$ExternalSyntheticLambda0 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(this.this$0, baseConstraintController$track$1$listener$1, 14);
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, componentRegistry$Builder$$ExternalSyntheticLambda0, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
