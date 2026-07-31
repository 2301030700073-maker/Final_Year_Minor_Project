package org.openintents.openpgp.util;

import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpUtils {
    public static final Pattern USER_ID_PATTERN;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class UserId {
        public final String email;
        public final String name;

        public UserId(String str, String str2) {
            this.name = str;
            this.email = str2;
        }
    }

    static {
        Pattern.compile("(-----BEGIN PGP MESSAGE-----.*?-----END PGP MESSAGE-----).*", 32);
        Pattern.compile("(-----BEGIN PGP SIGNED MESSAGE-----.*?-----BEGIN PGP SIGNATURE-----.*?-----END PGP SIGNATURE-----).*", 32);
        USER_ID_PATTERN = Pattern.compile("^(.*?)(?: \\((.*)\\))?(?: <(.*)>)?$");
    }
}
