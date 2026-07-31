package org.schabi.newpipe.streams;

import androidx.compose.ui.Modifier;
import java.io.Closeable;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class WebMWriter implements Closeable {
    public ArrayList clustersOffsetsSizes;
    public boolean done;
    public WebMReader.WebMTrack[] infoTracks;
    public byte[] outBuffer;
    public ByteBuffer outByteBuffer;
    public boolean parsed;
    public WebMReader[] readers;
    public WebMReader.Cluster[] readersCluster;
    public WebMReader.Segment[] readersSegment;
    public SharpStream[] sourceTracks;
    public long written;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Block {
        public long absoluteTimecode;
        public InputStream data;
        public int dataSize;
        public byte flags;
        public int trackNumber;

        public final String toString() {
            return String.format("trackNumber=%s  isKeyFrame=%S  absoluteTimecode=%s", Integer.valueOf(this.trackNumber), Boolean.valueOf((this.flags & 128) == 128), Long.valueOf(this.absoluteTimecode));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ClusterInfo {
        public long offset;
        public int size;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class KeyFrame {
        public final long clusterPosition;
        public final long duration;
        public final int relativePosition;

        public KeyFrame(long j, long j2, long j3, long j4) {
            this.clusterPosition = j2 - j;
            this.relativePosition = (int) ((j3 - j2) - 8);
            this.duration = j4;
        }
    }

    public static byte[] encode(long j, boolean z) {
        int i = 1;
        while (true) {
            if (i > 7) {
                i = -1;
                break;
            }
            if (j < Math.pow(2.0d, i * 7)) {
                break;
            }
            i++;
        }
        if (i < 1) {
            throw new ArithmeticException("Can't encode a number of bigger than 7 bytes");
        }
        if (j == Math.pow(2.0d, i * 7) - 1.0d) {
            i++;
        }
        byte[] bArr = new byte[(z ? 1 : 0) + i];
        int i2 = i - 1;
        int i3 = i2 / 8;
        if (i2 - (8 * i3) != 0 && (1 | ((i2 ^ 8) >> 31)) < 0) {
            i3--;
        }
        long j2 = i3;
        int i4 = 0;
        int i5 = i2;
        while (i5 >= 0) {
            long j3 = j >>> i4;
            if (!z && i5 == j2) {
                j3 |= 128 >>> i2;
            }
            bArr[(z ? 1 : 0) + i5] = (byte) j3;
            i5--;
            i4 += 8;
        }
        if (z) {
            bArr[0] = (byte) (i | 128);
        }
        return bArr;
    }

    public static void lengthFor(ArrayList arrayList) {
        long j = 0;
        for (int i = 2; i < arrayList.size(); i++) {
            j += ((byte[]) arrayList.get(i)).length;
        }
        arrayList.set(1, encode(j, false));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.done = true;
        this.parsed = true;
        for (SharpStream sharpStream : this.sourceTracks) {
            sharpStream.close();
        }
        this.sourceTracks = null;
        this.readers = null;
        this.infoTracks = null;
        this.readersSegment = null;
        this.readersCluster = null;
        this.outBuffer = null;
        this.outByteBuffer = null;
        this.clustersOffsetsSizes = null;
    }

    public final void dump(byte[] bArr, int i, SharpStream sharpStream) {
        sharpStream.write(bArr, 0, i);
        this.written += i;
    }

    public final Block getNextBlockFrom(int i) {
        WebMReader.Segment[] segmentArr = this.readersSegment;
        if (segmentArr[i] == null) {
            segmentArr[i] = this.readers[i].getNextSegment();
            if (this.readersSegment[i] == null) {
                return null;
            }
        }
        WebMReader.Cluster[] clusterArr = this.readersCluster;
        if (clusterArr[i] == null) {
            clusterArr[i] = this.readersSegment[i].getNextCluster();
            if (this.readersCluster[i] == null) {
                this.readersSegment[i] = null;
                return getNextBlockFrom(i);
            }
        }
        WebMReader.SimpleBlock nextSimpleBlock = this.readersCluster[i].getNextSimpleBlock();
        if (nextSimpleBlock == null) {
            this.readersCluster[i] = null;
            return new Block();
        }
        Block block = new Block();
        block.data = nextSimpleBlock.data;
        block.dataSize = nextSimpleBlock.dataSize;
        block.trackNumber = i;
        block.flags = nextSimpleBlock.flags;
        block.absoluteTimecode = nextSimpleBlock.absoluteTimeCodeNs / 1000000;
        return block;
    }

    public final long makeCluster(SharpStream sharpStream, long j, long j2, boolean z) {
        if (j2 > 0) {
            ((ClusterInfo) Modifier.CC.m(1, this.clustersOffsetsSizes)).size = (int) ((this.written - j2) - 8);
        }
        long j3 = this.written;
        if (z) {
            dump(new byte[]{31, 67, -74, 117}, 4, sharpStream);
            ClusterInfo clusterInfo = new ClusterInfo();
            clusterInfo.offset = this.written;
            this.clustersOffsetsSizes.add(clusterInfo);
            dump(new byte[]{16, 0, 0, 0, -25}, 5, sharpStream);
            byte[] encode = encode(j, true);
            dump(encode, encode.length, sharpStream);
        }
        return j3;
    }

    public final void makeEbmlVoid(SharpStream sharpStream, int i, boolean z) {
        this.outByteBuffer.putShort(0, (short) -5088);
        this.outByteBuffer.putShort(2, (short) (i - 4));
        dump(this.outBuffer, 4, sharpStream);
        if (z) {
            int i2 = i - 4;
            while (i2 > 0) {
                int min = Math.min(i2, this.outBuffer.length);
                dump(this.outBuffer, min, sharpStream);
                i2 -= min;
            }
        }
    }

    public final void seekTo(SharpStream sharpStream, long j) {
        if (sharpStream.canSeek()) {
            sharpStream.seek(j);
        } else {
            long j2 = this.written;
            if (j > j2) {
                sharpStream.skip(j - j2);
            } else {
                sharpStream.rewind();
                sharpStream.skip(j);
            }
        }
        this.written = j;
    }
}
