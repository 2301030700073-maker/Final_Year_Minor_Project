package com.fsck.k9.message;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum IdentityField {
    LENGTH("l"),
    OFFSET("o"),
    FOOTER_OFFSET("fo"),
    PLAIN_LENGTH("pl"),
    PLAIN_OFFSET("po"),
    MESSAGE_FORMAT("f"),
    /* JADX INFO: Fake field, exist only in values array */
    EF11("r"),
    SIGNATURE("s"),
    NAME("n"),
    EMAIL("e"),
    ORIGINAL_MESSAGE("m"),
    CURSOR_POSITION("p"),
    QUOTED_TEXT_MODE("q"),
    QUOTE_STYLE("qs");

    public final String value;

    IdentityField(String str) {
        this.value = str;
    }
}
