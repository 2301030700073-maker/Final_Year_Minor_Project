package androidx.work.impl.utils;

import android.net.NetworkRequest;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NetworkRequestCompat.kt */
/* loaded from: classes.dex */
final class NetworkRequest31 {
    public static final NetworkRequest31 INSTANCE = new NetworkRequest31();

    private NetworkRequest31() {
    }

    public final int[] capabilities(NetworkRequest request) {
        int[] capabilities;
        Intrinsics.checkNotNullParameter(request, "request");
        capabilities = request.getCapabilities();
        Intrinsics.checkNotNullExpressionValue(capabilities, "request.capabilities");
        return capabilities;
    }

    public final int[] transportTypes(NetworkRequest request) {
        int[] transportTypes;
        Intrinsics.checkNotNullParameter(request, "request");
        transportTypes = request.getTransportTypes();
        Intrinsics.checkNotNullExpressionValue(transportTypes, "request.transportTypes");
        return transportTypes;
    }
}
