package org.commonmark.internal.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Escaping {
    public static final Pattern BACKSLASH_OR_AMP = Pattern.compile("[\\\\&]");
    public static final Pattern ENTITY_OR_ESCAPED_CHAR = Pattern.compile("\\\\[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);
    public static final Path.Companion UNESCAPE_REPLACER;
    public static final Pattern WHITESPACE;

    static {
        Pattern.compile("(%[a-fA-F0-9]{0,2}|[^:/?#@!$&'()*+,;=a-zA-Z0-9\\-._~])");
        WHITESPACE = Pattern.compile("[ \t\r\n]+");
        UNESCAPE_REPLACER = new Path.Companion(8);
    }

    public static String unescapeString(String str) {
        if (!BACKSLASH_OR_AMP.matcher(str).find()) {
            return str;
        }
        Matcher matcher = ENTITY_OR_ESCAPED_CHAR.matcher(str);
        if (!matcher.find()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() + 16);
        int i = 0;
        do {
            sb.append((CharSequence) str, i, matcher.start());
            String group = matcher.group();
            UNESCAPE_REPLACER.getClass();
            if (group.charAt(0) == '\\') {
                sb.append((CharSequence) group, 1, group.length());
            } else {
                sb.append(Html5Entities.entityToString(group));
            }
            i = matcher.end();
        } while (matcher.find());
        if (i != str.length()) {
            sb.append((CharSequence) str, i, str.length());
        }
        return sb.toString();
    }
}
