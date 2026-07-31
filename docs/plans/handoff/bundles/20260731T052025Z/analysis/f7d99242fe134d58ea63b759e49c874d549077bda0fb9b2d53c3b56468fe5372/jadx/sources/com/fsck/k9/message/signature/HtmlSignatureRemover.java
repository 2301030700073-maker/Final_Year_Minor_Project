package com.fsck.k9.message.signature;

import java.util.regex.Pattern;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Tag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HtmlSignatureRemover {
    public static final Tag BLOCKQUOTE;
    public static final Tag BR;
    public static final Pattern DASH_SIGNATURE_HTML = Pattern.compile("\\s*--[  ]\\s*");

    static {
        ParseSettings parseSettings = ParseSettings.preserveCase;
        BLOCKQUOTE = Tag.valueOf("blockquote", "http://www.w3.org/1999/xhtml", parseSettings);
        BR = Tag.valueOf("br", "http://www.w3.org/1999/xhtml", parseSettings);
    }
}
