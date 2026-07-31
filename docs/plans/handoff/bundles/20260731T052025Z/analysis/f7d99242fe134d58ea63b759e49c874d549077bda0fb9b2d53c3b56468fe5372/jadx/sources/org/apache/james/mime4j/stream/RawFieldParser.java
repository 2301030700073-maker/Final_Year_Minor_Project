package org.apache.james.mime4j.stream;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.BitSet;
import okhttp3.Cookie;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RawFieldParser {
    public static final Entities$$ExternalSyntheticThreadLocal1 DECODE_BUFFER = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(3), 3);
    public static final BitSet COLON = INIT_BITSET(58);
    public static final BitSet EQUAL_OR_SEMICOLON = INIT_BITSET(61, 59);
    public static final BitSet SEMICOLON = INIT_BITSET(59);
    public static final RawFieldParser DEFAULT = new RawFieldParser();

    public static BitSet INIT_BITSET(int... iArr) {
        BitSet bitSet = new BitSet(iArr.length);
        for (int i : iArr) {
            bitSet.set(i);
        }
        return bitSet;
    }

    public static RawField parseField(ByteArrayBuffer byteArrayBuffer) {
        if (byteArrayBuffer == null) {
            return null;
        }
        MimeConfig mimeConfig = new MimeConfig(0, byteArrayBuffer.len);
        String parseToken = parseToken(byteArrayBuffer, mimeConfig, COLON);
        if (mimeConfig.atEnd()) {
            throw new MimeException("Invalid MIME field: no name/value separator found: ".concat(byteArrayBuffer.toString()));
        }
        return new RawField(byteArrayBuffer, mimeConfig.maxHeaderLen, parseToken, (String) null);
    }

    public static String parseToken(ByteSequence byteSequence, MimeConfig mimeConfig, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z = false;
            while (!mimeConfig.atEnd()) {
                char byteAt = (char) (byteSequence.byteAt(mimeConfig.maxHeaderLen) & 255);
                if (bitSet != null && bitSet.get(byteAt)) {
                    break loop0;
                }
                if (Cookie.Companion.isWhitespace(byteAt)) {
                    skipWhiteSpace(byteSequence, mimeConfig);
                    z = true;
                } else if (byteAt == '(') {
                    skipComment(byteSequence, mimeConfig);
                } else {
                    if (sb.length() > 0 && z) {
                        sb.append(' ');
                    }
                    int i = mimeConfig.maxHeaderLen;
                    int i2 = mimeConfig.maxHeaderCount;
                    int length = sb.length();
                    int i3 = i;
                    int i4 = i3;
                    while (i3 < i2) {
                        byte byteAt2 = byteSequence.byteAt(i3);
                        char c = (char) (byteAt2 & 255);
                        if ((bitSet != null && bitSet.get(c)) || Cookie.Companion.isWhitespace(c) || c == '(') {
                            break;
                        }
                        i4++;
                        if (byteAt2 < 0) {
                            sb.setLength(length);
                            ByteArrayBuffer byteArrayBuffer = (ByteArrayBuffer) DECODE_BUFFER.get();
                            byteArrayBuffer.len = 0;
                            while (i <= i3) {
                                byteArrayBuffer.append(byteSequence.byteAt(i));
                                i++;
                            }
                            while (true) {
                                i3++;
                                if (i3 >= i2) {
                                    break;
                                }
                                byte byteAt3 = byteSequence.byteAt(i3);
                                char c2 = (char) (byteAt3 & 255);
                                if ((bitSet != null && bitSet.get(c2)) || Cookie.Companion.isWhitespace(c2) || c2 == '(') {
                                    break;
                                }
                                i4++;
                                byteArrayBuffer.append(byteAt3);
                            }
                            mimeConfig.updatePos(i4);
                            Charset charset = StandardCharsets.UTF_8;
                            int i5 = ContentUtil.$r8$clinit;
                            sb.append(ContentUtil.decode(byteArrayBuffer, 0, byteArrayBuffer.len));
                        } else {
                            sb.append(c);
                            i3++;
                        }
                    }
                    mimeConfig.updatePos(i4);
                }
            }
            break loop0;
        }
        return sb.toString();
    }

    public static void skipComment(ByteSequence byteSequence, MimeConfig mimeConfig) {
        if (mimeConfig.atEnd()) {
            return;
        }
        int i = mimeConfig.maxHeaderLen;
        int i2 = mimeConfig.maxHeaderCount;
        if (((char) (byteSequence.byteAt(i) & 255)) != '(') {
            return;
        }
        int i3 = i + 1;
        int i4 = i3;
        int i5 = 1;
        boolean z = false;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            char byteAt = (char) (byteSequence.byteAt(i3) & 255);
            if (z) {
                z = false;
            } else if (byteAt == '\\') {
                z = true;
            } else if (byteAt == '(') {
                i5++;
            } else if (byteAt == ')') {
                i5--;
            }
            if (i5 <= 0) {
                i4++;
                break;
            } else {
                i3++;
                i4++;
            }
        }
        mimeConfig.updatePos(i4);
    }

    public static void skipWhiteSpace(ByteSequence byteSequence, MimeConfig mimeConfig) {
        int i = mimeConfig.maxHeaderLen;
        int i2 = mimeConfig.maxHeaderCount;
        int i3 = i;
        while (i < i2 && Cookie.Companion.isWhitespace((char) (byteSequence.byteAt(i) & 255))) {
            i3++;
            i++;
        }
        mimeConfig.updatePos(i3);
    }
}
