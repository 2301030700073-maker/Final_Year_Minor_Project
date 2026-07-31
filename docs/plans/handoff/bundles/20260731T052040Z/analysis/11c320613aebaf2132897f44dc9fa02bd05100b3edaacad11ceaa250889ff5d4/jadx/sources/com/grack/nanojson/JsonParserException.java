package com.grack.nanojson;

/* loaded from: classes.dex */
public final class JsonParserException extends Exception {
    private static final long serialVersionUID = 1;
    private final int charOffset;
    private final int charPos;
    private final int linePos;

    public JsonParserException(Exception exc, String str, int i, int i2, int i3) {
        super(str, exc);
        this.linePos = i;
        this.charPos = i2;
        this.charOffset = i3;
    }
}
