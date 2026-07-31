package com.beetstra.jutf7;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharsetProvider extends java.nio.charset.spi.CharsetProvider {
    public final List charsets = Arrays.asList(new UTF7Charset("UTF-7", UTF7_ALIASES, false), new ModifiedUTF7Charset("X-MODIFIED-UTF-7", UTF7_M_ALIASES, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,", true), new UTF7Charset("X-UTF-7-OPTIONAL", UTF7_O_ALIASES, true));
    public static final String[] UTF7_ALIASES = {"UNICODE-1-1-UTF-7", "CSUNICODE11UTF7", "X-RFC2152", "X-RFC-2152"};
    public static final String[] UTF7_O_ALIASES = {"X-RFC2152-OPTIONAL", "X-RFC-2152-OPTIONAL"};
    public static final String[] UTF7_M_ALIASES = {"X-IMAP-MODIFIED-UTF-7", "X-IMAP4-MODIFIED-UTF7", "X-IMAP4-MODIFIED-UTF-7", "X-RFC3501", "X-RFC-3501"};

    @Override // java.nio.charset.spi.CharsetProvider
    public final Charset charsetForName(String str) {
        String upperCase = str.toUpperCase(Locale.US);
        List<Charset> list = this.charsets;
        for (Charset charset : list) {
            if (charset.name().equals(upperCase)) {
                return charset;
            }
        }
        for (Charset charset2 : list) {
            if (charset2.aliases().contains(upperCase)) {
                return charset2;
            }
        }
        return null;
    }

    @Override // java.nio.charset.spi.CharsetProvider
    public final Iterator charsets() {
        return this.charsets.iterator();
    }
}
