package coil3.network;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NetworkFetcher$fetch$2 extends FunctionReferenceImpl implements Function1 {
    public NetworkFetcher$fetch$2(Object obj) {
        super(1, 0, NetworkFetcher.class, obj, "doFetch", "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;");
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        Object doFetch;
        doFetch = ((NetworkFetcher) this.receiver).doFetch(continuation);
        return doFetch;
    }
}
