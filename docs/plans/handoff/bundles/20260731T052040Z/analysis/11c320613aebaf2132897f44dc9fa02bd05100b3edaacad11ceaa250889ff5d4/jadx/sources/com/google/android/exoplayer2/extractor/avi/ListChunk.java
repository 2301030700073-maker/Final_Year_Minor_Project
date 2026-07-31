package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
final class ListChunk implements AviChunk {
    public final ImmutableList children;
    private final int type;

    private ListChunk(int i, ImmutableList immutableList) {
        this.type = i;
        this.children = immutableList;
    }

    private static AviChunk createBox(int i, int i2, ParsableByteArray parsableByteArray) {
        switch (i) {
            case AviExtractor.FOURCC_strf /* 1718776947 */:
                return StreamFormatChunk.parseFrom(i2, parsableByteArray);
            case AviExtractor.FOURCC_avih /* 1751742049 */:
                return AviMainHeaderChunk.parseFrom(parsableByteArray);
            case AviExtractor.FOURCC_strh /* 1752331379 */:
                return AviStreamHeaderChunk.parseFrom(parsableByteArray);
            case AviExtractor.FOURCC_strn /* 1852994675 */:
                return StreamNameChunk.parseFrom(parsableByteArray);
            default:
                return null;
        }
    }

    public static ListChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
        Object[] objArr = new Object[4];
        int limit = parsableByteArray.limit();
        int i2 = -2;
        int i3 = 0;
        boolean z = false;
        while (parsableByteArray.bytesLeft() > 8) {
            int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
            int position = parsableByteArray.getPosition() + parsableByteArray.readLittleEndianInt();
            parsableByteArray.setLimit(position);
            AviChunk parseFrom = readLittleEndianInt == 1414744396 ? parseFrom(parsableByteArray.readLittleEndianInt(), parsableByteArray) : createBox(readLittleEndianInt, i2, parsableByteArray);
            if (parseFrom != null) {
                if (parseFrom.getType() == 1752331379) {
                    i2 = ((AviStreamHeaderChunk) parseFrom).getTrackType();
                }
                int i4 = i3 + 1;
                if (objArr.length < i4) {
                    objArr = Arrays.copyOf(objArr, Maps.expandedCapacity(objArr.length, i4));
                } else {
                    if (z) {
                        objArr = Arrays.copyOf(objArr, objArr.length);
                    }
                    objArr[i3] = parseFrom;
                    i3++;
                }
                z = false;
                objArr[i3] = parseFrom;
                i3++;
            }
            parsableByteArray.setPosition(position);
            parsableByteArray.setLimit(limit);
        }
        return new ListChunk(i, ImmutableList.asImmutableList(i3, objArr));
    }

    public <T extends AviChunk> T getChild(Class<T> cls) {
        UnmodifiableIterator it = this.children.iterator();
        while (it.hasNext()) {
            T t = (T) it.next();
            if (t.getClass() == cls) {
                return t;
            }
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return this.type;
    }
}
