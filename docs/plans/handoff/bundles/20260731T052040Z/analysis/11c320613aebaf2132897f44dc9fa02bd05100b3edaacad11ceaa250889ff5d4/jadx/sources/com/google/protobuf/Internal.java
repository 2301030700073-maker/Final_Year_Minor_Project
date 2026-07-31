package com.google.protobuf;

import androidx.recyclerview.widget.ViewBoundsCheck$BoundFlags;
import com.google.android.exoplayer2.util.Log;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Internal {
    public static final byte[] EMPTY_BYTE_ARRAY;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface ProtobufList extends List, RandomAccess {
        ProtobufList mutableCopyWithCapacity(int i);
    }

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        ByteBuffer.wrap(bArr);
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = new ViewBoundsCheck$BoundFlags();
        viewBoundsCheck$BoundFlags.mChildEnd = Log.LOG_LEVEL_OFF;
        viewBoundsCheck$BoundFlags.mBoundFlags = 0 + 0;
        viewBoundsCheck$BoundFlags.mRvEnd = 0;
        viewBoundsCheck$BoundFlags.mChildStart = 0;
        try {
            viewBoundsCheck$BoundFlags.pushLimit(0);
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int hashLong(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int partialHash(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }
}
