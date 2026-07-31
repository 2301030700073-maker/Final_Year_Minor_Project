package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.android.AndroidExceptionPreHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
