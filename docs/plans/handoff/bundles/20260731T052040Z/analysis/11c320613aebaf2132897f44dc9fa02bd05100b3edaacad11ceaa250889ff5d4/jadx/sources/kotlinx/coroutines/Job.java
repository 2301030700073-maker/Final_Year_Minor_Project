package kotlinx.coroutines;

import coil3.network.NetworkFetcher$fetch$2;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Job extends CoroutineContext.Element {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Key implements CoroutineContext.Key {
        public static final /* synthetic */ Key $$INSTANCE$1 = new Key();
        public static final /* synthetic */ Key $$INSTANCE = new Key();
    }

    ChildHandle attachChild(JobSupport jobSupport);

    void cancel(CancellationException cancellationException);

    CancellationException getCancellationException();

    DisposableHandle invokeOnCompletion(Function1 function1);

    DisposableHandle invokeOnCompletion(boolean z, boolean z2, NetworkFetcher$fetch$2 networkFetcher$fetch$2);

    boolean isActive();

    boolean isCancelled();

    Object join(ContinuationImpl continuationImpl);

    boolean start();
}
