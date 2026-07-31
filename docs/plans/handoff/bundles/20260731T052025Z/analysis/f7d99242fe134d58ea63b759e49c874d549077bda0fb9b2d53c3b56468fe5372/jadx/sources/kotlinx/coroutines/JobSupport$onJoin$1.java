package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.JobSupport.SelectOnJoinCompletionHandler;
import kotlinx.coroutines.selects.SelectImplementation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class JobSupport$onJoin$1 extends FunctionReferenceImpl implements Function3 {
    public static final JobSupport$onJoin$1 INSTANCE = new JobSupport$onJoin$1(3, JobSupport.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Object state$kotlinx_coroutines_core;
        Unit unit;
        JobSupport jobSupport = (JobSupport) obj;
        SelectImplementation selectImplementation = (SelectImplementation) obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = JobSupport._state$volatile$FU;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            boolean z = state$kotlinx_coroutines_core instanceof Incomplete;
            unit = Unit.INSTANCE;
            if (!z) {
                selectImplementation.internalResult = unit;
                return unit;
            }
        } while (jobSupport.startInternal(state$kotlinx_coroutines_core) < 0);
        selectImplementation.disposableHandleOrSegment = JobKt.invokeOnCompletion(jobSupport, true, jobSupport.new SelectOnJoinCompletionHandler(selectImplementation));
        return unit;
    }
}
