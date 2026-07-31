package app.k9mail.autodiscovery.autoconfig;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface HttpFetchResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ErrorResponse implements HttpFetchResult {
        public final int code;

        public ErrorResponse(int i) {
            this.code = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ErrorResponse) && this.code == ((ErrorResponse) obj).code;
        }

        public final int hashCode() {
            return this.code;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.code, "ErrorResponse(code=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SuccessResponse implements HttpFetchResult {
        public final InputStream inputStream;
        public final boolean isTrusted;

        public SuccessResponse(InputStream inputStream, boolean z) {
            inputStream.getClass();
            this.inputStream = inputStream;
            this.isTrusted = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SuccessResponse)) {
                return false;
            }
            SuccessResponse successResponse = (SuccessResponse) obj;
            return Intrinsics.areEqual(this.inputStream, successResponse.inputStream) && this.isTrusted == successResponse.isTrusted;
        }

        public final int hashCode() {
            return (this.inputStream.hashCode() * 31) + (this.isTrusted ? 1231 : 1237);
        }

        public final String toString() {
            return "SuccessResponse(inputStream=" + this.inputStream + ", isTrusted=" + this.isTrusted + ")";
        }
    }
}
