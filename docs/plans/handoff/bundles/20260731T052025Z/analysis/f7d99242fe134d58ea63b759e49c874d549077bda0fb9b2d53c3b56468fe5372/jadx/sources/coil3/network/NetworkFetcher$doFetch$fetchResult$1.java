package coil3.network;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.network.NetworkFetcher$doFetch$fetchResult$1", f = "NetworkFetcher.kt", l = {107, 121}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$doFetch$fetchResult$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$ObjectRef $cacheResponse;
    final /* synthetic */ NetworkRequest $networkRequest;
    final /* synthetic */ Ref$ObjectRef $snapshot;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ NetworkFetcher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$fetchResult$1(Ref$ObjectRef ref$ObjectRef, NetworkFetcher networkFetcher, Ref$ObjectRef ref$ObjectRef2, NetworkRequest networkRequest, Continuation continuation) {
        super(2, continuation);
        this.$snapshot = ref$ObjectRef;
        this.this$0 = networkFetcher;
        this.$cacheResponse = ref$ObjectRef2;
        this.$networkRequest = networkRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NetworkFetcher$doFetch$fetchResult$1 networkFetcher$doFetch$fetchResult$1 = new NetworkFetcher$doFetch$fetchResult$1(this.$snapshot, this.this$0, this.$cacheResponse, this.$networkRequest, continuation);
        networkFetcher$doFetch$fetchResult$1.L$0 = obj;
        return networkFetcher$doFetch$fetchResult$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(NetworkResponse networkResponse, Continuation continuation) {
        return ((NetworkFetcher$doFetch$fetchResult$1) create(networkResponse, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00c0  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher$doFetch$fetchResult$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
