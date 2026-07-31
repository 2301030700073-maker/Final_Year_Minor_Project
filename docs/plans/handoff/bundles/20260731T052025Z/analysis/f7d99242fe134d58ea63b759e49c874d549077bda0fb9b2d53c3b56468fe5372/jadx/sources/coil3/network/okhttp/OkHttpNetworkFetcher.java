package coil3.network.okhttp;

import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.network.NetworkClient;
import coil3.network.NetworkFetcher;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import kotlin.Deprecated;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.Call;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.OkHttpClient;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OkHttpNetworkFetcher {
    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkClient OkHttpNetworkFetcherFactory$lambda$0() {
        return asNetworkClient(new OkHttpClient());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkClient OkHttpNetworkFetcherFactory$lambda$2(Function0 function0) {
        return asNetworkClient((Call.Factory) function0.invoke());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkClient OkHttpNetworkFetcherFactory$lambda$4(Function0 function0) {
        return asNetworkClient((Call.Factory) function0.invoke());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkClient OkHttpNetworkFetcherFactory$lambda$6(Function0 function0) {
        return asNetworkClient((Call.Factory) function0.invoke());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkClient OkHttpNetworkFetcherFactory$lambda$9(Function0 function0) {
        return asNetworkClient((Call.Factory) function0.invoke());
    }

    public static final NetworkClient asNetworkClient(Call.Factory factory) {
        return CallFactoryNetworkClient.m885boximpl(CallFactoryNetworkClient.m886constructorimpl(factory));
    }

    public static final NetworkFetcher.Factory factory() {
        return new NetworkFetcher.Factory(new UtilsKt$$ExternalSyntheticLambda0(29), null, null, null, 14, null);
    }

    public static /* synthetic */ NetworkFetcher.Factory factory$default(Function0 function0, Function0 function02, Function1 function1, Function0 function03, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$11.INSTANCE;
        }
        if ((i & 2) != 0) {
            function02 = new SyncDebugWorker$$ExternalSyntheticLambda0(2);
        }
        if ((i & 4) != 0) {
            function1 = OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$13.INSTANCE;
        }
        if ((i & 8) != 0) {
            function03 = new SyncDebugWorker$$ExternalSyntheticLambda0(3);
        }
        return factory(function0, function02, function1, function03);
    }

    public static final NetworkFetcher.Factory factory(Call.Factory factory) {
        return new NetworkFetcher.Factory(new K9$$ExternalSyntheticLambda0(4, factory), null, null, null, 14, null);
    }

    public static final NetworkFetcher.Factory factory(Function0 function0) {
        return new NetworkFetcher.Factory(new Handshake$$ExternalSyntheticLambda0(7, function0), null, null, null, 14, null);
    }

    public static final NetworkFetcher.Factory factory(Function0 function0, Function0 function02) {
        return new NetworkFetcher.Factory(new Handshake$$ExternalSyntheticLambda0(9, function0), function02, null, null, 12, null);
    }

    @Deprecated
    public static final /* synthetic */ NetworkFetcher.Factory factory(Function0 function0, Function0 function02, Function1 function1) {
        return new NetworkFetcher.Factory(new Handshake$$ExternalSyntheticLambda0(6, function0), function02, function1, null, 8, null);
    }

    public static final NetworkFetcher.Factory factory(Function0 function0, Function0 function02, Function1 function1, Function0 function03) {
        return new NetworkFetcher.Factory(new Handshake$$ExternalSyntheticLambda0(8, function0), function02, function1, function03);
    }

    public static /* synthetic */ NetworkFetcher.Factory factory$default(Function0 function0, Function0 function02, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$7.INSTANCE;
        }
        if ((i & 2) != 0) {
            function02 = new SyncDebugWorker$$ExternalSyntheticLambda0(4);
        }
        if ((i & 4) != 0) {
            function1 = OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$9.INSTANCE;
        }
        return factory(function0, function02, function1);
    }

    public static /* synthetic */ NetworkFetcher.Factory factory$default(Function0 function0, Function0 function02, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = OkHttpNetworkFetcher$OkHttpNetworkFetcherFactory$4.INSTANCE;
        }
        if ((i & 2) != 0) {
            function02 = new SyncDebugWorker$$ExternalSyntheticLambda0(1);
        }
        return factory(function0, function02);
    }
}
