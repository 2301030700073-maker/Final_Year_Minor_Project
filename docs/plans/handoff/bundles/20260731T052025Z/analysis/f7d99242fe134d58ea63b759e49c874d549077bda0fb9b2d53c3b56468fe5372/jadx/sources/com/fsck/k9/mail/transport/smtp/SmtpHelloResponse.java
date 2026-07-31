package com.fsck.k9.mail.transport.smtp;

import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SmtpHelloResponse {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Error implements SmtpHelloResponse {
        public final SmtpResponse response;

        public Error(SmtpResponse smtpResponse) {
            this.response = smtpResponse;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && this.response.equals(((Error) obj).response);
        }

        @Override // com.fsck.k9.mail.transport.smtp.SmtpHelloResponse
        public final SmtpResponse getResponse() {
            return this.response;
        }

        public final int hashCode() {
            return this.response.hashCode();
        }

        public final String toString() {
            return "Error(response=" + this.response + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Hello implements SmtpHelloResponse {
        public final Map keywords;
        public final SmtpResponse response;

        public Hello(SmtpResponse smtpResponse, Map map) {
            this.response = smtpResponse;
            this.keywords = map;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Hello)) {
                return false;
            }
            Hello hello = (Hello) obj;
            return this.response.equals(hello.response) && this.keywords.equals(hello.keywords);
        }

        @Override // com.fsck.k9.mail.transport.smtp.SmtpHelloResponse
        public final SmtpResponse getResponse() {
            return this.response;
        }

        public final int hashCode() {
            return this.keywords.hashCode() + (this.response.hashCode() * 31);
        }

        public final String toString() {
            return "Hello(response=" + this.response + ", keywords=" + this.keywords + ")";
        }
    }

    SmtpResponse getResponse();
}
