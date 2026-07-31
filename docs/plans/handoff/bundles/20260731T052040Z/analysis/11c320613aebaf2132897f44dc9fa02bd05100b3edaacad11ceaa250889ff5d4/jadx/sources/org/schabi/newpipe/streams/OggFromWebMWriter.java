package org.schabi.newpipe.streams;

import android.util.Pair;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.android.exoplayer2.C;
import j$.lang.Iterable;
import j$.time.format.DateTimeFormatter;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.streams.io.SharpStream;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class OggFromWebMWriter implements Closeable {
    public final SharpStream output;
    public final SharpStream source;
    public final int streamId;
    public final StreamInfo streamInfo;
    public boolean done = false;
    public boolean parsed = false;
    public int sequenceCount = 0;
    public byte packetFlag = 2;
    public WebMReader webm = null;
    public WebMReader.WebMTrack webmTrack = null;
    public WebMReader.Segment webmSegment = null;
    public WebMReader.Cluster webmCluster = null;
    public WebMReader.SimpleBlock webmBlock = null;
    public long webmBlockLastTimecode = 0;
    public long webmBlockNearDuration = 0;
    public short segmentTableSize = 0;
    public final byte[] segmentTable = new byte[255];
    public long segmentTableNextTimestamp = C.NANOS_PER_SECOND;
    public final int[] crc32Table = new int[256];

    public OggFromWebMWriter(SharpStream sharpStream, SharpStream sharpStream2, StreamInfo streamInfo) {
        if (!sharpStream.canRead()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("source stream must be readable and allows seeking");
            throw null;
        }
        if (!sharpStream2.canWrite()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("output stream must be writable and allows seeking");
            throw null;
        }
        this.source = sharpStream;
        this.output = sharpStream2;
        this.streamInfo = streamInfo;
        this.streamId = (int) System.currentTimeMillis();
        for (int i = 0; i < 256; i++) {
            int i2 = i << 24;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 << 1) ^ (((int) (4294967296L - (i2 >>> 31))) & 79764919);
            }
            this.crc32Table[i] = i2;
        }
    }

    public final boolean addPacketSegment(int i) {
        if (i > 65025) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("page size cannot be larger than 65025");
            return false;
        }
        byte[] bArr = this.segmentTable;
        int length = (bArr.length - this.segmentTableSize) * 255;
        boolean z = i % 255 == 0;
        if (z) {
            length -= 255;
        }
        if (length < i) {
            return false;
        }
        while (i > 0) {
            short s = this.segmentTableSize;
            this.segmentTableSize = (short) (s + 1);
            bArr[s] = (byte) Math.min(i, 255);
            i -= 255;
        }
        if (z) {
            short s2 = this.segmentTableSize;
            this.segmentTableSize = (short) (s2 + 1);
            bArr[s2] = 0;
        }
        return true;
    }

    public final void build() {
        float f;
        byte[] bArr;
        long j;
        ByteBuffer allocate = ByteBuffer.allocate(65052);
        ByteBuffer allocate2 = ByteBuffer.allocate(65536);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(this.webmTrack.kind);
        if (ordinal == 0) {
            ByteBuffer wrap = ByteBuffer.wrap(this.webmTrack.bMetadata);
            while (true) {
                if (wrap.remaining() < 6) {
                    f = 0.0f;
                    break;
                } else if ((wrap.getShort() & 65535) == 46468) {
                    f = wrap.getFloat();
                    break;
                }
            }
            if (f == 0.0f) {
                Node$$ExternalSyntheticBUOutline0.m811m("cannot get the audio sample rate");
                return;
            }
        } else {
            if (ordinal != 1) {
                Node$$ExternalSyntheticBUOutline0.m811m("not implemented");
                return;
            }
            long j2 = this.webmTrack.defaultDuration;
            if (j2 == 0) {
                Node$$ExternalSyntheticBUOutline0.m811m("missing default frame time");
                return;
            }
            f = 1000.0f / (j2 / ((WebMReader.Info) this.webmSegment.info).timecodeScale);
        }
        byte[] bArr2 = this.webmTrack.codecPrivate;
        SharpStream sharpStream = this.output;
        if (bArr2 != null) {
            addPacketSegment(bArr2.length);
            makePacketheader(0L, allocate, this.webmTrack.codecPrivate);
            write(allocate);
            sharpStream.write(this.webmTrack.codecPrivate);
        }
        int i = MainActivity.$r8$clinit;
        if ("A_OPUS".equals(this.webmTrack.codecId)) {
            ArrayList arrayList = new ArrayList();
            StreamInfo streamInfo = this.streamInfo;
            if (streamInfo != null) {
                arrayList.add(Pair.create("COMMENT", streamInfo.getUrl()));
                arrayList.add(Pair.create("GENRE", streamInfo.getCategory()));
                arrayList.add(Pair.create("ARTIST", streamInfo.getUploaderName()));
                arrayList.add(Pair.create("TITLE", streamInfo.getName()));
                arrayList.add(Pair.create("DATE", streamInfo.getUploadDate().getLocalDateTime().format(DateTimeFormatter.ISO_DATE)));
            }
            List list = (List) Collection.EL.stream(arrayList).filter(new Player$$ExternalSyntheticLambda48(23)).map(new ListHelper$$ExternalSyntheticLambda0(21)).collect(Collectors.toUnmodifiableList());
            ByteBuffer allocate3 = ByteBuffer.allocate(((Integer) Collection.EL.stream(list).collect(Collectors.summingInt(new ListHelper$$ExternalSyntheticLambda6(7)))).intValue() + 16);
            allocate3.order(ByteOrder.LITTLE_ENDIAN);
            allocate3.put(new byte[]{79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0});
            allocate3.putInt(list.size());
            Iterable.EL.forEach(list, new Player$$ExternalSyntheticLambda1(allocate3, 21));
            bArr = allocate3.array();
        } else {
            bArr = "A_VORBIS".equals(this.webmTrack.codecId) ? new byte[]{3, 118, 111, 114, 98, 105, 115, 0, 0, 0, 0, 0, 0, 0, 0} : null;
        }
        if (bArr != null) {
            addPacketSegment(bArr.length);
            makePacketheader(0L, allocate, bArr);
            write(allocate);
            sharpStream.write(bArr);
        }
        while (this.webmSegment != null) {
            WebMReader.SimpleBlock nextBlock = getNextBlock();
            if (nextBlock != null) {
                if (nextBlock.absoluteTimeCodeNs + this.webmTrack.codecDelay >= this.segmentTableNextTimestamp ? false : addPacketSegment(nextBlock.dataSize)) {
                    int position = allocate2.position();
                    nextBlock.data.read(allocate2.array(), position, nextBlock.dataSize);
                    allocate2.position(position + nextBlock.dataSize);
                }
            }
            WebMReader.WebMTrack webMTrack = this.webmTrack;
            double d = webMTrack.codecDelay;
            if (nextBlock == null) {
                this.packetFlag = (byte) 4;
                d += this.webmBlockLastTimecode;
                j = webMTrack.defaultDuration;
                if (j <= 0) {
                    j = this.webmBlockNearDuration;
                }
            } else {
                j = nextBlock.absoluteTimeCodeNs;
            }
            allocate.putInt(22, calcCrc32(allocate2.array(), makePacketheader((long) Math.ceil(((d + j) / 1.0E9d) * f), allocate, null), allocate2.position()));
            write(allocate);
            write(allocate2);
            this.webmBlock = nextBlock;
        }
    }

    public final int calcCrc32(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            i = (i << 8) ^ this.crc32Table[((i >>> 24) & 255) ^ (bArr[i3] & 255)];
        }
        return i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.done = true;
        this.parsed = true;
        this.webmTrack = null;
        this.webm = null;
        SharpStream sharpStream = this.output;
        if (!sharpStream.isClosed()) {
            sharpStream.flush();
        }
        this.source.close();
        sharpStream.close();
    }

    public final WebMReader.SimpleBlock getNextBlock() {
        WebMReader.SimpleBlock simpleBlock = this.webmBlock;
        if (simpleBlock != null) {
            this.webmBlock = null;
            return simpleBlock;
        }
        if (this.webmSegment == null) {
            WebMReader.Segment nextSegment = this.webm.getNextSegment();
            this.webmSegment = nextSegment;
            if (nextSegment == null) {
                return null;
            }
        }
        if (this.webmCluster == null) {
            WebMReader.Cluster nextCluster = this.webmSegment.getNextCluster();
            this.webmCluster = nextCluster;
            if (nextCluster == null) {
                this.webmSegment = null;
                return getNextBlock();
            }
        }
        WebMReader.SimpleBlock nextSimpleBlock = this.webmCluster.getNextSimpleBlock();
        if (nextSimpleBlock == null) {
            this.webmCluster = null;
            return getNextBlock();
        }
        long j = nextSimpleBlock.absoluteTimeCodeNs;
        this.webmBlockNearDuration = j - this.webmBlockLastTimecode;
        this.webmBlockLastTimecode = j;
        return nextSimpleBlock;
    }

    public final int makePacketheader(long j, ByteBuffer byteBuffer, byte[] bArr) {
        byteBuffer.putInt(1399285583);
        byteBuffer.put((byte) 0);
        byteBuffer.put(this.packetFlag);
        byteBuffer.putLong(j);
        byteBuffer.putInt(this.streamId);
        int i = this.sequenceCount;
        this.sequenceCount = i + 1;
        byteBuffer.putInt(i);
        byteBuffer.putInt(0);
        byteBuffer.put((byte) this.segmentTableSize);
        byteBuffer.put(this.segmentTable, 0, this.segmentTableSize);
        short s = (short) (this.segmentTableSize + 27);
        this.segmentTableNextTimestamp += C.NANOS_PER_SECOND;
        this.packetFlag = (byte) 0;
        this.segmentTableSize = (short) 0;
        int calcCrc32 = calcCrc32(byteBuffer.array(), 0, s);
        if (bArr == null) {
            return calcCrc32;
        }
        int calcCrc322 = calcCrc32(bArr, calcCrc32, bArr.length);
        byteBuffer.putInt(22, calcCrc322);
        this.segmentTableNextTimestamp -= C.NANOS_PER_SECOND;
        return calcCrc322;
    }

    public final void write(ByteBuffer byteBuffer) {
        this.output.write(byteBuffer.array(), 0, byteBuffer.position());
        byteBuffer.position(0);
    }
}
