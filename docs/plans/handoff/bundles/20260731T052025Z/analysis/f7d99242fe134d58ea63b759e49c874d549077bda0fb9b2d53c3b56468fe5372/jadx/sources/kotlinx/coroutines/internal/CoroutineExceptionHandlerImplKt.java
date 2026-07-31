package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.android.AndroidExceptionPreHandler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CoroutineExceptionHandlerImplKt {
    public static final List platformExceptionHandlers;

    static {
        try {
            platformExceptionHandlers = SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new AndroidExceptionPreHandler()).iterator()));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
