package kotlinx.coroutines.reactive;

import java.util.Arrays;
import java.util.ServiceConfigurationError;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ReactiveFlowKt {
    public static final ContextInjector[] contextInjectors;

    static {
        try {
            contextInjectors = (ContextInjector[]) SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new ContextInjector[0]).iterator())).toArray(new ContextInjector[0]);
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
