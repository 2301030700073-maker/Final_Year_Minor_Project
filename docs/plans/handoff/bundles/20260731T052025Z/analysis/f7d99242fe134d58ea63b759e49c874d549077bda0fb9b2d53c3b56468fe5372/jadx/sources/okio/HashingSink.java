package okio;

import java.security.MessageDigest;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HashingSink extends ForwardingSink {
    public final MessageDigest messageDigest;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(BlackholeSink blackholeSink, String str) {
        super(blackholeSink);
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.getClass();
        this.messageDigest = messageDigest;
    }

    @Override // okio.Sink
    public final void write(Buffer buffer, long j) {
        buffer.getClass();
        AtomicFU.checkOffsetAndCount(buffer.size, 0L, j);
        Segment segment = buffer.head;
        segment.getClass();
        long j2 = 0;
        while (j2 < j) {
            int min = (int) Math.min(j - j2, segment.limit - segment.pos);
            MessageDigest messageDigest = this.messageDigest;
            messageDigest.getClass();
            messageDigest.update(segment.data, segment.pos, min);
            j2 += min;
            segment = segment.next;
            segment.getClass();
        }
        this.delegate.write(buffer, j);
    }
}
