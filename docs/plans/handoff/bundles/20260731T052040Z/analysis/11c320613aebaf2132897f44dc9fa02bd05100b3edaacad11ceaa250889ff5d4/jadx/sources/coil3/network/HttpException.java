package coil3.network;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HttpException extends RuntimeException {
    private final NetworkResponse response;

    public HttpException(NetworkResponse networkResponse) {
        super(Modifier.CC.m(networkResponse.code, "HTTP "));
        this.response = networkResponse;
    }
}
