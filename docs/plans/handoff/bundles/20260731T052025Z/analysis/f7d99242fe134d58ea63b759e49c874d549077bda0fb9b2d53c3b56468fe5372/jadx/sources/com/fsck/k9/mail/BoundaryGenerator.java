package com.fsck.k9.mail;

import java.security.SecureRandom;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BoundaryGenerator {
    public static final char[] BASE36_MAP = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    public static final BoundaryGenerator INSTANCE = new BoundaryGenerator(new SecureRandom());
    public final SecureRandom random;

    public BoundaryGenerator(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    public final String generateBoundary() {
        StringBuilder sb = new StringBuilder(34);
        sb.append("----");
        for (int i = 0; i < 30; i++) {
            sb.append(BASE36_MAP[this.random.nextInt(36)]);
        }
        return sb.toString();
    }
}
