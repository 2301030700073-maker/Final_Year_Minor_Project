package kotlinx.coroutines;

import androidx.room.InvalidationTracker$implementation$1;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Job extends CoroutineContext.Element {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Key implements CoroutineContext.Key {
        public static final /* synthetic */ Key $$INSTANCE$1 = new Key();
        public static final /* synthetic */ Key $$INSTANCE = new Key();
    }

    ChildHandle attachChild(JobSupport jobSupport);

    void cancel(CancellationException cancellationException);

    CancellationException getCancellationException();

    DisposableHandle invokeOnCompletion(Function1 function1);

    DisposableHandle invokeOnCompletion(boolean z, boolean z2, InvalidationTracker$implementation$1 invalidationTracker$implementation$1);

    boolean isActive();

    boolean isCancelled();

    Object join(ContinuationImpl continuationImpl);

    boolean start();
}
