package com.beetstra.jutf7;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class UTF7StyleCharset extends Charset {
    public static final List CONTAINED = Arrays.asList("US-ASCII", "ISO-8859-1", "UTF-8", "UTF-16", "UTF-16LE", "UTF-16BE");
    public final Base64Util base64;
    public final boolean strict;

    public UTF7StyleCharset(String str, String[] strArr, String str2, boolean z) {
        super(str, strArr);
        this.base64 = new Base64Util(str2, 0);
        this.strict = z;
    }

    public abstract boolean canEncodeDirectly(char c);

    @Override // java.nio.charset.Charset
    public final boolean contains(Charset charset) {
        return CONTAINED.contains(charset.name());
    }

    @Override // java.nio.charset.Charset
    public final CharsetDecoder newDecoder() {
        return new UTF7StyleCharsetDecoder(this, this.base64, this.strict);
    }

    @Override // java.nio.charset.Charset
    public final CharsetEncoder newEncoder() {
        return new UTF7StyleCharsetEncoder(this, this.base64, this.strict);
    }

    public abstract byte shift();
}
