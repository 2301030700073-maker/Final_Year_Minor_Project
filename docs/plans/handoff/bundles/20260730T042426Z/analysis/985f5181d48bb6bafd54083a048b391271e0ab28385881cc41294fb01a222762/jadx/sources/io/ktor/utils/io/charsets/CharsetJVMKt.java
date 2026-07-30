package io.ktor.utils.io.charsets;

import io.ktor.utils.io.bits.Memory;
import io.ktor.utils.io.core.Buffer;
import io.ktor.utils.io.core.Input;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import io.ktor.utils.io.core.internal.UnsafeKt;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CharsetJVM.kt */
/* loaded from: classes.dex */
public abstract class CharsetJVMKt {
    private static final ByteBuffer EmptyByteBuffer;
    private static final CharBuffer EmptyCharBuffer = CharBuffer.allocate(0);

    public static final String getName(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "<this>");
        String name = charset.name();
        Intrinsics.checkNotNullExpressionValue(name, "name()");
        return name;
    }

    public static final byte[] encodeToByteArray(CharsetEncoder charsetEncoder, CharSequence input, int i, int i2) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (input instanceof String) {
            if (i == 0 && i2 == input.length()) {
                byte[] bytes = ((String) input).getBytes(charsetEncoder.charset());
                Intrinsics.checkNotNullExpressionValue(bytes, "input as java.lang.String).getBytes(charset())");
                return bytes;
            }
            String substring = ((String) input).substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes2 = substring.getBytes(charsetEncoder.charset());
            Intrinsics.checkNotNullExpressionValue(bytes2, "input.substring(fromInde…ring).getBytes(charset())");
            return bytes2;
        }
        return encodeToByteArraySlow(charsetEncoder, input, i, i2);
    }

    private static final byte[] encodeToByteArraySlow(CharsetEncoder charsetEncoder, CharSequence charSequence, int i, int i2) {
        ByteBuffer encode = charsetEncoder.encode(CharBuffer.wrap(charSequence, i, i2));
        byte[] bArr = null;
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            byte[] array = encode.array();
            if (array.length == encode.remaining()) {
                bArr = array;
            }
        }
        if (bArr != null) {
            return bArr;
        }
        byte[] bArr2 = new byte[encode.remaining()];
        encode.get(bArr2);
        return bArr2;
    }

    public static final int encodeImpl(CharsetEncoder charsetEncoder, CharSequence input, int i, int i2, Buffer dst) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(dst, "dst");
        CharBuffer wrap = CharBuffer.wrap(input, i, i2);
        int remaining = wrap.remaining();
        ByteBuffer m2629getMemorySK3TCg8 = dst.m2629getMemorySK3TCg8();
        int writePosition = dst.getWritePosition();
        int limit = dst.getLimit() - writePosition;
        ByteBuffer m2624slice87lwejk = Memory.m2624slice87lwejk(m2629getMemorySK3TCg8, writePosition, limit);
        CoderResult result = charsetEncoder.encode(wrap, m2624slice87lwejk, false);
        if (result.isMalformed() || result.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            throwExceptionWrapped(result);
        }
        if (m2624slice87lwejk.limit() != limit) {
            throw new IllegalStateException("Buffer's limit change is not allowed");
        }
        dst.commitWritten(m2624slice87lwejk.position());
        return remaining - wrap.remaining();
    }

    public static final int decode(CharsetDecoder charsetDecoder, Input input, Appendable dst, int i) {
        CoderResult cr;
        ChunkBuffer prepareReadNextHead;
        Intrinsics.checkNotNullParameter(charsetDecoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(dst, "dst");
        CharBuffer allocate = CharBuffer.allocate(8192);
        boolean z = true;
        ChunkBuffer prepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        int i2 = 0;
        if (prepareReadFirstHead != null) {
            int i3 = 1;
            int i4 = 1;
            int i5 = 0;
            while (true) {
                try {
                    int writePosition = prepareReadFirstHead.getWritePosition() - prepareReadFirstHead.getReadPosition();
                    if (writePosition >= i3) {
                        int i6 = i - i5;
                        if (i6 == 0) {
                            i3 = 0;
                        } else {
                            try {
                                ByteBuffer m2629getMemorySK3TCg8 = prepareReadFirstHead.m2629getMemorySK3TCg8();
                                int readPosition = prepareReadFirstHead.getReadPosition();
                                int writePosition2 = prepareReadFirstHead.getWritePosition() - readPosition;
                                ByteBuffer m2624slice87lwejk = Memory.m2624slice87lwejk(m2629getMemorySK3TCg8, readPosition, writePosition2);
                                allocate.clear();
                                if (i6 < 8192) {
                                    allocate.limit(i6);
                                }
                                CoderResult rc = charsetDecoder.decode(m2624slice87lwejk, allocate, false);
                                allocate.flip();
                                i5 += allocate.remaining();
                                dst.append(allocate);
                                if (rc.isMalformed() || rc.isUnmappable()) {
                                    Intrinsics.checkNotNullExpressionValue(rc, "rc");
                                    throwExceptionWrapped(rc);
                                }
                                i4 = (rc.isUnderflow() && m2624slice87lwejk.hasRemaining()) ? i4 + 1 : 1;
                                if (m2624slice87lwejk.limit() != writePosition2) {
                                    throw new IllegalStateException("Buffer's limit change is not allowed");
                                }
                                prepareReadFirstHead.discardExact(m2624slice87lwejk.position());
                                i3 = i4;
                            } finally {
                                prepareReadFirstHead.getWritePosition();
                                prepareReadFirstHead.getReadPosition();
                            }
                        }
                        writePosition = prepareReadFirstHead.getWritePosition() - prepareReadFirstHead.getReadPosition();
                    }
                    if (writePosition != 0) {
                        if (writePosition >= i3 && prepareReadFirstHead.getCapacity() - prepareReadFirstHead.getLimit() >= 8) {
                            prepareReadNextHead = prepareReadFirstHead;
                        }
                        UnsafeKt.completeReadHead(input, prepareReadFirstHead);
                        prepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                    } else {
                        try {
                            prepareReadNextHead = UnsafeKt.prepareReadNextHead(input, prepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, prepareReadFirstHead);
                            }
                            throw th;
                        }
                    }
                    if (prepareReadNextHead == null) {
                        break;
                    }
                    if (i3 <= 0) {
                        i2 = 1;
                        prepareReadFirstHead = prepareReadNextHead;
                        break;
                    }
                    prepareReadFirstHead = prepareReadNextHead;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (i2 != 0) {
                UnsafeKt.completeReadHead(input, prepareReadFirstHead);
            }
            i2 = i5;
        }
        do {
            allocate.clear();
            int i7 = i - i2;
            if (i7 == 0) {
                break;
            }
            if (i7 < 8192) {
                allocate.limit(i7);
            }
            cr = charsetDecoder.decode(EmptyByteBuffer, allocate, true);
            allocate.flip();
            i2 += allocate.remaining();
            dst.append(allocate);
            if (cr.isUnmappable() || cr.isMalformed()) {
                Intrinsics.checkNotNullExpressionValue(cr, "cr");
                throwExceptionWrapped(cr);
            }
        } while (cr.isOverflow());
        return i2;
    }

    public static final String decodeExactBytes(CharsetDecoder charsetDecoder, Input input, int i) {
        Intrinsics.checkNotNullParameter(charsetDecoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (i != 0) {
            if (input.getHeadEndExclusive() - input.getHeadPosition() >= i) {
                if (input.m2631getHeadMemorySK3TCg8().hasArray()) {
                    ByteBuffer m2631getHeadMemorySK3TCg8 = input.m2631getHeadMemorySK3TCg8();
                    byte[] array = m2631getHeadMemorySK3TCg8.array();
                    Intrinsics.checkNotNullExpressionValue(array, "bb.array()");
                    int arrayOffset = m2631getHeadMemorySK3TCg8.arrayOffset() + m2631getHeadMemorySK3TCg8.position() + input.getHead().getReadPosition();
                    Charset charset = charsetDecoder.charset();
                    Intrinsics.checkNotNullExpressionValue(charset, "charset()");
                    String str = new String(array, arrayOffset, i, charset);
                    input.discardExact(i);
                    return str;
                }
                return decodeImplByteBuffer(charsetDecoder, input, i);
            }
            return decodeImplSlow(charsetDecoder, input, i);
        }
        return "";
    }

    private static final String decodeImplByteBuffer(CharsetDecoder charsetDecoder, Input input, int i) {
        CharBuffer allocate = CharBuffer.allocate(i);
        ByteBuffer m2624slice87lwejk = Memory.m2624slice87lwejk(input.m2631getHeadMemorySK3TCg8(), input.getHead().getReadPosition(), i);
        CoderResult rc = charsetDecoder.decode(m2624slice87lwejk, allocate, true);
        if (rc.isMalformed() || rc.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(rc, "rc");
            throwExceptionWrapped(rc);
        }
        allocate.flip();
        input.discardExact(m2624slice87lwejk.position());
        String charBuffer = allocate.toString();
        Intrinsics.checkNotNullExpressionValue(charBuffer, "cb.toString()");
        return charBuffer;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String decodeImplSlow(java.nio.charset.CharsetDecoder r17, io.ktor.utils.io.core.Input r18, int r19) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.charsets.CharsetJVMKt.decodeImplSlow(java.nio.charset.CharsetDecoder, io.ktor.utils.io.core.Input, int):java.lang.String");
    }

    private static final void throwExceptionWrapped(CoderResult coderResult) {
        try {
            coderResult.throwException();
        } catch (java.nio.charset.MalformedInputException e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Failed to decode bytes";
            }
            throw new MalformedInputException(message);
        }
    }

    static {
        ByteBuffer allocate = ByteBuffer.allocate(0);
        Intrinsics.checkNotNull(allocate);
        EmptyByteBuffer = allocate;
    }

    public static final boolean encodeComplete(CharsetEncoder charsetEncoder, Buffer dst) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        ByteBuffer m2629getMemorySK3TCg8 = dst.m2629getMemorySK3TCg8();
        int writePosition = dst.getWritePosition();
        int limit = dst.getLimit() - writePosition;
        ByteBuffer m2624slice87lwejk = Memory.m2624slice87lwejk(m2629getMemorySK3TCg8, writePosition, limit);
        CoderResult result = charsetEncoder.encode(EmptyCharBuffer, m2624slice87lwejk, true);
        if (result.isMalformed() || result.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            throwExceptionWrapped(result);
        }
        boolean isUnderflow = result.isUnderflow();
        if (m2624slice87lwejk.limit() != limit) {
            throw new IllegalStateException("Buffer's limit change is not allowed");
        }
        dst.commitWritten(m2624slice87lwejk.position());
        return isUnderflow;
    }
}
