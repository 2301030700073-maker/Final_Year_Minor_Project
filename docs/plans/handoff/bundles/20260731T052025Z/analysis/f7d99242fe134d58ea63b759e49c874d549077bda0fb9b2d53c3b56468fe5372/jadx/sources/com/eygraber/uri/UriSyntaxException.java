package com.eygraber.uri;

import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriSyntaxException extends Exception {
    public final int index;
    public final String input;
    public final String internalReason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UriSyntaxException(int i, String str, String str2) {
        super(str2);
        str.getClass();
        this.input = str;
        this.internalReason = str2;
        this.index = i;
        if (i >= -1) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
        throw null;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.internalReason);
        int i = this.index;
        if (i > -1) {
            sb.append(" at index ");
            sb.append(i);
        }
        sb.append(": ");
        sb.append(this.input);
        return sb.toString();
    }
}
