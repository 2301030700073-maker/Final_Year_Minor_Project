package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NetworkRequestCompat.kt */
/* loaded from: classes.dex */
public final class NetworkRequest28 {
    public static final NetworkRequest28 INSTANCE = new NetworkRequest28();

    private NetworkRequest28() {
    }

    public final boolean hasCapability$work_runtime_release(NetworkRequest request, int i) {
        boolean hasCapability;
        Intrinsics.checkNotNullParameter(request, "request");
        hasCapability = request.hasCapability(i);
        return hasCapability;
    }

    public final boolean hasTransport$work_runtime_release(NetworkRequest request, int i) {
        boolean hasTransport;
        Intrinsics.checkNotNullParameter(request, "request");
        hasTransport = request.hasTransport(i);
        return hasTransport;
    }

    public static final NetworkRequest createNetworkRequest(int[] capabilities, int[] transports) {
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(transports, "transports");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : capabilities) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), "Ignoring adding capability '" + i + CoreConstants.SINGLE_QUOTE_CHAR, e);
            }
        }
        for (int i2 : transports) {
            builder.addTransportType(i2);
        }
        NetworkRequest build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "networkRequest.build()");
        return build;
    }

    public final NetworkRequestCompat createNetworkRequestCompat$work_runtime_release(int[] capabilities, int[] transports) {
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(transports, "transports");
        return new NetworkRequestCompat(createNetworkRequest(capabilities, transports));
    }
}
