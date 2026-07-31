package coil3.network;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ConcurrentRequestStrategy {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final ConcurrentRequestStrategy UNCOORDINATED = new UncoordinatedConcurrentRequestStrategy();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    Object apply(String str, Function1 function1, Continuation continuation);
}
