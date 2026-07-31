package okhttp3;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.network.NetworkClient;
import coil3.network.okhttp.OkHttpNetworkFetcher;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Handshake$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ Handshake$$ExternalSyntheticLambda0(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        NetworkClient OkHttpNetworkFetcherFactory$lambda$6;
        NetworkClient OkHttpNetworkFetcherFactory$lambda$2;
        NetworkClient OkHttpNetworkFetcherFactory$lambda$9;
        NetworkClient OkHttpNetworkFetcherFactory$lambda$4;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                try {
                    break;
                } catch (SSLPeerUnverifiedException unused) {
                    return EmptyList.INSTANCE;
                }
            case 1:
                break;
            case 2:
                function0.invoke();
                break;
            case 3:
                function0.invoke();
                break;
            case 4:
                function0.invoke();
                break;
            case 5:
                function0.invoke();
                break;
            case 6:
                OkHttpNetworkFetcherFactory$lambda$6 = OkHttpNetworkFetcher.OkHttpNetworkFetcherFactory$lambda$6(function0);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                OkHttpNetworkFetcherFactory$lambda$2 = OkHttpNetworkFetcher.OkHttpNetworkFetcherFactory$lambda$2(function0);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                OkHttpNetworkFetcherFactory$lambda$9 = OkHttpNetworkFetcher.OkHttpNetworkFetcherFactory$lambda$9(function0);
                break;
            case 9:
                OkHttpNetworkFetcherFactory$lambda$4 = OkHttpNetworkFetcher.OkHttpNetworkFetcherFactory$lambda$4(function0);
                break;
            case 10:
                function0.invoke();
                break;
            case 11:
                function0.invoke();
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                function0.invoke();
                break;
            case 13:
                if (function0 != null) {
                    function0.invoke();
                    break;
                }
                break;
            default:
                if (function0 != null) {
                    function0.invoke();
                    break;
                }
                break;
        }
        return unit;
    }
}
