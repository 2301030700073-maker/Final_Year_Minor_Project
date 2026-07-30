package io.ktor.utils.io.charsets;

import io.ktor.utils.io.core.BytePacketBuilder;
import io.ktor.utils.io.core.ByteReadPacket;
import io.ktor.utils.io.core.Input;
import io.ktor.utils.io.core.Output;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import io.ktor.utils.io.core.internal.UnsafeKt;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Encoding.kt */
/* loaded from: classes.dex */
public abstract class EncodingKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final ByteReadPacket encode(CharsetEncoder charsetEncoder, CharSequence input, int i, int i2) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, 0 == true ? 1 : 0);
        try {
            encodeToImpl(charsetEncoder, bytePacketBuilder, input, i, i2);
            return bytePacketBuilder.build();
        } catch (Throwable th) {
            bytePacketBuilder.release();
            throw th;
        }
    }

    public static /* synthetic */ ByteReadPacket encode$default(CharsetEncoder charsetEncoder, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return encode(charsetEncoder, charSequence, i, i2);
    }

    public static /* synthetic */ String decode$default(CharsetDecoder charsetDecoder, Input input, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        return decode(charsetDecoder, input, i);
    }

    public static final String decode(CharsetDecoder charsetDecoder, Input input, int i) {
        Intrinsics.checkNotNullParameter(charsetDecoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        StringBuilder sb = new StringBuilder((int) Math.min(i, sizeEstimate(input)));
        CharsetJVMKt.decode(charsetDecoder, input, sb, i);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public static final long sizeEstimate(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        return input instanceof ByteReadPacket ? input.getRemaining() : Math.max(input.getRemaining(), 16L);
    }

    private static final int encodeCompleteImpl(CharsetEncoder charsetEncoder, Output output) {
        ChunkBuffer prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, null);
        int i = 1;
        int i2 = 0;
        while (true) {
            try {
                int limit = prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition();
                i = CharsetJVMKt.encodeComplete(charsetEncoder, prepareWriteHead) ? 0 : i + 1;
                i2 += limit - (prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition());
                if (i <= 0) {
                    return i2;
                }
                prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, prepareWriteHead);
            } finally {
                output.afterHeadWrite();
            }
        }
    }

    public static final int encodeToImpl(CharsetEncoder charsetEncoder, Output destination, CharSequence input, int i, int i2) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(input, "input");
        if (i >= i2) {
            return 0;
        }
        ChunkBuffer prepareWriteHead = UnsafeKt.prepareWriteHead(destination, 1, null);
        int i3 = 0;
        while (true) {
            try {
                int limit = prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition();
                int encodeImpl = CharsetJVMKt.encodeImpl(charsetEncoder, input, i, i2, prepareWriteHead);
                if (encodeImpl >= 0) {
                    i += encodeImpl;
                    i3 += limit - (prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition());
                    int i4 = i >= i2 ? 0 : encodeImpl == 0 ? 8 : 1;
                    if (i4 > 0) {
                        prepareWriteHead = UnsafeKt.prepareWriteHead(destination, i4, prepareWriteHead);
                    } else {
                        destination.afterHeadWrite();
                        return i3 + encodeCompleteImpl(charsetEncoder, destination);
                    }
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                destination.afterHeadWrite();
                throw th;
            }
        }
    }
}
