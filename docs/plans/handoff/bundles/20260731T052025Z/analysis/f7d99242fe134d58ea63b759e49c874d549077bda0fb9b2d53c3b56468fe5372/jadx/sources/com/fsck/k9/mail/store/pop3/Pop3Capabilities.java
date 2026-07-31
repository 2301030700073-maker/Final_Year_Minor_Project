package com.fsck.k9.mail.store.pop3;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pop3Capabilities {
    public boolean authPlain;
    public boolean cramMD5;
    public boolean external;
    public boolean stls;
    public boolean top;
    public boolean uidl;

    public final String toString() {
        boolean z = this.cramMD5;
        boolean z2 = this.authPlain;
        boolean z3 = this.stls;
        boolean z4 = this.top;
        boolean z5 = this.uidl;
        boolean z6 = this.external;
        StringBuilder sb = new StringBuilder("CRAM-MD5 ");
        sb.append(z);
        sb.append(", PLAIN ");
        sb.append(z2);
        sb.append(", STLS ");
        ViewSizeResolver.CC.m(sb, z3, ", TOP ", z4, ", UIDL ");
        sb.append(z5);
        sb.append(", EXTERNAL ");
        sb.append(z6);
        return sb.toString();
    }
}
