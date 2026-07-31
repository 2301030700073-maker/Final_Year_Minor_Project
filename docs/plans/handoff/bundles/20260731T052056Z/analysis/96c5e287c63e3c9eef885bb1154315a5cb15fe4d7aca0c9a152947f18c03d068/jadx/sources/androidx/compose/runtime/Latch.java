package androidx.compose.runtime;

import android.os.Build;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.room.Room;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.AutoMigration_14_15;
import androidx.work.impl.model.WorkSpec;
import coil3.disk.DiskLruCache;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import okhttp3.FormBody;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.cache.DiskLruCache$fileSystem$1;
import okhttp3.internal.cache.FaultHidingSink;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okio.BlackholeSink;
import okio.Buffer;
import okio.BufferedSink;
import okio.Path;
import okio.Sink;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeVisitor;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Latch implements NodeVisitor {
    public final /* synthetic */ int $r8$classId;
    public boolean _isOpen;
    public Object awaiters;
    public Object lock;
    public Object spareList;

    public Latch(Class cls) {
        this.$r8$classId = 3;
        UUID randomUUID = UUID.randomUUID();
        randomUUID.getClass();
        this.lock = randomUUID;
        String uuid = ((UUID) this.lock).toString();
        uuid.getClass();
        this.awaiters = new WorkSpec(uuid, (WorkInfo.State) null, cls.getName(), (String) null, (Data) null, (Data) null, 0L, 0L, 0L, (Constraints) null, 0, (BackoffPolicy) null, 0L, 0L, 0L, 0L, false, (OutOfQuotaPolicy) null, 0, 0L, 0, 0, (String) null, (Boolean) null, 33554426);
        String[] strArr = {cls.getName()};
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(1));
        ArraysKt___ArraysKt.toCollection(strArr, linkedHashSet);
        this.spareList = linkedHashSet;
    }

    public static IOException bodyComplete$default(Latch latch, boolean z, IOException iOException, int i) {
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 8) == 0;
        if (iOException != null) {
            latch.trackFailure(iOException);
        }
        return ((RealCall) latch.lock).messageDone$okhttp(latch, z3 && !z, z2 && !z, z2 && z, z3 && z, iOException);
    }

    public static boolean isBlankText(Node node) {
        return (node instanceof TextNode) && StringUtil.isBlank(((TextNode) node).coreValue());
    }

    public void abort() {
        DiskLruCache diskLruCache = (DiskLruCache) this.spareList;
        synchronized (diskLruCache) {
            try {
                if (this._isOpen) {
                    throw new IllegalStateException("Check failed.");
                }
                if (Intrinsics.areEqual(((DiskLruCache.Entry) this.lock).currentEditor, this)) {
                    diskLruCache.completeEdit$okhttp(this, false);
                }
                this._isOpen = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public OneTimeWorkRequest build() {
        if (this._isOpen && ((WorkSpec) this.awaiters).constraints.requiresDeviceIdle) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot set backoff criteria on an idle mode job");
            return null;
        }
        UUID uuid = (UUID) this.lock;
        WorkSpec workSpec = (WorkSpec) this.awaiters;
        OneTimeWorkRequest oneTimeWorkRequest = new OneTimeWorkRequest(uuid, workSpec, (LinkedHashSet) this.spareList);
        Constraints constraints = workSpec.constraints;
        boolean z = (Build.VERSION.SDK_INT >= 24 && constraints.hasContentUriTriggers()) || constraints.requiresBatteryNotLow || constraints.requiresCharging || constraints.requiresDeviceIdle;
        WorkSpec workSpec2 = (WorkSpec) this.awaiters;
        if (workSpec2.expedited) {
            if (z) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Expedited jobs only support network and storage constraints");
                return null;
            }
            if (workSpec2.initialDelay > 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Expedited jobs cannot be delayed");
                return null;
            }
        }
        String str = workSpec2.traceTag;
        if (str == null) {
            List split$default = StringsKt.split$default(workSpec2.workerClassName, new String[]{"."});
            String str2 = split$default.size() == 1 ? (String) split$default.get(0) : (String) CollectionsKt.last(split$default);
            if (str2.length() > 127) {
                str2 = StringsKt.take(127, str2);
            }
            workSpec2.traceTag = str2;
        } else if (str.length() > 127) {
            ((WorkSpec) this.awaiters).traceTag = StringsKt.take(127, str);
        }
        UUID randomUUID = UUID.randomUUID();
        randomUUID.getClass();
        this.lock = randomUUID;
        String uuid2 = randomUUID.toString();
        uuid2.getClass();
        WorkSpec workSpec3 = (WorkSpec) this.awaiters;
        this.awaiters = new WorkSpec(uuid2, workSpec3.state, workSpec3.workerClassName, workSpec3.inputMergerClassName, new Data(workSpec3.input), new Data(workSpec3.output), workSpec3.initialDelay, workSpec3.intervalDuration, workSpec3.flexDuration, new Constraints(workSpec3.constraints), workSpec3.runAttemptCount, workSpec3.backoffPolicy, workSpec3.backoffDelayDuration, workSpec3.lastEnqueueTime, workSpec3.minimumRetentionDuration, workSpec3.scheduleRequestedAt, workSpec3.expedited, workSpec3.outOfQuotaPolicy, workSpec3.periodCount, workSpec3.nextScheduleTimeOverride, workSpec3.nextScheduleTimeOverrideGeneration, workSpec3.stopReason, workSpec3.traceTag, workSpec3.backOffOnSystemInterruptions, 524288);
        return oneTimeWorkRequest;
    }

    public void commit() {
        DiskLruCache diskLruCache = (DiskLruCache) this.spareList;
        synchronized (diskLruCache) {
            try {
                if (this._isOpen) {
                    throw new IllegalStateException("Check failed.");
                }
                if (Intrinsics.areEqual(((DiskLruCache.Entry) this.lock).currentEditor, this)) {
                    diskLruCache.completeEdit$okhttp(this, true);
                }
                this._isOpen = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void complete(boolean z) {
        coil3.disk.DiskLruCache diskLruCache = (coil3.disk.DiskLruCache) this.spareList;
        synchronized (diskLruCache.lock) {
            try {
                if (this._isOpen) {
                    throw new IllegalStateException("editor is closed");
                }
                if (Intrinsics.areEqual(((DiskLruCache.Entry) this.lock).currentEditor, this)) {
                    diskLruCache.completeEdit(this, z);
                }
                this._isOpen = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void detach$okhttp() {
        DiskLruCache.Entry entry = (DiskLruCache.Entry) this.lock;
        if (Intrinsics.areEqual(entry.currentEditor, this)) {
            okhttp3.internal.cache.DiskLruCache diskLruCache = (okhttp3.internal.cache.DiskLruCache) this.spareList;
            if (diskLruCache.civilizedFileSystem) {
                diskLruCache.completeEdit$okhttp(this, false);
            } else {
                entry.zombie = true;
            }
        }
    }

    public Path file(int i) {
        Path path;
        coil3.disk.DiskLruCache diskLruCache = (coil3.disk.DiskLruCache) this.spareList;
        synchronized (diskLruCache.lock) {
            if (this._isOpen) {
                throw new IllegalStateException("editor is closed");
            }
            ((boolean[]) this.awaiters)[i] = true;
            Object obj = ((DiskLruCache.Entry) this.lock).dirtyFiles.get(i);
            TuplesKt.createFile$default(diskLruCache.fileSystem, (Path) obj);
            path = (Path) obj;
        }
        return path;
    }

    public RealConnection getConnection$okhttp() {
        ExchangeCodec.Carrier carrier = ((ExchangeCodec) this.spareList).getCarrier();
        RealConnection realConnection = carrier instanceof RealConnection ? (RealConnection) carrier : null;
        if (realConnection != null) {
            return realConnection;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("no connection for CONNECT tunnels");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if (org.jsoup.internal.StringUtil.isWhitespace(((org.jsoup.nodes.LeafNode) r4).coreValue().codePointAt(0)) != false) goto L32;
     */
    @Override // org.jsoup.select.NodeVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void head(int r7, org.jsoup.nodes.Node r8) {
        /*
            r6 = this;
            java.lang.Class r0 = r8.getClass()
            java.lang.Class<org.jsoup.nodes.TextNode> r1 = org.jsoup.nodes.TextNode.class
            r2 = 1
            if (r0 != r1) goto L97
            org.jsoup.nodes.TextNode r8 = (org.jsoup.nodes.TextNode) r8
            boolean r0 = r6._isOpen
            r1 = 0
            if (r0 != 0) goto L85
            org.jsoup.nodes.Element r0 = r8.parentNode
            boolean r0 = r6.isBlockEl(r0)
            r3 = 4
            if (r0 != 0) goto L1b
        L19:
            r1 = r3
            goto L6a
        L1b:
            org.jsoup.nodes.Node r0 = r8.previousSibling()
            org.jsoup.nodes.Node r4 = r8.nextSibling()
            boolean r5 = r0 instanceof org.jsoup.nodes.Element
            if (r5 == 0) goto L2d
            boolean r5 = r6.isBlockEl(r0)
            if (r5 == 0) goto L3b
        L2d:
            if (r0 == 0) goto L39
            boolean r5 = r0 instanceof org.jsoup.nodes.TextNode
            if (r5 != 0) goto L3b
            boolean r0 = r6.shouldIndent(r0)
            if (r0 == 0) goto L3b
        L39:
            r3 = 12
        L3b:
            if (r4 == 0) goto L67
            boolean r0 = r4 instanceof org.jsoup.nodes.TextNode
            if (r0 != 0) goto L48
            boolean r0 = r6.shouldIndent(r4)
            if (r0 == 0) goto L48
            goto L67
        L48:
            boolean r0 = isBlankText(r4)
            if (r0 == 0) goto L53
            org.jsoup.nodes.Node r4 = r4.nextSibling()
            goto L48
        L53:
            boolean r0 = r4 instanceof org.jsoup.nodes.TextNode
            if (r0 == 0) goto L19
            org.jsoup.nodes.LeafNode r4 = (org.jsoup.nodes.LeafNode) r4
            java.lang.String r0 = r4.coreValue()
            int r0 = r0.codePointAt(r1)
            boolean r0 = org.jsoup.internal.StringUtil.isWhitespace(r0)
            if (r0 == 0) goto L19
        L67:
            r0 = r3 | 16
            r1 = r0
        L6a:
            java.lang.String r0 = r8.coreValue()
            boolean r0 = org.jsoup.internal.StringUtil.isBlank(r0)
            if (r0 != 0) goto L85
            org.jsoup.nodes.Element r0 = r8.parentNode
            boolean r0 = r6.isBlockEl(r0)
            if (r0 == 0) goto L85
            boolean r0 = r6.shouldIndent(r8)
            if (r0 == 0) goto L85
            r6.indent(r7)
        L85:
            r7 = r1 | 1
            java.lang.Object r0 = r6.awaiters
            org.jsoup.internal.QuietAppendable$BaseAppendable r0 = (org.jsoup.internal.QuietAppendable$BaseAppendable) r0
            java.lang.String r8 = r8.coreValue()
            java.lang.Object r6 = r6.spareList
            org.jsoup.nodes.Document$OutputSettings r6 = (org.jsoup.nodes.Document.OutputSettings) r6
            org.jsoup.nodes.Entities.escape(r0, r8, r6, r7)
            return
        L97:
            boolean r0 = r8 instanceof org.jsoup.nodes.Element
            if (r0 == 0) goto Lbe
            org.jsoup.nodes.Element r8 = (org.jsoup.nodes.Element) r8
            boolean r0 = r6.shouldIndent(r8)
            if (r0 == 0) goto La6
            r6.indent(r7)
        La6:
            java.lang.Object r7 = r6.awaiters
            org.jsoup.internal.QuietAppendable$BaseAppendable r7 = (org.jsoup.internal.QuietAppendable$BaseAppendable) r7
            java.lang.Object r0 = r6.spareList
            org.jsoup.nodes.Document$OutputSettings r0 = (org.jsoup.nodes.Document.OutputSettings) r0
            r8.outerHtmlHead(r7, r0)
            r7 = 64
            org.jsoup.parser.Tag r8 = r8.tag
            boolean r7 = r8.is(r7)
            if (r7 == 0) goto Lbd
            r6._isOpen = r2
        Lbd:
            return
        Lbe:
            org.jsoup.nodes.LeafNode r8 = (org.jsoup.nodes.LeafNode) r8
            boolean r0 = r6.shouldIndent(r8)
            if (r0 == 0) goto Lc9
            r6.indent(r7)
        Lc9:
            java.lang.Object r7 = r6.awaiters
            org.jsoup.internal.QuietAppendable$BaseAppendable r7 = (org.jsoup.internal.QuietAppendable$BaseAppendable) r7
            java.lang.Object r6 = r6.spareList
            org.jsoup.nodes.Document$OutputSettings r6 = (org.jsoup.nodes.Document.OutputSettings) r6
            r8.outerHtmlHead(r7, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Latch.head(int, org.jsoup.nodes.Node):void");
    }

    public void indent(int i) {
        String valueOf;
        QuietAppendable$BaseAppendable append = ((QuietAppendable$BaseAppendable) this.awaiters).append('\n');
        String[] strArr = StringUtil.padding;
        Room.isTrue("width must be >= 0", i >= 0);
        int min = Math.min(i, 30);
        String[] strArr2 = StringUtil.padding;
        if (min < 21) {
            valueOf = strArr2[min];
        } else {
            char[] cArr = new char[min];
            for (int i2 = 0; i2 < min; i2++) {
                cArr[i2] = ' ';
            }
            valueOf = String.valueOf(cArr);
        }
        append.append(valueOf);
    }

    public boolean isBlockEl(Node node) {
        if (node != null && (node instanceof Element)) {
            Element element = (Element) node;
            if (!element.nameIs("br") && !element.isBlock()) {
                if ((element.tag.options & 1) == 0) {
                    if (!(element.parentNode instanceof Document)) {
                        Element firstElementChild = element.firstElementChild();
                        for (int i = 0; i < 5 && firstElementChild != null; i++) {
                            if (!firstElementChild.isBlock() && (firstElementChild.tag.options & 1) != 0) {
                                firstElementChild = firstElementChild.nextElementSibling();
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public boolean isOpen() {
        boolean z;
        synchronized (this.lock) {
            z = this._isOpen;
        }
        return z;
    }

    public Sink newSink(int i) {
        okhttp3.internal.cache.DiskLruCache diskLruCache = (okhttp3.internal.cache.DiskLruCache) this.spareList;
        synchronized (diskLruCache) {
            try {
                if (this._isOpen) {
                    throw new IllegalStateException("Check failed.");
                }
                int i2 = 0;
                if (!Intrinsics.areEqual(((DiskLruCache.Entry) this.lock).currentEditor, this)) {
                    return new BlackholeSink(i2);
                }
                if (!((DiskLruCache.Entry) this.lock).readable) {
                    boolean[] zArr = (boolean[]) this.awaiters;
                    zArr.getClass();
                    zArr[i] = true;
                }
                Path path = (Path) ((DiskLruCache.Entry) this.lock).dirtyFiles.get(i);
                try {
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = diskLruCache.fileSystem;
                    diskLruCache$fileSystem$1.getClass();
                    path.getClass();
                    return new FaultHidingSink(diskLruCache$fileSystem$1.sink(path, false), new GamesHubScreenKt$$ExternalSyntheticLambda8(8, diskLruCache, this));
                } catch (FileNotFoundException unused) {
                    return new BlackholeSink(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Response.Builder readResponseHeaders(boolean z) {
        try {
            Response.Builder readResponseHeaders = ((ExchangeCodec) this.spareList).readResponseHeaders(z);
            if (readResponseHeaders == null) {
                return readResponseHeaders;
            }
            readResponseHeaders.exchange = this;
            return readResponseHeaders;
        } catch (IOException e) {
            trackFailure(e);
            throw e;
        }
    }

    public void setBackoffCriteria(BackoffPolicy backoffPolicy) {
        backoffPolicy.getClass();
        TimeUnit.MILLISECONDS.getClass();
        this._isOpen = true;
        WorkSpec workSpec = (WorkSpec) this.awaiters;
        workSpec.backoffPolicy = backoffPolicy;
        ContextsKt$$ExternalSyntheticBUOutline0 contextsKt$$ExternalSyntheticBUOutline0 = WorkSpec.WORK_INFO_MAPPER;
        workSpec.backoffDelayDuration = RegexKt.coerceIn(10000L, 10000L, 18000000L);
    }

    public void setInitialDelay(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        ((WorkSpec) this.awaiters).initialDelay = timeUnit.toMillis(j);
        if (Long.MAX_VALUE - System.currentTimeMillis() > ((WorkSpec) this.awaiters).initialDelay) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("The given initial delay is too large and will cause an overflow!");
    }

    public boolean shouldIndent(Node node) {
        if (node != null && node != ((Node) this.lock) && !this._isOpen && !isBlankText(node)) {
            if (isBlockEl(node)) {
                return true;
            }
            Node previousSibling = node.previousSibling();
            while (isBlankText(previousSibling)) {
                previousSibling = previousSibling.previousSibling();
            }
            if (isBlockEl(previousSibling)) {
                return true;
            }
            Element element = node.parentNode;
            if (isBlockEl(element) && !element.tag.is(8)) {
                Node firstChild = element.firstChild();
                int i = 0;
                while (true) {
                    if (i >= 5 || firstChild == null) {
                        break;
                    }
                    if (!(firstChild instanceof TextNode)) {
                        if (previousSibling == null) {
                            return true;
                        }
                        if ((previousSibling instanceof TextNode) || (!isBlockEl(previousSibling) && (previousSibling instanceof Element))) {
                            break;
                        }
                        return true;
                    }
                    firstChild = firstChild.nextSibling();
                    i++;
                }
            }
        }
        return false;
    }

    public BufferedSink sink() {
        return (BufferedSink) Animation.CC.m(1, (ArrayList) this.awaiters);
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(int i, Node node) {
        if (node instanceof Element) {
            Element element = (Element) node;
            Node firstChild = element.firstChild();
            while (isBlankText(firstChild)) {
                firstChild = firstChild.nextSibling();
            }
            if (shouldIndent(firstChild)) {
                indent(i);
            }
            element.outerHtmlTail((QuietAppendable$BaseAppendable) this.awaiters, (Document.OutputSettings) this.spareList);
            if (this._isOpen && element.tag.is(64)) {
                for (Element element2 = element.parentNode; element2 != null; element2 = element2.parentNode) {
                    if ((element2.tag.options & 64) != 0) {
                        return;
                    }
                }
                this._isOpen = false;
            }
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 7:
                return CollectionsKt.joinToString$default((ArrayList) this.lock, " / ", null, null, null, 62);
            default:
                return super.toString();
        }
    }

    public void trackFailure(IOException iOException) {
        this._isOpen = true;
        ((ExchangeCodec) this.spareList).getCarrier().trackFailure((RealCall) this.lock, iOException);
    }

    public FormBody.Builder upgradeToSocket() {
        RealCall realCall = (RealCall) this.lock;
        if (realCall.timeoutEarlyExit) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
            return null;
        }
        realCall.timeoutEarlyExit = true;
        realCall.timeout.exit();
        synchronized (realCall) {
            if (realCall.exchange == null) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.socketSinkOpen || realCall.socketSourceOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.requestBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (!realCall.responseBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            realCall.responseBodyOpen = false;
            realCall.socketSinkOpen = true;
            realCall.socketSourceOpen = true;
        }
        ExchangeCodec.Carrier carrier = ((ExchangeCodec) this.spareList).getCarrier();
        carrier.getClass();
        RealConnection realConnection = (RealConnection) carrier;
        realConnection.javaNetSocket.setSoTimeout(0);
        realConnection.noNewExchanges();
        return new FormBody.Builder(this);
    }

    public void write(String str, int i, long j, Function1 function1) {
        str.getClass();
        Buffer buffer = new Buffer();
        ArrayList arrayList = (ArrayList) this.awaiters;
        arrayList.add(buffer);
        this._isOpen = false;
        ArrayList arrayList2 = (ArrayList) this.lock;
        arrayList2.add(str);
        try {
            function1.invoke(buffer);
            int i2 = this._isOpen ? 32 : 0;
            this._isOpen = true;
            arrayList.remove(arrayList.size() - 1);
            arrayList2.remove(arrayList2.size() - 1);
            BufferedSink sink = sink();
            if (j < 31) {
                sink.writeByte(i | i2 | ((int) j));
            } else {
                sink.writeByte(i | i2 | 31);
                writeVariableLengthLong(j);
            }
            long j2 = buffer.size;
            if (j2 < 128) {
                sink.writeByte((int) j2);
            } else {
                int numberOfLeadingZeros = (71 - Long.numberOfLeadingZeros(j2)) / 8;
                sink.writeByte(numberOfLeadingZeros | 128);
                int i3 = (numberOfLeadingZeros - 1) * 8;
                int progressionLastElement = ContextsKt.getProgressionLastElement(i3, 0, -8);
                if (progressionLastElement <= i3) {
                    while (true) {
                        sink.writeByte((int) (j2 >> i3));
                        if (i3 == progressionLastElement) {
                            break;
                        } else {
                            i3 -= 8;
                        }
                    }
                }
            }
            sink.writeAll(buffer);
        } catch (Throwable th) {
            arrayList.remove(arrayList.size() - 1);
            arrayList2.remove(arrayList2.size() - 1);
            throw th;
        }
    }

    public void writeVariableLengthLong(long j) {
        BufferedSink sink = sink();
        int numberOfLeadingZeros = (((70 - Long.numberOfLeadingZeros(j)) / 7) - 1) * 7;
        int progressionLastElement = ContextsKt.getProgressionLastElement(numberOfLeadingZeros, 0, -7);
        if (progressionLastElement > numberOfLeadingZeros) {
            return;
        }
        while (true) {
            sink.writeByte((numberOfLeadingZeros == 0 ? 0 : 128) | ((int) ((j >> numberOfLeadingZeros) & 127)));
            if (numberOfLeadingZeros == progressionLastElement) {
                return;
            } else {
                numberOfLeadingZeros -= 7;
            }
        }
    }

    public Latch(Buffer buffer) {
        this.$r8$classId = 7;
        this.awaiters = Room.mutableListOf(buffer);
        this.spareList = new ArrayList();
        this.lock = new ArrayList();
    }

    public Latch(PagingSource$$ExternalSyntheticLambda0 pagingSource$$ExternalSyntheticLambda0) {
        this.$r8$classId = 2;
        this.lock = pagingSource$$ExternalSyntheticLambda0;
        this.spareList = new AutoMigration_14_15(16);
        this.awaiters = new ArrayList();
    }

    public Latch() {
        this.$r8$classId = 0;
        this.lock = new Object();
        this.awaiters = new ArrayList();
        this.spareList = new ArrayList();
        this._isOpen = true;
    }

    public Latch(RealCall realCall, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        this.$r8$classId = 6;
        exchangeFinder.getClass();
        this.lock = realCall;
        this.awaiters = exchangeFinder;
        this.spareList = exchangeCodec;
    }

    public Latch(Node node, QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        this.$r8$classId = 8;
        this.lock = node;
        this.awaiters = quietAppendable$BaseAppendable;
        this.spareList = outputSettings;
    }

    public Latch(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, PrefetchScheduler prefetchScheduler) {
        this.$r8$classId = 1;
        this.lock = lazyLayoutItemContentFactory;
        this.awaiters = subcomposeLayoutState;
        this.spareList = prefetchScheduler;
        this._isOpen = true;
    }

    public Latch(coil3.disk.DiskLruCache diskLruCache, DiskLruCache.Entry entry) {
        this.$r8$classId = 4;
        this.spareList = diskLruCache;
        this.lock = entry;
        this.awaiters = new boolean[2];
    }

    public Latch(okhttp3.internal.cache.DiskLruCache diskLruCache, DiskLruCache.Entry entry) {
        boolean[] zArr;
        this.$r8$classId = 5;
        this.spareList = diskLruCache;
        this.lock = entry;
        if (entry.readable) {
            zArr = null;
        } else {
            diskLruCache.getClass();
            zArr = new boolean[2];
        }
        this.awaiters = zArr;
    }
}
