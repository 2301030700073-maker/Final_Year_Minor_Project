package app.k9mail.feature.account.server.validation.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ServerValidationContract$Error {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AuthenticationError implements ServerValidationContract$Error {
        public final String serverMessage;

        public AuthenticationError(String str) {
            this.serverMessage = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AuthenticationError) && Intrinsics.areEqual(this.serverMessage, ((AuthenticationError) obj).serverMessage);
        }

        public final int hashCode() {
            String str = this.serverMessage;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("AuthenticationError(serverMessage=", this.serverMessage, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CertificateError implements ServerValidationContract$Error {
        public final List certificateChain;

        public CertificateError(List list) {
            list.getClass();
            this.certificateChain = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CertificateError) && Intrinsics.areEqual(this.certificateChain, ((CertificateError) obj).certificateChain);
        }

        public final int hashCode() {
            return this.certificateChain.hashCode();
        }

        public final String toString() {
            return "CertificateError(certificateChain=" + this.certificateChain + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClientCertificateExpired implements ServerValidationContract$Error {
        public static final ClientCertificateExpired INSTANCE = new ClientCertificateExpired();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClientCertificateExpired);
        }

        public final int hashCode() {
            return 471036836;
        }

        public final String toString() {
            return "ClientCertificateExpired";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClientCertificateRetrievalFailure implements ServerValidationContract$Error {
        public static final ClientCertificateRetrievalFailure INSTANCE = new ClientCertificateRetrievalFailure();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClientCertificateRetrievalFailure);
        }

        public final int hashCode() {
            return 78189079;
        }

        public final String toString() {
            return "ClientCertificateRetrievalFailure";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MissingServerCapabilityError implements ServerValidationContract$Error {
        public final String capabilityName;

        public MissingServerCapabilityError(String str) {
            str.getClass();
            this.capabilityName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MissingServerCapabilityError) && Intrinsics.areEqual(this.capabilityName, ((MissingServerCapabilityError) obj).capabilityName);
        }

        public final int hashCode() {
            return this.capabilityName.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("MissingServerCapabilityError(capabilityName=", this.capabilityName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NetworkError implements ServerValidationContract$Error {
        public final IOException exception;

        public NetworkError(IOException iOException) {
            iOException.getClass();
            this.exception = iOException;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NetworkError) && Intrinsics.areEqual(this.exception, ((NetworkError) obj).exception);
        }

        public final int hashCode() {
            return this.exception.hashCode();
        }

        public final String toString() {
            return "NetworkError(exception=" + this.exception + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ServerError implements ServerValidationContract$Error {
        public final String serverMessage;

        public ServerError(String str) {
            this.serverMessage = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ServerError) && Intrinsics.areEqual(this.serverMessage, ((ServerError) obj).serverMessage);
        }

        public final int hashCode() {
            String str = this.serverMessage;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("ServerError(serverMessage=", this.serverMessage, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnknownError implements ServerValidationContract$Error {
        public final String message;

        public UnknownError(String str) {
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && this.message.equals(((UnknownError) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UnknownError(message=", this.message, ")");
        }
    }
}
