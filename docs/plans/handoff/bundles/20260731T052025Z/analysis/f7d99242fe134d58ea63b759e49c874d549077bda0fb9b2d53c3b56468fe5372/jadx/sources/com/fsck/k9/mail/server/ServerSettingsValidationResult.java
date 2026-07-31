package com.fsck.k9.mail.server;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ServerSettingsValidationResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AuthenticationError implements ServerSettingsValidationResult {
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
    public final class CertificateError implements ServerSettingsValidationResult {
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
    public final class MissingServerCapabilityError implements ServerSettingsValidationResult {
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
    public final class NetworkError implements ServerSettingsValidationResult {
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
    public final class ServerError implements ServerSettingsValidationResult {
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
    public final class Success implements ServerSettingsValidationResult {
        public static final Success INSTANCE = new Success();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnknownError implements ServerSettingsValidationResult {
        public final Exception exception;

        public UnknownError(Exception exc) {
            this.exception = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && this.exception.equals(((UnknownError) obj).exception);
        }

        public final int hashCode() {
            return this.exception.hashCode();
        }

        public final String toString() {
            return "UnknownError(exception=" + this.exception + ")";
        }
    }
}
