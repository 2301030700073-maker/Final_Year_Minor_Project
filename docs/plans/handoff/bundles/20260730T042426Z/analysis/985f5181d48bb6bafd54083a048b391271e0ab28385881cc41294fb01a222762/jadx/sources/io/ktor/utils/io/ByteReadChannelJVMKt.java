package io.ktor.utils.io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;

/* compiled from: ByteReadChannelJVM.kt */
/* loaded from: classes.dex */
public abstract class ByteReadChannelJVMKt {
    public static final Object copyTo(ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel, long j, Continuation continuation) {
        if (byteReadChannel == byteWriteChannel) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (j == 0) {
            return Boxing.boxLong(0L);
        }
        if ((byteReadChannel instanceof ByteBufferChannel) && (byteWriteChannel instanceof ByteBufferChannel)) {
            return ((ByteBufferChannel) byteWriteChannel).copyDirect$ktor_io((ByteBufferChannel) byteReadChannel, j, null, continuation);
        }
        return copyToImpl(byteReadChannel, byteWriteChannel, j, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008f A[Catch: all -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00f2, blocks: (B:37:0x00e8, B:39:0x00ee, B:19:0x008f), top: B:36:0x00e8 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c4 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #2 {all -> 0x0048, blocks: (B:12:0x0040, B:24:0x00bb, B:26:0x00c4, B:31:0x0101, B:53:0x0067), top: B:7:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v3, types: [int] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00db -> B:14:0x00e4). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object copyToImpl(io.ktor.utils.io.ByteReadChannel r19, io.ktor.utils.io.ByteWriteChannel r20, long r21, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteReadChannelJVMKt.copyToImpl(io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel, long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
