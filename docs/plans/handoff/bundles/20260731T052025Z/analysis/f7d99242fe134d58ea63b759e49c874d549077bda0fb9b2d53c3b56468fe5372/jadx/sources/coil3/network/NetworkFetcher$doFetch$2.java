package coil3.network;

import coil3.decode.DataSource;
import coil3.decode.ImageSource;
import coil3.fetch.SourceFetchResult;
import coil3.network.internal.UtilsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.network.NetworkFetcher$doFetch$2", f = "NetworkFetcher.kt", l = {138}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$doFetch$2 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ NetworkFetcher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$2(NetworkFetcher networkFetcher, Continuation continuation) {
        super(2, continuation);
        this.this$0 = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NetworkFetcher$doFetch$2 networkFetcher$doFetch$2 = new NetworkFetcher$doFetch$2(this.this$0, continuation);
        networkFetcher$doFetch$2.L$0 = obj;
        return networkFetcher$doFetch$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(NetworkResponse networkResponse, Continuation continuation) {
        return ((NetworkFetcher$doFetch$2) create(networkResponse, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NetworkResponse networkResponse;
        String str;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            networkResponse = (NetworkResponse) this.L$0;
            NetworkFetcher networkFetcher = this.this$0;
            NetworkResponseBody requireBody = UtilsKt.requireBody(networkResponse);
            this.L$0 = networkResponse;
            this.label = 1;
            obj = networkFetcher.toImageSource(requireBody, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            networkResponse = (NetworkResponse) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        NetworkFetcher networkFetcher2 = this.this$0;
        str = networkFetcher2.url;
        return new SourceFetchResult((ImageSource) obj, networkFetcher2.getMimeType(str, networkResponse.getHeaders().get(UtilsKt.CONTENT_TYPE)), DataSource.NETWORK);
    }
}
