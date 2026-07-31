package coil3.network;

import okio.BufferedSource;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkClientKt {
    public static final NetworkRequestBody NetworkRequestBody(ByteString byteString) {
        return ByteStringNetworkRequestBody.m863boximpl(ByteStringNetworkRequestBody.m864constructorimpl(byteString));
    }

    public static final NetworkResponseBody NetworkResponseBody(BufferedSource bufferedSource) {
        return SourceResponseBody.m872boximpl(SourceResponseBody.m874constructorimpl(bufferedSource));
    }
}
