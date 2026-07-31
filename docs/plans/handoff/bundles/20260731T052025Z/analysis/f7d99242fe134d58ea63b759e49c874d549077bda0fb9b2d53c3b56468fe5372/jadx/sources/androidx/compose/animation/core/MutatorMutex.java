package androidx.compose.animation.core;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutatorMutex {
    public final AtomicReference currentMutator = new AtomicReference(null);
    public final MutexImpl mutex = new MutexImpl();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Mutator {
        public final Job job;

        public Mutator(Job job) {
            this.job = job;
        }
    }

    public static Object mutate$default(MutatorMutex mutatorMutex, Function1 function1, Continuation continuation) {
        mutatorMutex.getClass();
        return JobKt.coroutineScope(new MutatorMutex$mutate$2(mutatorMutex, function1, (Continuation) null, 0), continuation);
    }
}
