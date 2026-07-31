package org.apache.james.mime4j.stream;

import de.cketti.changelog.XmlParser;
import java.lang.ref.SoftReference;
import java.util.BitSet;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.util.BufferRecycler;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFieldBuilder {
    public final XmlParser buf;
    public final int maxlen;
    public static final ThreadLocal _recyclerRef = new ThreadLocal();
    public static final BitSet FIELD_CHARS = new BitSet();

    static {
        for (int i = 33; i <= 57; i++) {
            FIELD_CHARS.set(i);
        }
        for (int i2 = 59; i2 <= 126; i2++) {
            FIELD_CHARS.set(i2);
        }
    }

    public DefaultFieldBuilder(int i) {
        ThreadLocal threadLocal = _recyclerRef;
        SoftReference softReference = (SoftReference) threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : (BufferRecycler) softReference.get();
        if (bufferRecycler == null) {
            bufferRecycler = new BufferRecycler();
            threadLocal.set(new SoftReference(bufferRecycler));
        }
        this.buf = new XmlParser(bufferRecycler, 4096);
        this.maxlen = i;
    }

    public final RawField build() {
        XmlParser xmlParser = this.buf;
        int i = xmlParser.lastVersionCode;
        if (i > 0) {
            if (xmlParser.byteAt(i - 1) == 10) {
                i--;
            }
            if (xmlParser.byteAt(i - 1) == 13) {
                i--;
            }
        }
        byte[] bArr = (byte[]) xmlParser.result;
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer();
        if (bArr == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return null;
        }
        if (i < 0 || i > bArr.length) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return null;
        }
        byte[] bArr2 = new byte[i];
        byteArrayBuffer.buffer = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i);
        byteArrayBuffer.len = i;
        RawFieldParser.DEFAULT.getClass();
        RawField parseField = RawFieldParser.parseField(byteArrayBuffer);
        String str = (String) parseField.name;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (!FIELD_CHARS.get(str.charAt(i2))) {
                throw new MimeException("MIME field name contains illegal characters: " + ((String) parseField.name));
            }
        }
        return parseField;
    }
}
