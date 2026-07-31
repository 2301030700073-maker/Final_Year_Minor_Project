package coil3.network.okhttp;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import okhttp3.OkHttpClient;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$7 extends FunctionReferenceImpl implements Function0 {
    public static final OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$7 INSTANCE = new OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$7();

    public OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$7() {
        super(0, OkHttpClient.class, "<init>", "<init>()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final OkHttpClient invoke() {
        return new OkHttpClient();
    }
}
