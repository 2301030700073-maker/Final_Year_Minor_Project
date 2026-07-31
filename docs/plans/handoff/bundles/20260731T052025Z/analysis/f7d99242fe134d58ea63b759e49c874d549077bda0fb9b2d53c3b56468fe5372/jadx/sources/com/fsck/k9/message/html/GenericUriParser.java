package com.fsck.k9.message.html;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GenericUriParser implements UriParser {
    public static final Pattern PATTERN = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.\\-]*:(?://[a-zA-Z0-9\\-._~%!$&'()*+,;=:\\[\\]@]*)?(?:[a-zA-Z0-9\\-._~%!$&'()*+,;=:@/]*)?(?:\\?[a-zA-Z0-9\\-._~%!$&'()*+,;=:@/?]*)?(?:#[a-zA-Z0-9\\-._~%!$&'()*+,;=:@/?]*)?");

    @Override // com.fsck.k9.message.html.UriParser
    public final UriMatch parseUri(int i, CharSequence charSequence) {
        charSequence.getClass();
        if (i < 0 || i >= charSequence.length()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Invalid 'startPos' value");
            return null;
        }
        Matcher matcher = PATTERN.matcher(charSequence);
        if (!matcher.find(i) || matcher.start() != i) {
            return null;
        }
        int start = matcher.start();
        int end = matcher.end();
        return new UriMatch(start, end, charSequence.subSequence(start, end));
    }
}
