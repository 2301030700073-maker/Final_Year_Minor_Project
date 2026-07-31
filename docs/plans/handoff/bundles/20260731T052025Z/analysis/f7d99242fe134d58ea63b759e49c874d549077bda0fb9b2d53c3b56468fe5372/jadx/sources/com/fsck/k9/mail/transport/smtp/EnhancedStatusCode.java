package com.fsck.k9.mail.transport.smtp;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EnhancedStatusCode {
    public final int detail;
    public final StatusCodeClass statusClass;
    public final int subject;

    public EnhancedStatusCode(StatusCodeClass statusCodeClass, int i, int i2) {
        this.statusClass = statusCodeClass;
        this.subject = i;
        this.detail = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EnhancedStatusCode)) {
            return false;
        }
        EnhancedStatusCode enhancedStatusCode = (EnhancedStatusCode) obj;
        return this.statusClass == enhancedStatusCode.statusClass && this.subject == enhancedStatusCode.subject && this.detail == enhancedStatusCode.detail;
    }

    public final int hashCode() {
        return (((this.statusClass.hashCode() * 31) + this.subject) * 31) + this.detail;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EnhancedStatusCode(statusClass=");
        sb.append(this.statusClass);
        sb.append(", subject=");
        sb.append(this.subject);
        sb.append(", detail=");
        return CameraDevices$CC.m(sb, this.detail, ")");
    }
}
