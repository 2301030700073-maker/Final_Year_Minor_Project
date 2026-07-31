package com.fsck.k9;

import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailAddressValidator {
    public static final Pattern EMAIL_ADDRESS_PATTERN = Pattern.compile("^([0-9a-zA-Z!#$%&'*+\\-/=?^_`{|}~]+(\\.[0-9a-zA-Z!#$%&'*+\\-/=?^_`{|}~]+)*|\"([\\p{Graph}\\p{Blank}&&[^\"\\\\]]|\\\\[\\p{Graph}\\p{Blank}])+\")\\@((((([a-zA-Z0-9]([a-zA-Z0-9]|\\-|_)*[a-zA-Z0-9])|[a-zA-Z0-9])\\.)+(([a-zA-Z]([a-zA-Z0-9]|\\-|_)*[a-zA-Z0-9])|[a-zA-Z]))|(([a-zA-Z0-9]([a-zA-Z0-9]|\\-|_)*[a-zA-Z0-9])|[a-zA-Z0-9]))");

    public static boolean isValidAddressOnly(CharSequence charSequence) {
        charSequence.getClass();
        return EMAIL_ADDRESS_PATTERN.matcher(charSequence).matches();
    }
}
