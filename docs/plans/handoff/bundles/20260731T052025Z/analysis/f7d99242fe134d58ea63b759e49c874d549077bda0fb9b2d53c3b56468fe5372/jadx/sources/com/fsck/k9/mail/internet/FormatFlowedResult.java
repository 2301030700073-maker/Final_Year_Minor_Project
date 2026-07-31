package com.fsck.k9.mail.internet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FormatFlowedResult {
    public final boolean isDelSp;
    public final boolean isFormatFlowed;

    public FormatFlowedResult(boolean z, boolean z2) {
        this.isFormatFlowed = z;
        this.isDelSp = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormatFlowedResult)) {
            return false;
        }
        FormatFlowedResult formatFlowedResult = (FormatFlowedResult) obj;
        return this.isFormatFlowed == formatFlowedResult.isFormatFlowed && this.isDelSp == formatFlowedResult.isDelSp;
    }

    public final int hashCode() {
        return ((this.isFormatFlowed ? 1231 : 1237) * 31) + (this.isDelSp ? 1231 : 1237);
    }

    public final String toString() {
        return "FormatFlowedResult(isFormatFlowed=" + this.isFormatFlowed + ", isDelSp=" + this.isDelSp + ")";
    }
}
