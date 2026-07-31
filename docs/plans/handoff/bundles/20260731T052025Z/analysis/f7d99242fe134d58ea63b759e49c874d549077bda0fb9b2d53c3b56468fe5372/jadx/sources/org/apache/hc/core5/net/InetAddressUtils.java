package org.apache.hc.core5.net;

import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InetAddressUtils {
    public static final Pattern IPV4_PATTERN = Pattern.compile("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");
    public static final Pattern IPV6_HEX_COMPRESSED_PATTERN;
    public static final Pattern IPV6_STD_PATTERN;
    public static final Pattern SCOPE_ID_PATTERN;

    static {
        Pattern.compile("^::[fF]{4}:(((25[0-5]|2[0-4]\\d|1\\d\\d|0?\\d?\\d))\\.){3}(25[0-5]|2[0-4]\\d|1\\d\\d|0?\\d?\\d)$");
        IPV6_STD_PATTERN = Pattern.compile("^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$");
        IPV6_HEX_COMPRESSED_PATTERN = Pattern.compile("^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$");
        SCOPE_ID_PATTERN = Pattern.compile("^[a-zA-Z0-9\\-]+$");
    }

    public static boolean hasValidIPv6ColonCount(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (charSequence.charAt(i2) == ':') {
                i++;
            }
        }
        return i >= 2 && i <= 7;
    }
}
