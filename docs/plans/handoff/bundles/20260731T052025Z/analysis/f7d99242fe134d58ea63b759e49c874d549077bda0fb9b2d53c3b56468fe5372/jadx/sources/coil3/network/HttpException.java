package coil3.network;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HttpException extends RuntimeException {
    private final NetworkResponse response;

    public HttpException(NetworkResponse networkResponse) {
        super(CameraDevices$CC.m("HTTP ", networkResponse.getCode()));
        this.response = networkResponse;
    }

    public final NetworkResponse getResponse() {
        return this.response;
    }
}
