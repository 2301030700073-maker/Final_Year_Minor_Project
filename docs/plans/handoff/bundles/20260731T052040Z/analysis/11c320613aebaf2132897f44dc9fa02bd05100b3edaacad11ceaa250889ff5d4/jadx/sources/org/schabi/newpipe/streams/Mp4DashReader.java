package org.schabi.newpipe.streams;

import androidx.appcompat.app.TwilightCalculator;
import androidx.core.app.NotificationCompatBuilder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonParser;
import java.io.EOFException;
import java.net.Proxy;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.EmptyList;
import kotlin.time.InstantParseResult;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http2.Huffman;
import okio.PriorityQueue;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.streams.DataReader;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class Mp4DashReader {
    public Object backupBox;
    public Object box;
    public Cloneable brands;
    public boolean chunkZero;
    public Object moof;
    public int selectedTrack;
    public final Object stream;
    public Object tracks;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Tfhd {
        public int bFlags;
        public int defaultSampleDuration;
        public int defaultSampleFlags;
        public int defaultSampleSize;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Tkhd {
        public short bAlternateGroup;
        public int bHeight;
        public short bLayer;
        public short bVolume;
        public int bWidth;
        public long duration;
        public byte[] matrix;
        public int trackId;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Trak {
        public InstantParseResult.Success edstElst;
        public NotificationCompatBuilder mdia;
        public Tkhd tkhd;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Trex {
        public int trackId;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Trun {
        public byte[] bEntries;
        public int bFirstSampleFlags;
        public int bFlags;
        public int chunkDuration;
        public int chunkSize;
        public int dataOffset;
        public int entriesRowSize;
        public int entryCount;

        public final TrunEntry getAbsoluteEntry(int i, Tfhd tfhd) {
            TrunEntry entry = getEntry(i);
            if (!Mp4DashReader.hasFlag(this.bFlags, 256) && Mp4DashReader.hasFlag(tfhd.bFlags, 32)) {
                entry.sampleFlags = tfhd.defaultSampleFlags;
            }
            if (!Mp4DashReader.hasFlag(this.bFlags, 512) && Mp4DashReader.hasFlag(tfhd.bFlags, 16)) {
                entry.sampleSize = tfhd.defaultSampleSize;
            }
            if (!Mp4DashReader.hasFlag(this.bFlags, 256) && Mp4DashReader.hasFlag(tfhd.bFlags, 8)) {
                entry.sampleDuration = tfhd.defaultSampleDuration;
            }
            if (i == 0 && Mp4DashReader.hasFlag(this.bFlags, 4)) {
                entry.sampleFlags = this.bFirstSampleFlags;
            }
            return entry;
        }

        public final TrunEntry getEntry(int i) {
            byte[] bArr = this.bEntries;
            int i2 = this.entriesRowSize;
            ByteBuffer wrap = ByteBuffer.wrap(bArr, i * i2, i2);
            TrunEntry trunEntry = new TrunEntry();
            if (Mp4DashReader.hasFlag(this.bFlags, 256)) {
                trunEntry.sampleDuration = wrap.getInt();
            }
            if (Mp4DashReader.hasFlag(this.bFlags, 512)) {
                trunEntry.sampleSize = wrap.getInt();
            }
            if (Mp4DashReader.hasFlag(this.bFlags, 1024)) {
                trunEntry.sampleFlags = wrap.getInt();
            }
            if (Mp4DashReader.hasFlag(this.bFlags, 2048)) {
                trunEntry.sampleCompositionTimeOffset = wrap.getInt();
            }
            trunEntry.hasCompositionTimeOffset = Mp4DashReader.hasFlag(this.bFlags, 2048);
            trunEntry.isKeyframe = !Mp4DashReader.hasFlag(trunEntry.sampleFlags, 65536);
            return trunEntry;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TrunEntry {
        public boolean hasCompositionTimeOffset;
        public boolean isKeyframe;
        public int sampleCompositionTimeOffset;
        public int sampleDuration;
        public int sampleFlags;
        public int sampleSize;
    }

    public Mp4DashReader(Address address, ConnectionPool connectionPool, RealCall realCall, boolean z) {
        List immutableList;
        connectionPool.getClass();
        this.stream = address;
        this.tracks = connectionPool;
        this.brands = realCall;
        this.chunkZero = z;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.box = emptyList;
        this.backupBox = emptyList;
        this.moof = new ArrayList();
        HttpUrl httpUrl = address.url;
        realCall.eventListener.getClass();
        httpUrl.getClass();
        URI uri = httpUrl.uri();
        if (uri.getHost() == null) {
            immutableList = _UtilJvmKt.toImmutableList(new Proxy[]{Proxy.NO_PROXY});
        } else {
            List<Proxy> select = address.proxySelector.select(uri);
            immutableList = (select == null || select.isEmpty()) ? _UtilJvmKt.toImmutableList(new Proxy[]{Proxy.NO_PROXY}) : _UtilJvmKt.toImmutableList(select);
        }
        this.box = immutableList;
        this.selectedTrack = 0;
        EventListener eventListener = realCall.eventListener;
        List list = (List) this.box;
        eventListener.getClass();
        list.getClass();
    }

    public static String boxName(int i) {
        return new String(ByteBuffer.allocate(4).putInt(i).array(), StandardCharsets.UTF_8);
    }

    public static boolean hasFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    public void ensure(TwilightCalculator twilightCalculator) {
        long j = twilightCalculator.sunset + twilightCalculator.sunrise;
        DataReader dataReader = (DataReader) this.stream;
        long j2 = j - dataReader.position;
        if (j2 == 0) {
            return;
        }
        if (j2 >= 0) {
            dataReader.skipBytes((int) j2);
            return;
        }
        throw new EOFException("parser go beyond limits of the box. type=" + boxName(twilightCalculator.state) + " offset=" + twilightCalculator.sunset + " size=" + twilightCalculator.sunrise + " position=" + dataReader.position);
    }

    public JsonParser getNextChunk(boolean z) {
        long j;
        JsonParser jsonParser;
        DataReader dataReader = (DataReader) this.stream;
        PriorityQueue priorityQueue = ((PriorityQueue[]) this.tracks)[this.selectedTrack];
        while (dataReader.available()) {
            int i = 1;
            if (this.chunkZero) {
                ensure((TwilightCalculator) this.box);
                if (!dataReader.available()) {
                    break;
                }
                this.box = readBox();
            } else {
                this.chunkZero = true;
            }
            TwilightCalculator twilightCalculator = (TwilightCalculator) this.box;
            int i2 = twilightCalculator.state;
            if (i2 == 1835295092) {
                VideoPlayerUi.AnonymousClass1 anonymousClass1 = (VideoPlayerUi.AnonymousClass1) this.moof;
                if (anonymousClass1 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$3("mdat found without moof");
                    return null;
                }
                TokenData tokenData = (TokenData) anonymousClass1.this$0;
                if (tokenData != null) {
                    JsonParser jsonParser2 = new JsonParser(11);
                    jsonParser2.token = 0;
                    jsonParser2.tokener = anonymousClass1;
                    if (!z) {
                        int i3 = ((Trun) tokenData.builder).chunkSize;
                        if (dataReader.view == null) {
                            dataReader.view = new DataReader.AnonymousClass1(dataReader);
                        }
                        dataReader.viewSize = i3;
                        jsonParser2.value = dataReader.view;
                    }
                    this.moof = null;
                    dataReader.skipBytes(((Trun) ((TokenData) ((VideoPlayerUi.AnonymousClass1) jsonParser2.tokener).this$0).builder).dataOffset);
                    return jsonParser2;
                }
                this.moof = null;
            } else if (i2 != 1836019558) {
                continue;
            } else {
                if (((VideoPlayerUi.AnonymousClass1) this.moof) != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$3("moof found without mdat");
                    return null;
                }
                int i4 = ((Trak) priorityQueue.array).tkhd.trackId;
                VideoPlayerUi.AnonymousClass1 anonymousClass12 = new VideoPlayerUi.AnonymousClass1(17);
                TwilightCalculator readBox = readBox(1835427940);
                dataReader.skipBytes(4L);
                dataReader.readInt();
                ensure(readBox);
                while (true) {
                    TwilightCalculator untilBox = untilBox(twilightCalculator, Atom.TYPE_traf);
                    if (untilBox == null) {
                        j = 8;
                        jsonParser = null;
                        break;
                    }
                    jsonParser = null;
                    TokenData tokenData2 = new TokenData(23);
                    TwilightCalculator readBox2 = readBox(Atom.TYPE_tfhd);
                    Tfhd tfhd = new Tfhd();
                    tfhd.bFlags = dataReader.readInt();
                    int readInt = dataReader.readInt();
                    if (i4 == -1 || readInt == i4) {
                        if (hasFlag(tfhd.bFlags, i)) {
                            dataReader.skipBytes(8L);
                        }
                        if (hasFlag(tfhd.bFlags, 2)) {
                            dataReader.skipBytes(4L);
                        }
                        if (hasFlag(tfhd.bFlags, 8)) {
                            tfhd.defaultSampleDuration = dataReader.readInt();
                        }
                        if (hasFlag(tfhd.bFlags, 16)) {
                            tfhd.defaultSampleSize = dataReader.readInt();
                        }
                        if (hasFlag(tfhd.bFlags, 32)) {
                            tfhd.defaultSampleFlags = dataReader.readInt();
                        }
                    } else {
                        tfhd = null;
                    }
                    tokenData2.value = tfhd;
                    ensure(readBox2);
                    if (((Tfhd) tokenData2.value) == null) {
                        j = 8;
                        tokenData2 = null;
                    } else {
                        TwilightCalculator untilBox2 = untilBox(untilBox, Atom.TYPE_trun, Atom.TYPE_tfdt);
                        if (untilBox2.state == 1952867444) {
                            int read = dataReader.read();
                            dataReader.skipBytes(3L);
                            if (read == 0) {
                                dataReader.readInt();
                            } else {
                                dataReader.readLong();
                            }
                            ensure(untilBox2);
                            untilBox2 = readBox(Atom.TYPE_trun);
                        }
                        Trun trun = new Trun();
                        trun.bFlags = dataReader.readInt();
                        trun.entryCount = dataReader.readInt();
                        trun.entriesRowSize = 0;
                        if (hasFlag(trun.bFlags, 256)) {
                            trun.entriesRowSize += 4;
                        }
                        j = 8;
                        if (hasFlag(trun.bFlags, 512)) {
                            trun.entriesRowSize += 4;
                        }
                        if (hasFlag(trun.bFlags, 1024)) {
                            trun.entriesRowSize += 4;
                        }
                        if (hasFlag(trun.bFlags, 2048)) {
                            trun.entriesRowSize += 4;
                        }
                        trun.bEntries = new byte[trun.entriesRowSize * trun.entryCount];
                        if (hasFlag(trun.bFlags, i)) {
                            trun.dataOffset = dataReader.readInt();
                        }
                        if (hasFlag(trun.bFlags, 4)) {
                            trun.bFirstSampleFlags = dataReader.readInt();
                        }
                        byte[] bArr = trun.bEntries;
                        dataReader.read(bArr, 0, bArr.length);
                        for (int i5 = 0; i5 < trun.entryCount; i5++) {
                            TrunEntry entry = trun.getEntry(i5);
                            if (hasFlag(trun.bFlags, 256)) {
                                trun.chunkDuration += entry.sampleDuration;
                            }
                            if (hasFlag(trun.bFlags, 512)) {
                                trun.chunkSize += entry.sampleSize;
                            }
                            if (hasFlag(trun.bFlags, 2048) && !hasFlag(trun.bFlags, 256)) {
                                trun.chunkDuration += entry.sampleCompositionTimeOffset;
                            }
                        }
                        tokenData2.builder = trun;
                        ensure(untilBox2);
                    }
                    anonymousClass12.this$0 = tokenData2;
                    ensure(untilBox);
                    if (((TokenData) anonymousClass12.this$0) != null) {
                        break;
                    }
                    i = 1;
                }
                this.moof = anonymousClass12;
                TokenData tokenData3 = (TokenData) anonymousClass12.this$0;
                if (tokenData3 == null) {
                    continue;
                } else {
                    if (hasFlag(((Trun) tokenData3.builder).bFlags, 1)) {
                        Trun trun2 = (Trun) ((TokenData) ((VideoPlayerUi.AnonymousClass1) this.moof).this$0).builder;
                        int i6 = (int) (trun2.dataOffset - (((TwilightCalculator) this.box).sunrise + j));
                        trun2.dataOffset = i6;
                        if (i6 < 0) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("trun box has wrong data offset, points outside of concurrent mdat box");
                            return jsonParser;
                        }
                    }
                    TokenData tokenData4 = (TokenData) ((VideoPlayerUi.AnonymousClass1) this.moof).this$0;
                    if (((Trun) tokenData4.builder).chunkSize < 1) {
                        boolean hasFlag = hasFlag(((Tfhd) tokenData4.value).bFlags, 16);
                        VideoPlayerUi.AnonymousClass1 anonymousClass13 = (VideoPlayerUi.AnonymousClass1) this.moof;
                        if (hasFlag) {
                            TokenData tokenData5 = (TokenData) anonymousClass13.this$0;
                            Trun trun3 = (Trun) tokenData5.builder;
                            trun3.chunkSize = ((Tfhd) tokenData5.value).defaultSampleSize * trun3.entryCount;
                        } else {
                            ((Trun) ((TokenData) anonymousClass13.this$0).builder).chunkSize = (int) (((TwilightCalculator) this.box).sunrise - j);
                        }
                    }
                    if (!hasFlag(((Trun) ((TokenData) ((VideoPlayerUi.AnonymousClass1) this.moof).this$0).builder).bFlags, 2304)) {
                        TokenData tokenData6 = (TokenData) ((VideoPlayerUi.AnonymousClass1) this.moof).this$0;
                        if (((Trun) tokenData6.builder).chunkDuration == 0 && hasFlag(((Tfhd) tokenData6.value).bFlags, 32)) {
                            TokenData tokenData7 = (TokenData) ((VideoPlayerUi.AnonymousClass1) this.moof).this$0;
                            Trun trun4 = (Trun) tokenData7.builder;
                            trun4.chunkDuration = ((Tfhd) tokenData7.value).defaultSampleDuration * trun4.entryCount;
                        }
                    }
                }
            }
        }
        return null;
    }

    public boolean hasNext() {
        return this.selectedTrack < ((List) this.box).size() || !((ArrayList) this.moof).isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v6, types: [int[], java.lang.Cloneable] */
    public void parse() {
        int i;
        int i2;
        boolean z;
        long j;
        long j2;
        ArrayList arrayList;
        TwilightCalculator twilightCalculator;
        boolean z2;
        int i3;
        long j3;
        TwilightCalculator twilightCalculator2;
        InstantParseResult.Success success;
        TwilightCalculator twilightCalculator3;
        DataReader dataReader = (DataReader) this.stream;
        if (this.selectedTrack > -1) {
            return;
        }
        TwilightCalculator readBox = readBox(Atom.TYPE_ftyp);
        this.box = readBox;
        long j4 = 4;
        int i4 = (int) ((((readBox.sunset + readBox.sunrise) - dataReader.position) - 4) / 4);
        ?? r3 = new int[i4];
        int i5 = 0;
        r3[0] = dataReader.readInt();
        dataReader.skipBytes(4L);
        for (int i6 = 1; i6 < i4; i6++) {
            r3[i6] = dataReader.readInt();
        }
        this.brands = r3;
        char c = r3[0];
        if (c != 1684108136 && c != 1769172789) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("Not a MPEG-4 DASH container, major brand is not 'dash' or 'iso5' is ".concat(boxName(c)));
            return;
        }
        Printer printer = null;
        while (true) {
            TwilightCalculator twilightCalculator4 = (TwilightCalculator) this.box;
            int i7 = 4;
            if (twilightCalculator4.state != 1836019558) {
                ensure(twilightCalculator4);
                TwilightCalculator readBox2 = readBox();
                this.box = readBox2;
                if (readBox2.state != 1836019574) {
                    j2 = j4;
                } else {
                    TwilightCalculator readBox3 = readBox(Atom.TYPE_mvhd);
                    Printer printer2 = new Printer(16);
                    int read = dataReader.read();
                    dataReader.skipBytes(3L);
                    dataReader.skipBytes((read == 0 ? 4 : 8) * 2);
                    WebMReader.Info info = new WebMReader.Info(i7);
                    dataReader.readInt();
                    if (read == 0) {
                        z = 2;
                        j = j4;
                    } else {
                        z = 2;
                        j = 8;
                    }
                    dataReader.skipBytes(j);
                    dataReader.skipBytes(76L);
                    info.timecodeScale = dataReader.readInt() & 4294967295L;
                    printer2.root = info;
                    ensure(readBox3);
                    ArrayList arrayList2 = new ArrayList((int) ((WebMReader.Info) printer2.root).timecodeScale);
                    while (true) {
                        TwilightCalculator untilBox = untilBox(readBox2, Atom.TYPE_trak, Atom.TYPE_mvex);
                        if (untilBox != null) {
                            int i8 = untilBox.state;
                            if (i8 == 1836475768) {
                                arrayList = arrayList2;
                                twilightCalculator = readBox2;
                                z2 = z;
                                ArrayList arrayList3 = new ArrayList((int) ((WebMReader.Info) printer2.root).timecodeScale);
                                while (true) {
                                    TwilightCalculator untilBox2 = untilBox(untilBox, Atom.TYPE_trex);
                                    if (untilBox2 != null) {
                                        dataReader.skipBytes(4L);
                                        Trex trex = new Trex();
                                        trex.trackId = dataReader.readInt();
                                        dataReader.readInt();
                                        dataReader.readInt();
                                        dataReader.readInt();
                                        dataReader.readInt();
                                        arrayList3.add(trex);
                                        ensure(untilBox2);
                                    } else {
                                        i3 = 0;
                                        j3 = 4;
                                        printer2.settings = (Trex[]) arrayList3.toArray(new Trex[0]);
                                    }
                                }
                            } else if (i8 != 1953653099) {
                                arrayList = arrayList2;
                                j3 = j4;
                                i3 = i5;
                                twilightCalculator = readBox2;
                                z2 = z;
                            } else {
                                Trak trak = new Trak();
                                TwilightCalculator readBox4 = readBox(Atom.TYPE_tkhd);
                                int read2 = dataReader.read();
                                z2 = z;
                                Tkhd tkhd = new Tkhd();
                                ArrayList arrayList4 = arrayList2;
                                dataReader.skipBytes(((read2 == 0 ? 4 : 8) * 2) + 3);
                                tkhd.trackId = dataReader.readInt();
                                dataReader.skipBytes(j4);
                                tkhd.duration = read2 == 0 ? dataReader.readInt() & 4294967295L : dataReader.readLong();
                                dataReader.skipBytes(8L);
                                tkhd.bLayer = dataReader.readShort();
                                tkhd.bAlternateGroup = dataReader.readShort();
                                tkhd.bVolume = dataReader.readShort();
                                dataReader.skipBytes(2L);
                                byte[] bArr = new byte[36];
                                tkhd.matrix = bArr;
                                dataReader.read(bArr, i5, 36);
                                tkhd.bWidth = dataReader.readInt();
                                tkhd.bHeight = dataReader.readInt();
                                trak.tkhd = tkhd;
                                ensure(readBox4);
                                while (true) {
                                    TwilightCalculator untilBox3 = untilBox(untilBox, Atom.TYPE_mdia, Atom.TYPE_edts);
                                    if (untilBox3 != null) {
                                        int i9 = untilBox3.state;
                                        if (i9 == 1701082227) {
                                            twilightCalculator2 = readBox2;
                                            if (untilBox(untilBox3, Atom.TYPE_elst) == null) {
                                                success = null;
                                            } else {
                                                success = new InstantParseResult.Success();
                                                boolean z3 = dataReader.read() == 1;
                                                dataReader.skipBytes(3L);
                                                if (dataReader.readInt() < 1) {
                                                    success.nanosecondsOfSecond = 65536;
                                                } else {
                                                    if (z3) {
                                                        dataReader.skipBytes(8L);
                                                        success.epochSeconds = dataReader.readLong();
                                                        dataReader.skipBytes((r13 - 1) * 16);
                                                    } else {
                                                        dataReader.skipBytes(4L);
                                                        success.epochSeconds = dataReader.readInt();
                                                    }
                                                    success.nanosecondsOfSecond = dataReader.readInt();
                                                    trak.edstElst = success;
                                                }
                                            }
                                            trak.edstElst = success;
                                        } else if (i9 != 1835297121) {
                                            twilightCalculator2 = readBox2;
                                        } else {
                                            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder();
                                            while (true) {
                                                TwilightCalculator untilBox4 = untilBox(untilBox3, Atom.TYPE_mdhd, Atom.TYPE_hdlr, Atom.TYPE_minf);
                                                if (untilBox4 != null) {
                                                    int i10 = untilBox4.state;
                                                    if (i10 == 1751411826) {
                                                        twilightCalculator3 = readBox2;
                                                        dataReader.skipBytes(4L);
                                                        Huffman.Node node = new Huffman.Node();
                                                        node.children = new byte[12];
                                                        node.symbol = dataReader.readInt();
                                                        node.terminalBitCount = dataReader.readInt();
                                                        byte[] bArr2 = (byte[]) node.children;
                                                        dataReader.read(bArr2, 0, bArr2.length);
                                                        dataReader.skipBytes((untilBox4.sunset + untilBox4.sunrise) - dataReader.position);
                                                        notificationCompatBuilder.mBuilderCompat = node;
                                                    } else if (i10 == 1835296868) {
                                                        twilightCalculator3 = readBox2;
                                                        byte[] readFullBox = readFullBox(untilBox4);
                                                        notificationCompatBuilder.mBuilder = readFullBox;
                                                        ByteBuffer wrap = ByteBuffer.wrap(readFullBox);
                                                        wrap.position(((wrap.get(8) == 0 ? 4 : 8) * 2) + 12);
                                                        notificationCompatBuilder.mGroupAlertBehavior = wrap.getInt();
                                                    } else if (i10 != 1835626086) {
                                                        twilightCalculator3 = readBox2;
                                                    } else {
                                                        Printer printer3 = new Printer(15);
                                                        while (true) {
                                                            twilightCalculator3 = readBox2;
                                                            TwilightCalculator readBox5 = dataReader.position >= untilBox4.sunset + untilBox4.sunrise ? null : readBox();
                                                            if (readBox5 != null) {
                                                                switch (readBox5.state) {
                                                                    case 1684631142:
                                                                        printer3.root = readFullBox(readBox5);
                                                                        break;
                                                                    case 1936549988:
                                                                    case 1986881636:
                                                                        printer3.settings = readFullBox(readBox5);
                                                                        break;
                                                                    case Atom.TYPE_stbl /* 1937007212 */:
                                                                        TwilightCalculator untilBox5 = untilBox(readBox5, Atom.TYPE_stsd);
                                                                        printer3.accum = untilBox5 == null ? new byte[0] : readFullBox(untilBox5);
                                                                        break;
                                                                }
                                                                ensure(readBox5);
                                                                readBox2 = twilightCalculator3;
                                                            } else {
                                                                notificationCompatBuilder.mExtras = printer3;
                                                            }
                                                        }
                                                    }
                                                    ensure(untilBox4);
                                                    readBox2 = twilightCalculator3;
                                                } else {
                                                    twilightCalculator2 = readBox2;
                                                    trak.mdia = notificationCompatBuilder;
                                                }
                                            }
                                        }
                                        ensure(untilBox3);
                                        readBox2 = twilightCalculator2;
                                    } else {
                                        twilightCalculator = readBox2;
                                        arrayList = arrayList4;
                                        arrayList.add(trak);
                                        i3 = 0;
                                        j3 = 4;
                                    }
                                }
                            }
                            ensure(untilBox);
                            arrayList2 = arrayList;
                            i5 = i3;
                            j4 = j3;
                            z = z2;
                            readBox2 = twilightCalculator;
                        } else {
                            j2 = j4;
                            printer2.accum = (Trak[]) arrayList2.toArray(new Trak[i5]);
                            printer = printer2;
                        }
                    }
                }
                j4 = j2;
                i5 = 0;
            } else {
                int i11 = 2;
                int i12 = 3;
                if (printer == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$3("The provided Mp4 doesn't have the 'moov' box");
                    return;
                }
                this.tracks = new PriorityQueue[((Trak[]) printer.accum).length];
                int i13 = 0;
                while (true) {
                    PriorityQueue[] priorityQueueArr = (PriorityQueue[]) this.tracks;
                    if (i13 >= priorityQueueArr.length) {
                        this.backupBox = (TwilightCalculator) this.box;
                        return;
                    }
                    PriorityQueue priorityQueue = new PriorityQueue((char) 0, 14);
                    priorityQueueArr[i13] = priorityQueue;
                    priorityQueue.array = ((Trak[]) printer.accum)[i13];
                    Trex[] trexArr = (Trex[]) printer.settings;
                    if (trexArr != null) {
                        for (Trex trex2 : trexArr) {
                            int i14 = ((Trak) ((PriorityQueue[]) this.tracks)[i13].array).tkhd.trackId;
                            int i15 = trex2.trackId;
                        }
                    }
                    int i16 = ((Huffman.Node) ((Trak[]) printer.accum)[i13].mdia.mBuilderCompat).terminalBitCount;
                    if (i16 != 1936684398) {
                        PriorityQueue[] priorityQueueArr2 = (PriorityQueue[]) this.tracks;
                        if (i16 != 1937072756) {
                            if (i16 != 1986618469) {
                                priorityQueueArr2[i13].size = 4;
                                i = i11;
                            } else {
                                i = i11;
                                priorityQueueArr2[i13].size = i;
                            }
                            i2 = i12;
                        } else {
                            i = i11;
                            PriorityQueue priorityQueue2 = priorityQueueArr2[i13];
                            i2 = i12;
                            priorityQueue2.size = i2;
                        }
                    } else {
                        i = i11;
                        i2 = i12;
                        ((PriorityQueue[]) this.tracks)[i13].size = 1;
                    }
                    i13++;
                    i12 = i2;
                    i11 = i;
                }
            }
        }
    }

    public TwilightCalculator readBox() {
        TwilightCalculator twilightCalculator = new TwilightCalculator(2, (byte) 0);
        DataReader dataReader = (DataReader) this.stream;
        twilightCalculator.sunset = dataReader.position;
        twilightCalculator.sunrise = dataReader.readInt() & 4294967295L;
        twilightCalculator.state = dataReader.readInt();
        if (twilightCalculator.sunrise == 1) {
            twilightCalculator.sunrise = dataReader.readLong();
        }
        return twilightCalculator;
    }

    public byte[] readFullBox(TwilightCalculator twilightCalculator) {
        int i = (int) twilightCalculator.sunrise;
        ByteBuffer allocate = ByteBuffer.allocate(i);
        allocate.putInt(i);
        allocate.putInt(twilightCalculator.state);
        int i2 = i - 8;
        if (((DataReader) this.stream).read(allocate.array(), 8, i2) == i2) {
            return allocate.array();
        }
        throw new EOFException("EOF reached in box: type=" + boxName(twilightCalculator.state) + " offset=" + twilightCalculator.sunset + " size=" + twilightCalculator.sunrise);
    }

    public TwilightCalculator untilBox(TwilightCalculator twilightCalculator, int... iArr) {
        while (((DataReader) this.stream).position < twilightCalculator.sunset + twilightCalculator.sunrise) {
            TwilightCalculator readBox = readBox();
            for (int i : iArr) {
                if (readBox.state == i) {
                    return readBox;
                }
            }
            ensure(readBox);
        }
        return null;
    }

    public TwilightCalculator readBox(int i) {
        TwilightCalculator readBox = readBox();
        if (readBox.state == i) {
            return readBox;
        }
        throw new NoSuchElementException("expected " + boxName(i) + " found " + boxName(readBox.state));
    }

    public Mp4DashReader(SharpStream sharpStream) {
        this.tracks = null;
        this.brands = null;
        this.chunkZero = false;
        this.selectedTrack = -1;
        this.backupBox = null;
        this.stream = new DataReader(sharpStream);
    }
}
