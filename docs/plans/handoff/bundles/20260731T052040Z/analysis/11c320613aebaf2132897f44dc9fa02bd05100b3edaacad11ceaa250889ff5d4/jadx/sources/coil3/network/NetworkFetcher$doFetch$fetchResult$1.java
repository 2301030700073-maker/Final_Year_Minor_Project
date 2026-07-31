package coil3.network;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final Object invoke(Object obj, Object obj2) {
        return ((NetworkFetcher$doFetch$fetchResult$1) create((NetworkResponse) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a7, code lost:
    
        if (r10 == r6) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a9, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0041, code lost:
    
        if (r10 == r6) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.NetworkFetcher$doFetch$fetchResult$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
