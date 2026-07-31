package coil3.network.okhttp;

import android.content.Context;
import coil3.network.ConnectivityChecker;
import coil3.network.ConnectivityCheckerKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$13 extends FunctionReferenceImpl implements Function1 {
    public static final OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$13 INSTANCE = new OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$13();

    public OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$13() {
        super(1, ConnectivityCheckerKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final ConnectivityChecker invoke(Context context) {
        return ConnectivityCheckerKt.ConnectivityChecker(context);
    }
}
