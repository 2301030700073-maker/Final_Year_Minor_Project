package org.schabi.newpipe.streams;

import androidx.compose.ui.Modifier;
import androidx.core.app.NotificationCompatBuilder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.grack.nanojson.JsonParser;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import kotlin.time.InstantParseResult;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http2.Huffman;
import okio.PriorityQueue;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.streams.Mp4DashReader;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class Mp4FromDashWriter {
    public ByteBuffer auxBuffer;
    public SharpStream outStream;
    public final Mp4DashReader[] readers;
    public final JsonParser[] readersChunks;
    public final SharpStream[] sourceTracks;
    public final long time;
    public PriorityQueue[] tracks;
    public long writeOffset;
    public long lastWriteOffset = -1;
    public boolean moovSimulation = true;
    public boolean parsed = false;
    public int overrideMainBrand = 0;
    public final ArrayList compatibleBrands = new ArrayList(5);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TablesInfo {
        public int ctts;
        public int sbgp;
        public int stco;
        public int stsc;
        public int[] stscBEntries;
        public int stss;
        public int stsz;
        public int stszDefault;
        public int stts;
    }

    public Mp4FromDashWriter(SharpStream... sharpStreamArr) {
        for (SharpStream sharpStream : sharpStreamArr) {
            sharpStream.getClass();
        }
        this.sourceTracks = sharpStreamArr;
        int length = sharpStreamArr.length;
        this.readers = new Mp4DashReader[length];
        this.readersChunks = new JsonParser[length];
        this.time = (System.currentTimeMillis() / 1000) + 2082844800;
        this.compatibleBrands.add(1836069937);
        this.compatibleBrands.add(1769172845);
        this.compatibleBrands.add(1769172786);
    }

    public static void initChunkTables(TablesInfo tablesInfo, int i, int i2) {
        int i3 = tablesInfo.stsz - i;
        float f = i3 / i2;
        int ceil = (int) Math.ceil(f);
        boolean z = ceil != ((int) f);
        tablesInfo.stsc = 1;
        if (i != i2) {
            tablesInfo.stsc = 2;
        }
        if (z) {
            tablesInfo.stsc++;
        }
        int i4 = 3;
        int[] iArr = new int[tablesInfo.stsc * 3];
        tablesInfo.stscBEntries = iArr;
        int i5 = ceil + 1;
        tablesInfo.stco = i5;
        iArr[0] = 1;
        iArr[1] = i;
        iArr[2] = 1;
        if (i != i2) {
            iArr[3] = 2;
            iArr[4] = i2;
            iArr[5] = 1;
            i4 = 6;
        }
        if (z) {
            iArr[i4] = i5;
            iArr[i4 + 1] = i3 % i2;
            iArr[i4 + 2] = 1;
        }
    }

    public final int auxOffset() {
        ByteBuffer byteBuffer = this.auxBuffer;
        return byteBuffer == null ? (int) this.writeOffset : byteBuffer.position();
    }

    public final void auxSeek(int i) {
        if (this.moovSimulation) {
            this.writeOffset = i;
            return;
        }
        ByteBuffer byteBuffer = this.auxBuffer;
        if (byteBuffer == null) {
            outSeek(i);
        } else {
            byteBuffer.position(i);
        }
    }

    public final void auxSkip(int i) {
        if (this.moovSimulation) {
            this.writeOffset += i;
            return;
        }
        ByteBuffer byteBuffer = this.auxBuffer;
        if (byteBuffer != null) {
            byteBuffer.position(byteBuffer.position() + i);
            return;
        }
        long j = i;
        this.outStream.skip(j);
        this.writeOffset += j;
    }

    public final void auxWrite(byte[] bArr) {
        if (this.moovSimulation) {
            this.writeOffset += bArr.length;
            return;
        }
        ByteBuffer byteBuffer = this.auxBuffer;
        if (byteBuffer == null) {
            outWrite(bArr.length, bArr);
        } else {
            byteBuffer.put(bArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x039b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:221:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0207 A[LOOP:4: B:91:0x0201->B:93:0x0207, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021f  */
    /* JADX WARN: Type inference failed for: r10v22, types: [org.schabi.newpipe.streams.Mp4DashReader] */
    /* JADX WARN: Type inference failed for: r11v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.schabi.newpipe.streams.Mp4DashReader[]] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r4v12, types: [org.schabi.newpipe.streams.Mp4DashReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void build(org.schabi.newpipe.streams.io.SharpStream r31) {
        /*
            Method dump skipped, instructions count: 1115
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.streams.Mp4FromDashWriter.build(org.schabi.newpipe.streams.io.SharpStream):void");
    }

    public final TokenData getNextSample(int i) {
        TokenData tokenData;
        JsonParser[] jsonParserArr = this.readersChunks;
        if (jsonParserArr[i] == null) {
            jsonParserArr[i] = this.readers[i].getNextChunk(false);
            if (jsonParserArr[i] == null) {
                return null;
            }
        }
        JsonParser jsonParser = jsonParserArr[i];
        if (((InputStream) jsonParser.value) == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This chunk has info only");
            return null;
        }
        int i2 = jsonParser.token;
        TokenData tokenData2 = (TokenData) ((VideoPlayerUi.AnonymousClass1) jsonParser.tokener).this$0;
        Mp4DashReader.Trun trun = (Mp4DashReader.Trun) tokenData2.builder;
        if (i2 >= trun.entryCount) {
            tokenData = null;
        } else {
            tokenData = new TokenData(22);
            jsonParser.token = i2 + 1;
            Mp4DashReader.TrunEntry absoluteEntry = trun.getAbsoluteEntry(i2, (Mp4DashReader.Tfhd) tokenData2.value);
            tokenData.value = absoluteEntry;
            byte[] bArr = new byte[absoluteEntry.sampleSize];
            tokenData.builder = bArr;
            if (((InputStream) jsonParser.value).read(bArr) != ((Mp4DashReader.TrunEntry) tokenData.value).sampleSize) {
                throw new EOFException("EOF reached while reading a sample");
            }
        }
        if (tokenData != null) {
            return tokenData;
        }
        jsonParserArr[i] = null;
        return getNextSample(i);
    }

    public final int lengthFor(int i) {
        int auxOffset = auxOffset() - i;
        if (this.moovSimulation) {
            return auxOffset;
        }
        auxSeek(i);
        auxWrite(ByteBuffer.allocate(4).putInt(auxOffset).array());
        auxSkip(auxOffset - 4);
        return auxOffset;
    }

    public final int make(int i, int i2, int i3, int i4) {
        int i5 = i3 * i4 * 4;
        int i6 = i5 + 16;
        int auxOffset = auxOffset();
        if (i2 >= 0) {
            i6 = i5 + 20;
        }
        auxWrite(ByteBuffer.allocate(12).putInt(i6).putInt(i).putInt(0).array());
        if (i2 >= 0) {
            auxOffset += 4;
            auxWrite(ByteBuffer.allocate(4).putInt(i2).array());
        }
        auxWrite(ByteBuffer.allocate(4).putInt(i4).array());
        auxSkip(i5);
        return auxOffset + 16;
    }

    public final int makeMoov(int[] iArr, TablesInfo[] tablesInfoArr, boolean z) {
        int i;
        int i2;
        int i3;
        char c;
        int auxOffset = auxOffset();
        int i4 = 8;
        auxWrite(new byte[]{0, 0, 0, 0, 109, 111, 111, 118});
        int length = this.tracks.length;
        long[] jArr = new long[length];
        long j = 0;
        for (int i5 = 0; i5 < length; i5++) {
            Mp4DashReader.Trak trak = (Mp4DashReader.Trak) this.tracks[i5].array;
            long ceil = (long) Math.ceil((trak.tkhd.duration / trak.mdia.mGroupAlertBehavior) * 1000.0d);
            jArr[i5] = ceil;
            if (ceil > j) {
                j = ceil;
            }
        }
        int i6 = 12;
        auxWrite(new byte[]{0, 0, 0, 120, 109, 118, 104, 100, 1, 0, 0, 0});
        ByteBuffer allocate = ByteBuffer.allocate(28);
        long j2 = this.time;
        auxWrite(allocate.putLong(j2).putLong(j2).putInt(1000).putLong(j).array());
        auxWrite(new byte[]{0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0});
        int i7 = 24;
        auxWrite(new byte[24]);
        auxWrite(ByteBuffer.allocate(4).putInt(this.tracks.length + 1).array());
        int i8 = 0;
        while (true) {
            PriorityQueue[] priorityQueueArr = this.tracks;
            if (i8 >= priorityQueueArr.length) {
                return lengthFor(auxOffset);
            }
            if (((Mp4DashReader.Trak) priorityQueueArr[i8].array).tkhd.matrix.length != 36) {
                Node$$ExternalSyntheticBUOutline0.m811m(Modifier.CC.m(i8, "bad track matrix length (expected 36) in track n°"));
                return 0;
            }
            long j3 = jArr[i8];
            int i9 = iArr[i8];
            TablesInfo tablesInfo = tablesInfoArr[i8];
            int auxOffset2 = auxOffset();
            auxWrite(new byte[]{0, 0, 0, 0, 116, 114, 97, 107, 0, 0, 0, 104, 116, 107, 104, 100, 1, 0, 0, 3});
            ByteBuffer allocate2 = ByteBuffer.allocate(48);
            allocate2.putLong(j2);
            allocate2.putLong(j2);
            int i10 = i8 + 1;
            allocate2.putInt(i10);
            allocate2.position(i7);
            allocate2.putLong(j3);
            int i11 = i6;
            allocate2.position(40);
            allocate2.putShort(((Mp4DashReader.Trak) this.tracks[i8].array).tkhd.bLayer);
            allocate2.putShort(((Mp4DashReader.Trak) this.tracks[i8].array).tkhd.bAlternateGroup);
            allocate2.putShort(((Mp4DashReader.Trak) this.tracks[i8].array).tkhd.bVolume);
            auxWrite(allocate2.array());
            auxWrite(((Mp4DashReader.Trak) this.tracks[i8].array).tkhd.matrix);
            auxWrite(ByteBuffer.allocate(i4).putInt(((Mp4DashReader.Trak) this.tracks[i8].array).tkhd.bWidth).putInt(((Mp4DashReader.Trak) this.tracks[i8].array).tkhd.bHeight).array());
            byte[] bArr = new byte[i7];
            // fill-array-data instruction
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            bArr[3] = 36;
            bArr[4] = 101;
            bArr[5] = 100;
            bArr[6] = 116;
            bArr[7] = 115;
            bArr[8] = 0;
            bArr[9] = 0;
            bArr[10] = 0;
            bArr[11] = 28;
            bArr[12] = 101;
            bArr[13] = 108;
            bArr[14] = 115;
            bArr[15] = 116;
            bArr[16] = 0;
            bArr[17] = 0;
            bArr[18] = 0;
            bArr[19] = 0;
            bArr[20] = 0;
            bArr[21] = 0;
            bArr[22] = 0;
            bArr[23] = 1;
            auxWrite(bArr);
            InstantParseResult.Success success = ((Mp4DashReader.Trak) this.tracks[i8].array).edstElst;
            if (success == null) {
                i3 = 65536;
                i = i8;
                i2 = 0;
            } else {
                i = i8;
                i2 = (int) success.epochSeconds;
                i3 = success.nanosecondsOfSecond;
            }
            auxWrite(ByteBuffer.allocate(i11).putInt((int) j3).putInt(i2).putInt(i3).array());
            PriorityQueue priorityQueue = this.tracks[i];
            NotificationCompatBuilder notificationCompatBuilder = ((Mp4DashReader.Trak) priorityQueue.array).mdia;
            boolean z2 = priorityQueue.size == 1;
            int auxOffset3 = auxOffset();
            byte[] bArr2 = new byte[i4];
            // fill-array-data instruction
            bArr2[0] = 0;
            bArr2[1] = 0;
            bArr2[2] = 0;
            bArr2[3] = 0;
            bArr2[4] = 109;
            bArr2[5] = 100;
            bArr2[6] = 105;
            bArr2[7] = 97;
            auxWrite(bArr2);
            auxWrite((byte[]) notificationCompatBuilder.mBuilder);
            Huffman.Node node = (Huffman.Node) notificationCompatBuilder.mBuilderCompat;
            ByteBuffer wrap = ByteBuffer.wrap(new byte[]{0, 0, 0, 33, 104, 100, 108, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
            wrap.position(i11);
            wrap.putInt(node.symbol);
            wrap.putInt(node.terminalBitCount);
            wrap.put((byte[]) node.children);
            auxWrite(wrap.array());
            int auxOffset4 = auxOffset();
            byte[] bArr3 = new byte[i4];
            // fill-array-data instruction
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            bArr3[3] = 0;
            bArr3[4] = 109;
            bArr3[5] = 105;
            bArr3[6] = 110;
            bArr3[7] = 102;
            auxWrite(bArr3);
            auxWrite((byte[]) ((Printer) notificationCompatBuilder.mExtras).settings);
            auxWrite((byte[]) ((Printer) notificationCompatBuilder.mExtras).root);
            int auxOffset5 = auxOffset();
            byte[] bArr4 = new byte[i4];
            // fill-array-data instruction
            bArr4[0] = 0;
            bArr4[1] = 0;
            bArr4[2] = 0;
            bArr4[3] = 0;
            bArr4[4] = 115;
            bArr4[5] = 116;
            bArr4[6] = 98;
            bArr4[7] = 108;
            auxWrite(bArr4);
            auxWrite((byte[]) ((Printer) notificationCompatBuilder.mExtras).accum);
            boolean z3 = z2;
            if (this.moovSimulation) {
                make(Atom.TYPE_stts, -1, 2, 1);
                int i12 = tablesInfo.stss;
                if (i12 > 0) {
                    make(Atom.TYPE_stss, -1, 1, i12);
                }
                int i13 = tablesInfo.ctts;
                if (i13 > 0) {
                    make(Atom.TYPE_ctts, -1, 2, i13);
                }
                make(Atom.TYPE_stsc, -1, 3, tablesInfo.stsc);
                make(Atom.TYPE_stsz, tablesInfo.stszDefault, 1, tablesInfo.stsz);
                make(z ? 1668232756 : 1937007471, -1, z ? 2 : 1, tablesInfo.stco);
            } else {
                tablesInfo.stts = make(Atom.TYPE_stts, -1, 2, 1);
                int i14 = tablesInfo.stss;
                if (i14 > 0) {
                    tablesInfo.stss = make(Atom.TYPE_stss, -1, 1, i14);
                }
                int i15 = tablesInfo.ctts;
                if (i15 > 0) {
                    tablesInfo.ctts = make(Atom.TYPE_ctts, -1, 2, i15);
                }
                tablesInfo.stsc = make(Atom.TYPE_stsc, -1, 3, tablesInfo.stsc);
                tablesInfo.stsz = make(Atom.TYPE_stsz, tablesInfo.stszDefault, 1, tablesInfo.stsz);
                tablesInfo.stco = make(z ? 1668232756 : 1937007471, -1, z ? 2 : 1, tablesInfo.stco);
            }
            if (z3) {
                auxWrite(ByteBuffer.wrap(new byte[]{0, 0, 0, 26, 115, 103, 112, 100, 1, 0, 0, 0, 114, 111, 108, 108, 0, 0, 0, 2, 0, 0, 0, 1, -1, -1}).array());
                int auxOffset6 = auxOffset();
                c = 28;
                auxWrite(new byte[]{0, 0, 0, 28, 115, 98, 103, 112, 0, 0, 0, 0, 114, 111, 108, 108, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1});
                tablesInfo.sbgp = auxOffset6 + 20;
            } else {
                c = 28;
            }
            lengthFor(auxOffset5);
            lengthFor(auxOffset4);
            lengthFor(auxOffset3);
            lengthFor(auxOffset2);
            i8 = i10;
            i4 = 8;
            i6 = 12;
            i7 = 24;
        }
    }

    public final void outRestore() {
        long j = this.lastWriteOffset;
        if (j > 0) {
            outSeek(j);
            this.lastWriteOffset = -1L;
        }
    }

    public final void outSeek(long j) {
        boolean canSeek = this.outStream.canSeek();
        SharpStream sharpStream = this.outStream;
        if (canSeek) {
            sharpStream.seek(j);
            this.writeOffset = j;
            return;
        }
        sharpStream.getClass();
        this.outStream.rewind();
        this.writeOffset = 0L;
        this.outStream.skip(j);
        this.writeOffset += j;
    }

    public final void outWrite(int i, byte[] bArr) {
        this.writeOffset += i;
        this.outStream.write(bArr, 0, i);
    }

    public final void parseSources() {
        Mp4DashReader[] mp4DashReaderArr = this.readers;
        if (this.parsed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("already parsed");
            return;
        }
        int i = 0;
        while (true) {
            try {
                if (i >= mp4DashReaderArr.length) {
                    return;
                }
                Mp4DashReader mp4DashReader = new Mp4DashReader(this.sourceTracks[i]);
                mp4DashReaderArr[i] = mp4DashReader;
                mp4DashReader.parse();
                i++;
            } finally {
                this.parsed = true;
            }
        }
    }

    public final void selectTracks(int... iArr) {
        Mp4DashReader[] mp4DashReaderArr = this.readers;
        if (this.tracks != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("tracks already selected");
            return;
        }
        try {
            this.tracks = new PriorityQueue[mp4DashReaderArr.length];
            for (int i = 0; i < mp4DashReaderArr.length; i++) {
                PriorityQueue[] priorityQueueArr = this.tracks;
                Mp4DashReader mp4DashReader = mp4DashReaderArr[i];
                int i2 = iArr[i];
                mp4DashReader.selectedTrack = i2;
                priorityQueueArr[i] = ((PriorityQueue[]) mp4DashReader.tracks)[i2];
            }
        } finally {
            this.parsed = true;
        }
    }

    public final int writeEntryArray(int i, int i2, int... iArr) {
        if (this.auxBuffer == null && this.lastWriteOffset < 0) {
            this.lastWriteOffset = this.writeOffset;
        }
        auxSeek(i);
        int i3 = i2 * 4;
        ByteBuffer allocate = ByteBuffer.allocate(i3);
        for (int i4 = 0; i4 < i2; i4++) {
            allocate.putInt(iArr[i4]);
        }
        auxWrite(allocate.array());
        return i + i3;
    }
}
