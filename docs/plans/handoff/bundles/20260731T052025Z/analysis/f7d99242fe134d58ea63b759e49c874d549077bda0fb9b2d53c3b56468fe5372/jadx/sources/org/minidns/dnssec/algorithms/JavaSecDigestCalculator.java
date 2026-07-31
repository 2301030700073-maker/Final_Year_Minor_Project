package org.minidns.dnssec.algorithms;

import java.security.MessageDigest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JavaSecDigestCalculator {
    public final MessageDigest md;

    public JavaSecDigestCalculator(String str) {
        this.md = MessageDigest.getInstance(str);
    }
}
