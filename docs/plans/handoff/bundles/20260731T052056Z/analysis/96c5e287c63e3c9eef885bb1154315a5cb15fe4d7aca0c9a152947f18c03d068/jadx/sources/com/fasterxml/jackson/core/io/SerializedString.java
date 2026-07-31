package com.fasterxml.jackson.core.io;

import java.io.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SerializedString implements Serializable {
    public static final JsonStringEncoder JSON_ENCODER = JsonStringEncoder.instance;
    public char[] _quotedChars;
    public final String _value;

    public SerializedString(String str) {
        if (str != null) {
            this._value = str;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Null String illegal for SerializedString");
            throw null;
        }
    }

    public final char[] asQuotedChars() {
        char[] cArr = this._quotedChars;
        if (cArr != null) {
            return cArr;
        }
        JSON_ENCODER.getClass();
        char[] quoteAsString = JsonStringEncoder.quoteAsString(this._value);
        this._quotedChars = quoteAsString;
        return quoteAsString;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != SerializedString.class) {
            return false;
        }
        return this._value.equals(((SerializedString) obj)._value);
    }

    public final int hashCode() {
        return this._value.hashCode();
    }

    public final String toString() {
        return this._value;
    }
}
