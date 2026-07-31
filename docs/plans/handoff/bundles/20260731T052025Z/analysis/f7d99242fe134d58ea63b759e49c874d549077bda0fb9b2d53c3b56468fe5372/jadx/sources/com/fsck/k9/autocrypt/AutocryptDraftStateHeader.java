package com.fsck.k9.autocrypt;

import coil3.size.ViewSizeResolver;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptDraftStateHeader {
    public final boolean isByChoice;
    public final boolean isEncrypt;
    public final boolean isPgpInline;
    public final boolean isReply;
    public final boolean isSignOnly;
    public final Map parameters;

    public AutocryptDraftStateHeader(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Map map) {
        this.isEncrypt = z;
        this.isSignOnly = z2;
        this.isReply = z3;
        this.isByChoice = z4;
        this.isPgpInline = z5;
        this.parameters = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocryptDraftStateHeader)) {
            return false;
        }
        AutocryptDraftStateHeader autocryptDraftStateHeader = (AutocryptDraftStateHeader) obj;
        return this.isEncrypt == autocryptDraftStateHeader.isEncrypt && this.isSignOnly == autocryptDraftStateHeader.isSignOnly && this.isReply == autocryptDraftStateHeader.isReply && this.isByChoice == autocryptDraftStateHeader.isByChoice && this.isPgpInline == autocryptDraftStateHeader.isPgpInline && this.parameters.equals(autocryptDraftStateHeader.parameters);
    }

    public final int hashCode() {
        return this.parameters.hashCode() + ((((((((((this.isEncrypt ? 1231 : 1237) * 31) + (this.isSignOnly ? 1231 : 1237)) * 31) + (this.isReply ? 1231 : 1237)) * 31) + (this.isByChoice ? 1231 : 1237)) * 31) + (this.isPgpInline ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AutocryptDraftStateHeader(isEncrypt=");
        sb.append(this.isEncrypt);
        sb.append(", isSignOnly=");
        sb.append(this.isSignOnly);
        sb.append(", isReply=");
        ViewSizeResolver.CC.m(sb, this.isReply, ", isByChoice=", this.isByChoice, ", isPgpInline=");
        sb.append(this.isPgpInline);
        sb.append(", parameters=");
        sb.append(this.parameters);
        sb.append(")");
        return sb.toString();
    }
}
