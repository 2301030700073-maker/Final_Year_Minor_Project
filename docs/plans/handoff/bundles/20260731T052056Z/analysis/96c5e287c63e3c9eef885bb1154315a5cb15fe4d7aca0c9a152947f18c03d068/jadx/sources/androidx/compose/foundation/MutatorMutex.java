package androidx.compose.foundation;

import coil3.intercept.EngineInterceptor$intercept$2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutatorMutex {
    public final AtomicReference currentMutator = new AtomicReference(null);
    public final MutexImpl mutex = new MutexImpl();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Mutator {
        public final Job job;
        public final MutatePriority priority;

        public Mutator(MutatePriority mutatePriority, Job job) {
            this.priority = mutatePriority;
            this.job = job;
        }
    }

    public static Object mutate$default(MutatorMutex mutatorMutex, Function1 function1, SuspendLambda suspendLambda) {
        MutatePriority mutatePriority = MutatePriority.Default;
        mutatorMutex.getClass();
        return AwaitKt.coroutineScope(new EngineInterceptor$intercept$2(mutatePriority, mutatorMutex, function1, null, 2), suspendLambda);
    }

    public final void tryMutateOrCancel(Mutator mutator) {
        while (true) {
            AtomicReference atomicReference = this.currentMutator;
            Mutator mutator2 = (Mutator) atomicReference.get();
            if (mutator2 != null && mutator.priority.compareTo(mutator2.priority) < 0) {
                throw new CancellationException("Current mutation had a higher priority");
            }
            while (!atomicReference.compareAndSet(mutator2, mutator)) {
                if (atomicReference.get() != mutator2) {
                    break;
                }
            }
            if (mutator2 != null) {
                mutator2.job.cancel(new MutationInterruptedException(1, "Mutation interrupted"));
                return;
            }
            return;
        }
    }
}
