package org.schabi.newpipe.streams;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.PreferenceManager;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.functions.Function;
import j$.util.stream.Stream;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.FailedPlan;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RoutePlanner$ConnectResult;
import okhttp3.internal.connection.RoutePlanner$Plan;
import okio.Okio;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.App;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.history.model.StreamHistoryEntry;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.player.ui.PlayerUiList;
import org.schabi.newpipe.streams.DataReader;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.streams.io.SharpStream;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class WebMReader {
    public boolean done;
    public boolean firstSegment;
    public Segment segment;
    public int selectedTrack;
    public final DataReader stream;
    public WebMTrack[] tracks;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Element {
        public long contentSize;
        public long offset;
        public long size;
        public int type;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SimpleBlock {
        public long absoluteTimeCodeNs;
        public InputStream data;
        public int dataSize;
        public byte flags;
        public final Element ref;
        public short relativeTimeCode;
        public long trackNumber;

        public SimpleBlock(Element element) {
            this.ref = element;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class WebMTrack {
        public byte[] bMetadata;
        public long codecDelay;
        public String codecId;
        public byte[] codecPrivate;
        public long defaultDuration;
        public int kind;
        public long seekPreRoll;
        public long trackNumber;
        public int trackType;
    }

    /* renamed from: -$$Nest$mreadCluster, reason: not valid java name */
    public static Cluster m878$$Nest$mreadCluster(WebMReader webMReader, Element element) {
        Cluster cluster = new Cluster(webMReader, element);
        Element untilElement = webMReader.untilElement(element, Token.ASSIGN_BITAND);
        if (untilElement != null) {
            cluster.timecode = webMReader.readNumber(untilElement);
            return cluster;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(Modifier.CC.m(element.offset, " without Timecode element", new StringBuilder("Cluster at ")));
        return null;
    }

    public WebMReader(SharpStream sharpStream) {
        this.stream = new DataReader(sharpStream);
    }

    public final void ensure(Element element) {
        long j = element.offset + element.size;
        DataReader dataReader = this.stream;
        long j2 = j - dataReader.position;
        if (j2 == 0) {
            return;
        }
        if (j2 >= 0) {
            dataReader.skipBytes(j2);
            return;
        }
        throw new EOFException("parser go beyond limits of the Element. type=" + "0x".concat(Long.toHexString(element.type)) + " offset=" + element.offset + " size=" + element.size + " position=" + dataReader.position);
    }

    public final Segment getNextSegment() {
        Segment segment;
        if (this.done) {
            return null;
        }
        if (this.firstSegment && (segment = this.segment) != null) {
            this.firstSegment = false;
            return segment;
        }
        ensure((Element) this.segment.ref);
        Element untilElement = untilElement(null, 139690087);
        if (untilElement == null) {
            this.done = true;
            return null;
        }
        Segment readSegment = readSegment(untilElement, false);
        this.segment = readSegment;
        return readSegment;
    }

    public final void parse() {
        Element untilElement;
        Element untilElement2;
        Element readElement = readElement();
        if (readElement.type != 172351395) {
            throw new NoSuchElementException("expected " + "0x".concat(Long.toHexString(172351395L)) + " found " + "0x".concat(Long.toHexString(readElement.type)));
        }
        Element untilElement3 = untilElement(readElement, 759);
        if (untilElement3 == null || readNumber(untilElement3) > 1 || (untilElement = untilElement(readElement, 642)) == null || !new String(readBlob(untilElement), StandardCharsets.UTF_8).equals("webm") || (untilElement2 = untilElement(readElement, 645)) == null || readNumber(untilElement2) > 2) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Unsupported EBML data (WebM)");
            return;
        }
        ensure(readElement);
        Element untilElement4 = untilElement(null, 139690087);
        if (untilElement4 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Fragment element not found");
            return;
        }
        Segment readSegment = readSegment(untilElement4, true);
        this.segment = readSegment;
        this.tracks = (WebMTrack[]) readSegment.tracks;
        this.selectedTrack = -1;
        this.done = false;
        this.firstSegment = true;
    }

    public final byte[] readBlob(Element element) {
        long j = element.contentSize;
        byte[] bArr = new byte[(int) j];
        if (this.stream.read(bArr, 0, r5) >= j) {
            return bArr;
        }
        throw new EOFException();
    }

    public final Element readElement() {
        Element element = new Element();
        DataReader dataReader = this.stream;
        element.offset = dataReader.position;
        element.type = (int) readEncodedNumber();
        long readEncodedNumber = readEncodedNumber();
        element.contentSize = readEncodedNumber;
        element.size = (readEncodedNumber + dataReader.position) - element.offset;
        return element;
    }

    public final long readEncodedNumber() {
        int read = this.stream.read();
        if (read > 0) {
            int i = 128;
            for (byte b = 1; b < 9; b = (byte) (b + 1)) {
                if ((read & i) == i) {
                    long j = read & (255 >> b);
                    for (int i2 = 1; i2 < b; i2++) {
                        j = (j << 8) | r8.read();
                    }
                    return j;
                }
                i >>= 1;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Invalid encoded length");
        return 0L;
    }

    public final long readNumber(Element element) {
        int i = (int) element.contentSize;
        long j = 0;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return j;
            }
            int read = this.stream.read();
            if (read == -1) {
                throw new EOFException();
            }
            j = (j << 8) | read;
            i = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0144, code lost:
    
        if (r20 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x014a, code lost:
    
        if (((org.schabi.newpipe.streams.WebMReader.Info) r2.info) == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0150, code lost:
    
        if (((org.schabi.newpipe.streams.WebMReader.WebMTrack[]) r2.tracks) == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0168, code lost:
    
        throw new java.lang.RuntimeException("Cluster element found without Info and/or Tracks element at position " + r19.offset);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0169, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.streams.WebMReader.Segment readSegment(org.schabi.newpipe.streams.WebMReader.Element r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.streams.WebMReader.readSegment(org.schabi.newpipe.streams.WebMReader$Element, boolean):org.schabi.newpipe.streams.WebMReader$Segment");
    }

    public final Element untilElement(Element element, int... iArr) {
        Element readElement;
        loop0: while (true) {
            DataReader dataReader = this.stream;
            if (element == null) {
                if (!dataReader.available()) {
                    return null;
                }
            } else if (dataReader.position >= element.offset + element.size) {
                return null;
            }
            readElement = readElement();
            if (iArr.length < 1) {
                break;
            }
            for (int i : iArr) {
                if (readElement.type == i) {
                    break loop0;
                }
            }
            ensure(readElement);
        }
        return readElement;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Info implements Function {
        public final /* synthetic */ int $r8$classId;
        public long timecodeScale;

        public Info(long j) {
            this.$r8$classId = 3;
            this.timecodeScale = j;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object obj) {
            Uri uri;
            int i = 0;
            switch (this.$r8$classId) {
                case 1:
                    List list = (List) obj;
                    list.getClass();
                    long j = this.timecodeScale;
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    int i2 = 0;
                    for (Object obj2 : list) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            Jsoup.throwIndexOverflow();
                            throw null;
                        }
                        PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj2;
                        playlistStreamEntry.getClass();
                        StreamEntity streamEntity = playlistStreamEntry.streamEntity;
                        String uri2 = MediaBrowserImpl.buildLocalPlaylistItemMediaId(j, false).appendPath(String.valueOf(i2)).build().toString();
                        uri2.getClass();
                        String title = streamEntity.getTitle();
                        String uploader = streamEntity.getUploader();
                        MediaBrowserImpl.Companion companion = MediaBrowserImpl.Companion;
                        String thumbnailUrl = streamEntity.getThumbnailUrl();
                        companion.getClass();
                        arrayList.add(new MediaBrowserCompat.MediaItem(new MediaDescriptionCompat(uri2, title, uploader, null, null, MediaBrowserImpl.Companion.imageUriOrNullIfDisabled(thumbnailUrl), null, null), 2));
                        i2 = i3;
                    }
                    return arrayList;
                case 2:
                    PlaylistInfo playlistInfo = (PlaylistInfo) obj;
                    playlistInfo.getClass();
                    List relatedItems = playlistInfo.getRelatedItems();
                    relatedItems.getClass();
                    long j2 = this.timecodeScale;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(relatedItems, 10));
                    for (Object obj3 : relatedItems) {
                        int i4 = i + 1;
                        if (i < 0) {
                            Jsoup.throwIndexOverflow();
                            throw null;
                        }
                        StreamInfoItem streamInfoItem = (StreamInfoItem) obj3;
                        streamInfoItem.getClass();
                        String uri3 = MediaBrowserImpl.buildLocalPlaylistItemMediaId(j2, true).appendPath(String.valueOf(i)).build().toString();
                        uri3.getClass();
                        String name = streamInfoItem.getName();
                        String uploaderName = streamInfoItem.getUploaderName();
                        List thumbnails = streamInfoItem.getThumbnails();
                        thumbnails.getClass();
                        String choosePreferredImage = ImageStrategy.choosePreferredImage(thumbnails);
                        if (choosePreferredImage != null) {
                            MediaBrowserImpl.Companion.getClass();
                            uri = MediaBrowserImpl.Companion.imageUriOrNullIfDisabled(choosePreferredImage);
                        } else {
                            uri = null;
                        }
                        arrayList2.add(new MediaBrowserCompat.MediaItem(new MediaDescriptionCompat(uri3, name, uploaderName, null, null, uri, null, null), 2));
                        i = i4;
                    }
                    return arrayList2;
                default:
                    List list2 = (List) obj;
                    list2.getClass();
                    long j3 = this.timecodeScale;
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj4 : list2) {
                        if (((StreamHistoryEntry) obj4).streamId == j3) {
                            arrayList3.add(obj4);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        StreamEntity streamEntity2 = ((StreamHistoryEntry) it.next()).streamEntity;
                        StreamInfoItem streamInfoItem2 = new StreamInfoItem(streamEntity2.getServiceId(), streamEntity2.getUrl(), streamEntity2.getTitle(), streamEntity2.getStreamType());
                        streamInfoItem2.setDuration(streamEntity2.getDuration());
                        streamInfoItem2.setUploaderName(streamEntity2.getUploader());
                        streamInfoItem2.setUploaderUrl(streamEntity2.getUploaderUrl());
                        streamInfoItem2.setThumbnails(ImageStrategy.dbUrlToImageList(streamEntity2.getThumbnailUrl()));
                        arrayList4.add(streamInfoItem2);
                    }
                    return new SinglePlayQueue(0, arrayList4);
            }
        }

        public /* synthetic */ Info(int i) {
            this.$r8$classId = i;
        }

        public /* synthetic */ Info(MediaBrowserImpl mediaBrowserImpl, long j, int i) {
            this.$r8$classId = i;
            this.timecodeScale = j;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Cluster implements ExchangeFinder {
        public Object currentBlockGroup;
        public Object currentSimpleBlock;
        public final Object ref;
        public final Object this$0;
        public long timecode;

        public Cluster(RealRoutePlanner realRoutePlanner, TaskRunner taskRunner) {
            taskRunner.getClass();
            this.ref = realRoutePlanner;
            this.currentBlockGroup = taskRunner;
            this.timecode = Long.MIN_VALUE;
            this.currentSimpleBlock = new CopyOnWriteArrayList();
            this.this$0 = new LinkedBlockingDeque();
        }

        public void cancelInFlightConnects() {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.currentSimpleBlock;
            Iterator it = copyOnWriteArrayList.iterator();
            it.getClass();
            while (it.hasNext()) {
                RoutePlanner$Plan routePlanner$Plan = (RoutePlanner$Plan) it.next();
                routePlanner$Plan.cancel();
                RoutePlanner$Plan retry = routePlanner$Plan.retry();
                if (retry != null) {
                    ((RealRoutePlanner) this.ref).deferredPlans.addLast(retry);
                }
            }
            copyOnWriteArrayList.clear();
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:3:0x0002, B:5:0x000c, B:11:0x0021, B:13:0x002b, B:20:0x0058, B:64:0x0066, B:67:0x0073, B:25:0x007c, B:27:0x0082, B:31:0x008b, B:33:0x0096, B:34:0x009c, B:36:0x00a0, B:41:0x00a7, B:44:0x00b1, B:46:0x00b5, B:49:0x00bb, B:50:0x00bf, B:52:0x00c3, B:53:0x00c4, B:56:0x00c8, B:69:0x004c, B:71:0x00d3, B:72:0x00da), top: B:2:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x007c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008b A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:3:0x0002, B:5:0x000c, B:11:0x0021, B:13:0x002b, B:20:0x0058, B:64:0x0066, B:67:0x0073, B:25:0x007c, B:27:0x0082, B:31:0x008b, B:33:0x0096, B:34:0x009c, B:36:0x00a0, B:41:0x00a7, B:44:0x00b1, B:46:0x00b5, B:49:0x00bb, B:50:0x00bf, B:52:0x00c3, B:53:0x00c4, B:56:0x00c8, B:69:0x004c, B:71:0x00d3, B:72:0x00da), top: B:2:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00b5 A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:3:0x0002, B:5:0x000c, B:11:0x0021, B:13:0x002b, B:20:0x0058, B:64:0x0066, B:67:0x0073, B:25:0x007c, B:27:0x0082, B:31:0x008b, B:33:0x0096, B:34:0x009c, B:36:0x00a0, B:41:0x00a7, B:44:0x00b1, B:46:0x00b5, B:49:0x00bb, B:50:0x00bf, B:52:0x00c3, B:53:0x00c4, B:56:0x00c8, B:69:0x004c, B:71:0x00d3, B:72:0x00da), top: B:2:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00c8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0002 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x007b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x007c A[SYNTHETIC] */
        @Override // okhttp3.internal.connection.ExchangeFinder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public okhttp3.internal.connection.RealConnection find() {
            /*
                Method dump skipped, instructions count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.streams.WebMReader.Cluster.find():okhttp3.internal.connection.RealConnection");
        }

        public SimpleBlock getNextSimpleBlock() {
            Element untilElement;
            WebMReader webMReader = (WebMReader) this.this$0;
            DataReader dataReader = webMReader.stream;
            long j = webMReader.stream.position;
            Element element = (Element) this.ref;
            if (j >= element.offset + element.size) {
                return null;
            }
            Element element2 = (Element) this.currentBlockGroup;
            if (element2 != null) {
                webMReader.ensure(element2);
                this.currentBlockGroup = null;
                this.currentSimpleBlock = null;
            } else {
                SimpleBlock simpleBlock = (SimpleBlock) this.currentSimpleBlock;
                if (simpleBlock != null) {
                    webMReader.ensure(simpleBlock.ref);
                }
            }
            while (webMReader.stream.position < element.offset + element.size && (untilElement = webMReader.untilElement(element, 35, 32)) != null) {
                if (untilElement.type == 32) {
                    this.currentBlockGroup = untilElement;
                    untilElement = webMReader.untilElement(untilElement, 33);
                    if (untilElement == null) {
                        webMReader.ensure((Element) this.currentBlockGroup);
                        this.currentBlockGroup = null;
                    }
                }
                SimpleBlock simpleBlock2 = new SimpleBlock(untilElement);
                simpleBlock2.trackNumber = webMReader.readEncodedNumber();
                simpleBlock2.relativeTimeCode = dataReader.readShort();
                simpleBlock2.flags = (byte) dataReader.read();
                int i = (int) ((untilElement.offset + untilElement.size) - dataReader.position);
                simpleBlock2.dataSize = i;
                if (i < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m("Unexpected SimpleBlock element size, missing ", -i, " bytes"));
                    return null;
                }
                this.currentSimpleBlock = simpleBlock2;
                if (simpleBlock2.trackNumber == webMReader.tracks[webMReader.selectedTrack].trackNumber) {
                    if (dataReader.view == null) {
                        dataReader.view = new DataReader.AnonymousClass1(dataReader);
                    }
                    dataReader.viewSize = i;
                    simpleBlock2.data = dataReader.view;
                    SimpleBlock simpleBlock3 = (SimpleBlock) this.currentSimpleBlock;
                    long j2 = simpleBlock3.relativeTimeCode + this.timecode;
                    simpleBlock3.absoluteTimeCodeNs = j2;
                    simpleBlock3.absoluteTimeCodeNs = j2 * ((Info) webMReader.segment.info).timecodeScale;
                    return simpleBlock3;
                }
                webMReader.ensure(untilElement);
            }
            return null;
        }

        @Override // okhttp3.internal.connection.ExchangeFinder
        public RealRoutePlanner getRoutePlanner() {
            return (RealRoutePlanner) this.ref;
        }

        public RoutePlanner$ConnectResult launchTcpConnect() {
            final RoutePlanner$Plan failedPlan;
            RealRoutePlanner realRoutePlanner = (RealRoutePlanner) this.ref;
            if (realRoutePlanner.hasNext(null)) {
                try {
                    failedPlan = realRoutePlanner.plan();
                } catch (Throwable th) {
                    failedPlan = new FailedPlan(th);
                }
                if (failedPlan.isReady()) {
                    return new RoutePlanner$ConnectResult(failedPlan, (Throwable) null, 6);
                }
                if (failedPlan instanceof FailedPlan) {
                    return ((FailedPlan) failedPlan).result;
                }
                ((CopyOnWriteArrayList) this.currentSimpleBlock).add(failedPlan);
                final String str = _UtilJvmKt.okHttpName + " connect " + realRoutePlanner.address.url.redact();
                ((TaskRunner) this.currentBlockGroup).newQueue().schedule(new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                    @Override // okhttp3.internal.concurrent.Task
                    public final long runOnce() {
                        RoutePlanner$ConnectResult routePlanner$ConnectResult;
                        RoutePlanner$Plan routePlanner$Plan = failedPlan;
                        try {
                            routePlanner$ConnectResult = routePlanner$Plan.connectTcp();
                        } catch (Throwable th2) {
                            routePlanner$ConnectResult = new RoutePlanner$ConnectResult(routePlanner$Plan, th2, 2);
                        }
                        WebMReader.Cluster cluster = this;
                        if (!((CopyOnWriteArrayList) cluster.currentSimpleBlock).contains(routePlanner$Plan)) {
                            return -1L;
                        }
                        ((LinkedBlockingDeque) cluster.this$0).put(routePlanner$ConnectResult);
                        return -1L;
                    }
                }, 0L);
            }
            return null;
        }

        public Cluster(WebMReader webMReader, Element element) {
            this.this$0 = webMReader;
            this.currentSimpleBlock = null;
            this.currentBlockGroup = null;
            this.ref = element;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Segment {
        public Object currentCluster;
        public boolean firstClusterInSegment;
        public Object info;
        public Object ref;
        public Object this$0;
        public Object tracks;

        public Segment(FragmentActivity fragmentActivity, Context context, Fragment fragment, StreamInfoItem streamInfoItem) {
            this.this$0 = new ArrayList();
            if (fragmentActivity == null || context == null || context.getResources() == null) {
                int i = MainActivity.$r8$clinit;
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("activity, context or resources is null");
                throw null;
            }
            this.info = fragmentActivity;
            this.tracks = context;
            this.ref = fragment;
            this.currentCluster = streamInfoItem;
            this.firstClusterInSegment = true;
            PlayerHolder playerHolder = PlayerHolder.getInstance();
            int i2 = 20;
            if (playerHolder.getPlayer().flatMap(new Player$$ExternalSyntheticLambda28(i2)).isPresent()) {
                addEntry(StreamDialogDefaultEntry.ENQUEUE);
                if (((Integer) playerHolder.getPlayer().flatMap(new Player$$ExternalSyntheticLambda28(i2)).map(new Player$$ExternalSyntheticLambda28(21)).orElse(0)).intValue() < ((Integer) playerHolder.getPlayer().flatMap(new Player$$ExternalSyntheticLambda28(i2)).map(new Player$$ExternalSyntheticLambda28(19)).orElse(0)).intValue() - 1) {
                    addEntry(StreamDialogDefaultEntry.ENQUEUE_NEXT);
                }
            }
            addEntry(StreamDialogDefaultEntry.START_HERE_ON_BACKGROUND);
            StreamType streamType = streamInfoItem.getStreamType();
            streamType.getClass();
            if (streamType == StreamType.AUDIO_STREAM || streamType == StreamType.AUDIO_LIVE_STREAM || streamType == StreamType.POST_LIVE_AUDIO_STREAM) {
                return;
            }
            addEntry(StreamDialogDefaultEntry.START_HERE_ON_POPUP);
        }

        public static void reportErrorDuringInitialization(IllegalArgumentException illegalArgumentException, StreamInfoItem streamInfoItem) {
            App.Companion.getClass();
            ErrorUtil.showSnackbar(App.Companion.getInstance().getBaseContext(), new ErrorInfo(illegalArgumentException, UserAction.OPEN_INFO_ITEM_DIALOG, "none", Integer.valueOf(streamInfoItem.getServiceId()), 16));
        }

        public void addEntry(StreamDialogDefaultEntry streamDialogDefaultEntry) {
            ((ArrayList) this.this$0).add(new StreamDialogEntry(streamDialogDefaultEntry.resource, streamDialogDefaultEntry.action));
        }

        public PlayerUiList create() {
            StreamInfoItem streamInfoItem = (StreamInfoItem) this.currentCluster;
            if (this.firstClusterInSegment) {
                Stream.CC.of((Object[]) new StreamDialogDefaultEntry[]{StreamDialogDefaultEntry.DOWNLOAD, StreamDialogDefaultEntry.APPEND_PLAYLIST, StreamDialogDefaultEntry.SHARE, StreamDialogDefaultEntry.OPEN_IN_BROWSER}).forEach(new Player$$ExternalSyntheticLambda1(this, 9));
                Context context = (Context) this.tracks;
                if (CloseableKt.shouldShowPlayWithKodi(context, streamInfoItem.getServiceId())) {
                    addEntry(StreamDialogDefaultEntry.PLAY_WITH_KODI);
                }
                if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean(context.getString(R.string.enable_watch_history_key), false) && !Okio.isLiveStream(streamInfoItem.getStreamType())) {
                    addEntry(StreamDialogDefaultEntry.MARK_AS_WATCHED);
                }
                addEntry(StreamDialogDefaultEntry.SHOW_CHANNEL_DETAILS);
            }
            return new PlayerUiList((Activity) this.info, (Fragment) this.ref, streamInfoItem, (ArrayList) this.this$0);
        }

        public Cluster getNextCluster() {
            Element element;
            WebMReader webMReader = (WebMReader) this.this$0;
            if (webMReader.done) {
                return null;
            }
            if (this.firstClusterInSegment && (element = (Element) webMReader.segment.currentCluster) != null) {
                this.firstClusterInSegment = false;
                return WebMReader.m878$$Nest$mreadCluster(webMReader, element);
            }
            webMReader.ensure((Element) webMReader.segment.currentCluster);
            Element untilElement = webMReader.untilElement((Element) webMReader.segment.ref, 256095861);
            if (untilElement == null) {
                return null;
            }
            webMReader.segment.currentCluster = untilElement;
            return WebMReader.m878$$Nest$mreadCluster(webMReader, untilElement);
        }

        public void setAction(StreamDialogDefaultEntry streamDialogDefaultEntry, StreamDialogEntry.StreamDialogEntryAction streamDialogEntryAction) {
            ArrayList arrayList = (ArrayList) this.this$0;
            for (int i = 0; i < arrayList.size(); i++) {
                int i2 = ((StreamDialogEntry) arrayList.get(i)).resource;
                int i3 = streamDialogDefaultEntry.resource;
                if (i2 == i3) {
                    arrayList.set(i, new StreamDialogEntry(i3, streamDialogEntryAction));
                    return;
                }
            }
        }

        public Segment() {
            this.currentCluster = new LinkedHashMap();
            this.firstClusterInSegment = true;
        }
    }
}
