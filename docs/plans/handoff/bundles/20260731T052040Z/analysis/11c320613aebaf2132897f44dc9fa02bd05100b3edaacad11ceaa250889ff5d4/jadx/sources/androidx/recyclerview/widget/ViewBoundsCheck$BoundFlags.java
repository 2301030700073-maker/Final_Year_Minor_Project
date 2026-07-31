package androidx.recyclerview.widget;

import com.google.protobuf.InvalidProtocolBufferException;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewBoundsCheck$BoundFlags {
    public int mBoundFlags;
    public int mChildEnd;
    public int mChildStart;
    public int mRvEnd;
    public int mRvStart;

    public static int decodeZigZag32(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long decodeZigZag64(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public boolean boundsMatch() {
        int i = this.mBoundFlags;
        int i2 = 2;
        if ((i & 7) != 0) {
            int i3 = this.mChildStart;
            int i4 = this.mRvStart;
            if (((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) & i) == 0) {
                return false;
            }
        }
        if ((i & Token.ASSIGN_MOD) != 0) {
            int i5 = this.mChildStart;
            int i6 = this.mRvEnd;
            if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 1792) != 0) {
            int i7 = this.mChildEnd;
            int i8 = this.mRvStart;
            if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                return false;
            }
        }
        if ((i & 28672) != 0) {
            int i9 = this.mChildEnd;
            int i10 = this.mRvEnd;
            if (i9 > i10) {
                i2 = 1;
            } else if (i9 != i10) {
                i2 = 4;
            }
            if (((i2 << 12) & i) == 0) {
                return false;
            }
        }
        return true;
    }

    public int pushLimit(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = (this.mRvEnd - this.mChildStart) + i;
        if (i2 < 0) {
            throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i3 = this.mChildEnd;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        this.mChildEnd = i2;
        int i4 = this.mBoundFlags + this.mRvStart;
        this.mBoundFlags = i4;
        int i5 = i4 - this.mChildStart;
        int i6 = this.mChildEnd;
        if (i5 > i6) {
            int i7 = i5 - i6;
            this.mRvStart = i7;
            this.mBoundFlags = i4 - i7;
        } else {
            this.mRvStart = 0;
        }
        return i3;
    }
}
