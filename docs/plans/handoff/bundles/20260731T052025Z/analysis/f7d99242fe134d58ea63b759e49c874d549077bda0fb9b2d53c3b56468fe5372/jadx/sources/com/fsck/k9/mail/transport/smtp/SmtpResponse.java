package com.fsck.k9.mail.transport.smtp;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SmtpResponse {
    public final EnhancedStatusCode enhancedStatusCode;
    public final boolean isNegativeResponse;
    public final int replyCode;
    public final List texts;

    public SmtpResponse(int i, EnhancedStatusCode enhancedStatusCode, List list) {
        this.replyCode = i;
        this.enhancedStatusCode = enhancedStatusCode;
        this.texts = list;
        this.isNegativeResponse = i >= 400;
    }

    public static void appendIfNotNull(StringBuilder sb, EnhancedStatusCode enhancedStatusCode, char c) {
        if (enhancedStatusCode != null) {
            sb.append(c);
            sb.append(enhancedStatusCode.statusClass.codeClass);
            sb.append('.');
            sb.append(enhancedStatusCode.subject);
            sb.append('.');
            sb.append(enhancedStatusCode.detail);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmtpResponse)) {
            return false;
        }
        SmtpResponse smtpResponse = (SmtpResponse) obj;
        return this.replyCode == smtpResponse.replyCode && Intrinsics.areEqual(this.enhancedStatusCode, smtpResponse.enhancedStatusCode) && this.texts.equals(smtpResponse.texts);
    }

    public final int hashCode() {
        int i = this.replyCode * 31;
        EnhancedStatusCode enhancedStatusCode = this.enhancedStatusCode;
        return this.texts.hashCode() + ((i + (enhancedStatusCode == null ? 0 : enhancedStatusCode.hashCode())) * 31);
    }

    public final String toString() {
        return "SmtpResponse(replyCode=" + this.replyCode + ", enhancedStatusCode=" + this.enhancedStatusCode + ", texts=" + this.texts + ")";
    }
}
