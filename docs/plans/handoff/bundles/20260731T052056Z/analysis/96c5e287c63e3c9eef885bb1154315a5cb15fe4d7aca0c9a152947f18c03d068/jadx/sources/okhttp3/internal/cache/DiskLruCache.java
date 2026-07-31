package okhttp3.internal.cache;

import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Latch;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TimeZone;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okio.FileSystem;
import okio.ForwardingSource;
import okio.Okio__OkioKt;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Source;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DiskLruCache implements Closeable, Flushable {
    public boolean civilizedFileSystem;
    public final TaskQueue cleanupQueue;
    public boolean closed;
    public final Path directory;
    public final DiskLruCache$fileSystem$1 fileSystem;
    public boolean hasJournalErrors;
    public boolean initialized;
    public final Path journalFile;
    public final Path journalFileBackup;
    public final Path journalFileTmp;
    public RealBufferedSink journalWriter;
    public boolean mostRecentRebuildFailed;
    public boolean mostRecentTrimFailed;
    public long nextSequenceNumber;
    public int redundantOpCount;
    public long size;
    public static final Regex LEGAL_KEY_PATTERN = new Regex("[a-z0-9_-]{1,120}");
    public static final String CLEAN = "CLEAN";
    public static final String DIRTY = "DIRTY";
    public static final String REMOVE = "REMOVE";
    public static final String READ = "READ";
    public final long maxSize = 67108864;
    public final LinkedHashMap lruEntries = new LinkedHashMap(0, 0.75f, true);
    public final TaskQueue$execute$1 cleanupTask = new TaskQueue$execute$1(Animation.CC.m(new StringBuilder(), _UtilJvmKt.okHttpName, " Cache"), this, 1);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Entry {
        public final ArrayList cleanFiles;
        public Latch currentEditor;
        public final ArrayList dirtyFiles;
        public final String key;
        public final long[] lengths;
        public int lockingSourceCount;
        public boolean readable;
        public long sequenceNumber;
        public final /* synthetic */ DiskLruCache this$0;
        public boolean zombie;

        public Entry(DiskLruCache diskLruCache, String str) {
            str.getClass();
            this.this$0 = diskLruCache;
            this.key = str;
            diskLruCache.getClass();
            this.lengths = new long[2];
            this.cleanFiles = new ArrayList();
            this.dirtyFiles = new ArrayList();
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < 2; i++) {
                sb.append(i);
                this.cleanFiles.add(this.this$0.directory.resolve(sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(this.this$0.directory.resolve(sb.toString()));
                sb.setLength(length);
            }
        }

        public final Snapshot snapshot$okhttp() {
            TimeZone timeZone = _UtilJvmKt.UTC;
            if (!this.readable) {
                return null;
            }
            final DiskLruCache diskLruCache = this.this$0;
            if (!diskLruCache.civilizedFileSystem && (this.currentEditor != null || this.zombie)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.lengths.clone();
            for (int i = 0; i < 2; i++) {
                try {
                    final Source source = diskLruCache.fileSystem.source((Path) this.cleanFiles.get(i));
                    if (!diskLruCache.civilizedFileSystem) {
                        this.lockingSourceCount++;
                        source = new ForwardingSource(source) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                            public boolean closed;

                            @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
                            public final void close() {
                                super.close();
                                if (this.closed) {
                                    return;
                                }
                                this.closed = true;
                                DiskLruCache diskLruCache2 = diskLruCache;
                                DiskLruCache.Entry entry = this;
                                synchronized (diskLruCache2) {
                                    int i2 = entry.lockingSourceCount - 1;
                                    entry.lockingSourceCount = i2;
                                    if (i2 == 0 && entry.zombie) {
                                        diskLruCache2.removeEntry$okhttp(entry);
                                    }
                                }
                            }
                        };
                    }
                    arrayList.add(source);
                } catch (FileNotFoundException unused) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        _UtilCommonKt.closeQuietly((Source) it.next());
                    }
                    try {
                        diskLruCache.removeEntry$okhttp(this);
                        return null;
                    } catch (IOException unused2) {
                        return null;
                    }
                }
            }
            return new Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Snapshot implements Closeable {
        public final String key;
        public final long sequenceNumber;
        public final ArrayList sources;
        public final /* synthetic */ DiskLruCache this$0;

        public Snapshot(DiskLruCache diskLruCache, String str, long j, ArrayList arrayList, long[] jArr) {
            str.getClass();
            jArr.getClass();
            this.this$0 = diskLruCache;
            this.key = str;
            this.sequenceNumber = j;
            this.sources = arrayList;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            Iterator it = this.sources.iterator();
            while (it.hasNext()) {
                _UtilCommonKt.closeQuietly((Source) it.next());
            }
        }
    }

    public DiskLruCache(FileSystem fileSystem, Path path, TaskRunner taskRunner) {
        this.directory = path;
        this.fileSystem = new DiskLruCache$fileSystem$1(fileSystem);
        this.cleanupQueue = taskRunner.newQueue();
        this.journalFile = path.resolve("journal");
        this.journalFileTmp = path.resolve("journal.tmp");
        this.journalFileBackup = path.resolve("journal.bkp");
    }

    public static void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.matches(str)) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m('\"', "keys must match regex [a-z0-9_-]{1,120}: \"", str));
    }

    public final synchronized void checkNotClosed() {
        if (this.closed) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.initialized && !this.closed) {
                Collection values = this.lruEntries.values();
                values.getClass();
                for (Entry entry : (Entry[]) values.toArray(new Entry[0])) {
                    entry.getClass();
                    Latch latch = entry.currentEditor;
                    if (latch != null) {
                        latch.detach$okhttp();
                    }
                }
                trimToSize();
                RealBufferedSink realBufferedSink = this.journalWriter;
                if (realBufferedSink != null) {
                    _UtilCommonKt.closeQuietly(realBufferedSink);
                }
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void completeEdit$okhttp(Latch latch, boolean z) {
        Entry entry = (Entry) latch.lock;
        if (!Intrinsics.areEqual(entry.currentEditor, latch)) {
            throw new IllegalStateException("Check failed.");
        }
        if (z && !entry.readable) {
            for (int i = 0; i < 2; i++) {
                boolean[] zArr = (boolean[]) latch.awaiters;
                zArr.getClass();
                if (!zArr[i]) {
                    latch.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!this.fileSystem.exists((Path) entry.dirtyFiles.get(i))) {
                    latch.abort();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            Path path = (Path) entry.dirtyFiles.get(i2);
            if (!z || entry.zombie) {
                _UtilCommonKt.deleteIfExists(this.fileSystem, path);
            } else if (this.fileSystem.exists(path)) {
                Path path2 = (Path) entry.cleanFiles.get(i2);
                this.fileSystem.atomicMove(path, path2);
                long j = entry.lengths[i2];
                Long l = (Long) this.fileSystem.metadata(path2).size;
                long longValue = l != null ? l.longValue() : 0L;
                entry.lengths[i2] = longValue;
                this.size = (this.size - j) + longValue;
            }
        }
        entry.currentEditor = null;
        if (entry.zombie) {
            removeEntry$okhttp(entry);
            return;
        }
        this.redundantOpCount++;
        RealBufferedSink realBufferedSink = this.journalWriter;
        realBufferedSink.getClass();
        if (!entry.readable && !z) {
            this.lruEntries.remove(entry.key);
            realBufferedSink.writeUtf8(REMOVE);
            realBufferedSink.writeByte(32);
            realBufferedSink.writeUtf8(entry.key);
            realBufferedSink.writeByte(10);
            realBufferedSink.flush();
            if (this.size <= this.maxSize || journalRebuildRequired()) {
                this.cleanupQueue.schedule(this.cleanupTask, 0L);
            }
        }
        entry.readable = true;
        realBufferedSink.writeUtf8(CLEAN);
        realBufferedSink.writeByte(32);
        realBufferedSink.writeUtf8(entry.key);
        for (long j2 : entry.lengths) {
            realBufferedSink.writeByte(32);
            realBufferedSink.writeDecimalLong(j2);
        }
        realBufferedSink.writeByte(10);
        if (z) {
            long j3 = this.nextSequenceNumber;
            this.nextSequenceNumber = 1 + j3;
            entry.sequenceNumber = j3;
        }
        realBufferedSink.flush();
        if (this.size <= this.maxSize) {
        }
        this.cleanupQueue.schedule(this.cleanupTask, 0L);
    }

    public final synchronized Latch edit(String str, long j) {
        str.getClass();
        initialize();
        checkNotClosed();
        validateKey(str);
        Entry entry = (Entry) this.lruEntries.get(str);
        if (j != -1 && (entry == null || entry.sequenceNumber != j)) {
            return null;
        }
        if ((entry != null ? entry.currentEditor : null) != null) {
            return null;
        }
        if (entry != null && entry.lockingSourceCount != 0) {
            return null;
        }
        if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
            RealBufferedSink realBufferedSink = this.journalWriter;
            realBufferedSink.getClass();
            realBufferedSink.writeUtf8(DIRTY);
            realBufferedSink.writeByte(32);
            realBufferedSink.writeUtf8(str);
            realBufferedSink.writeByte(10);
            realBufferedSink.flush();
            if (this.hasJournalErrors) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(this, str);
                this.lruEntries.put(str, entry);
            }
            Latch latch = new Latch(this, entry);
            entry.currentEditor = latch;
            return latch;
        }
        this.cleanupQueue.schedule(this.cleanupTask, 0L);
        return null;
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.initialized) {
            checkNotClosed();
            trimToSize();
            RealBufferedSink realBufferedSink = this.journalWriter;
            realBufferedSink.getClass();
            realBufferedSink.flush();
        }
    }

    public final synchronized Snapshot get(String str) {
        str.getClass();
        initialize();
        checkNotClosed();
        validateKey(str);
        Entry entry = (Entry) this.lruEntries.get(str);
        if (entry == null) {
            return null;
        }
        Snapshot snapshot$okhttp = entry.snapshot$okhttp();
        if (snapshot$okhttp == null) {
            return null;
        }
        this.redundantOpCount++;
        RealBufferedSink realBufferedSink = this.journalWriter;
        realBufferedSink.getClass();
        realBufferedSink.writeUtf8(READ);
        realBufferedSink.writeByte(32);
        realBufferedSink.writeUtf8(str);
        realBufferedSink.writeByte(10);
        if (journalRebuildRequired()) {
            this.cleanupQueue.schedule(this.cleanupTask, 0L);
        }
        return snapshot$okhttp;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0066 A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #3 {all -> 0x0027, blocks: (B:4:0x0003, B:9:0x000b, B:11:0x0015, B:14:0x0023, B:15:0x002a, B:16:0x002f, B:22:0x006c, B:28:0x0078, B:24:0x00bb, B:33:0x0083, B:36:0x00b4, B:39:0x00b8, B:40:0x00ba, B:50:0x0066, B:51:0x00c2, B:62:0x0055, B:59:0x0050, B:35:0x00aa, B:19:0x0041), top: B:3:0x0003, inners: #1, #2, #4, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c2 A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #3 {all -> 0x0027, blocks: (B:4:0x0003, B:9:0x000b, B:11:0x0015, B:14:0x0023, B:15:0x002a, B:16:0x002f, B:22:0x006c, B:28:0x0078, B:24:0x00bb, B:33:0x0083, B:36:0x00b4, B:39:0x00b8, B:40:0x00ba, B:50:0x0066, B:51:0x00c2, B:62:0x0055, B:59:0x0050, B:35:0x00aa, B:19:0x0041), top: B:3:0x0003, inners: #1, #2, #4, #8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void initialize() {
        /*
            r7 = this;
            java.lang.String r0 = "DiskLruCache "
            monitor-enter(r7)
            java.util.TimeZone r1 = okhttp3.internal._UtilJvmKt.UTC     // Catch: java.lang.Throwable -> L27
            boolean r1 = r7.initialized     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto Lb
            monitor-exit(r7)
            return
        Lb:
            okhttp3.internal.cache.DiskLruCache$fileSystem$1 r1 = r7.fileSystem     // Catch: java.lang.Throwable -> L27
            okio.Path r2 = r7.journalFileBackup     // Catch: java.lang.Throwable -> L27
            boolean r1 = r1.exists(r2)     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto L2f
            okhttp3.internal.cache.DiskLruCache$fileSystem$1 r1 = r7.fileSystem     // Catch: java.lang.Throwable -> L27
            okio.Path r2 = r7.journalFile     // Catch: java.lang.Throwable -> L27
            boolean r1 = r1.exists(r2)     // Catch: java.lang.Throwable -> L27
            okhttp3.internal.cache.DiskLruCache$fileSystem$1 r2 = r7.fileSystem
            okio.Path r3 = r7.journalFileBackup
            if (r1 == 0) goto L2a
            r2.delete$1(r3)     // Catch: java.lang.Throwable -> L27
            goto L2f
        L27:
            r0 = move-exception
            goto Lc3
        L2a:
            okio.Path r1 = r7.journalFile     // Catch: java.lang.Throwable -> L27
            r2.atomicMove(r3, r1)     // Catch: java.lang.Throwable -> L27
        L2f:
            okhttp3.internal.cache.DiskLruCache$fileSystem$1 r1 = r7.fileSystem     // Catch: java.lang.Throwable -> L27
            okio.Path r2 = r7.journalFileBackup     // Catch: java.lang.Throwable -> L27
            byte[] r3 = okhttp3.internal._UtilCommonKt.EMPTY_BYTE_ARRAY     // Catch: java.lang.Throwable -> L27
            r1.getClass()     // Catch: java.lang.Throwable -> L27
            r2.getClass()     // Catch: java.lang.Throwable -> L27
            r3 = 0
            okio.Sink r4 = r1.sink(r2, r3)     // Catch: java.lang.Throwable -> L27
            r5 = 1
            okio.FileSystem r6 = r1.delegate     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L59
            r6.delete(r2)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L59
            if (r4 == 0) goto L4b
            r4.close()     // Catch: java.lang.Throwable -> L4b
        L4b:
            r1 = r5
            goto L6c
        L4d:
            r6 = move-exception
            if (r4 == 0) goto L64
            r4.close()     // Catch: java.lang.Throwable -> L54
            goto L64
        L54:
            r4 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r6, r4)     // Catch: java.lang.Throwable -> L27
            goto L64
        L59:
            if (r4 == 0) goto L62
            r4.close()     // Catch: java.lang.Throwable -> L5f
            goto L62
        L5f:
            r4 = move-exception
        L60:
            r6 = r4
            goto L64
        L62:
            r4 = 0
            goto L60
        L64:
            if (r6 != 0) goto Lc2
            okio.FileSystem r1 = r1.delegate     // Catch: java.lang.Throwable -> L27
            r1.delete(r2)     // Catch: java.lang.Throwable -> L27
            r1 = r3
        L6c:
            r7.civilizedFileSystem = r1     // Catch: java.lang.Throwable -> L27
            okhttp3.internal.cache.DiskLruCache$fileSystem$1 r1 = r7.fileSystem     // Catch: java.lang.Throwable -> L27
            okio.Path r2 = r7.journalFile     // Catch: java.lang.Throwable -> L27
            boolean r1 = r1.exists(r2)     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto Lbb
            r7.readJournal()     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L82
            r7.processJournal()     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L82
            r7.initialized = r5     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L82
            monitor-exit(r7)
            return
        L82:
            r1 = move-exception
            okhttp3.internal.platform.Platform r2 = okhttp3.internal.platform.Platform.platform     // Catch: java.lang.Throwable -> L27
            okhttp3.internal.platform.Platform r2 = okhttp3.internal.platform.Platform.platform     // Catch: java.lang.Throwable -> L27
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L27
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L27
            okio.Path r0 = r7.directory     // Catch: java.lang.Throwable -> L27
            r4.append(r0)     // Catch: java.lang.Throwable -> L27
            java.lang.String r0 = " is corrupt: "
            r4.append(r0)     // Catch: java.lang.Throwable -> L27
            java.lang.String r0 = r1.getMessage()     // Catch: java.lang.Throwable -> L27
            r4.append(r0)     // Catch: java.lang.Throwable -> L27
            java.lang.String r0 = ", removing"
            r4.append(r0)     // Catch: java.lang.Throwable -> L27
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L27
            r4 = 5
            r2.log(r0, r4, r1)     // Catch: java.lang.Throwable -> L27
            r7.close()     // Catch: java.lang.Throwable -> Lb7
            okhttp3.internal.cache.DiskLruCache$fileSystem$1 r0 = r7.fileSystem     // Catch: java.lang.Throwable -> Lb7
            okio.Path r1 = r7.directory     // Catch: java.lang.Throwable -> Lb7
            okhttp3.internal._UtilCommonKt.deleteContents(r0, r1)     // Catch: java.lang.Throwable -> Lb7
            r7.closed = r3     // Catch: java.lang.Throwable -> L27
            goto Lbb
        Lb7:
            r0 = move-exception
            r7.closed = r3     // Catch: java.lang.Throwable -> L27
            throw r0     // Catch: java.lang.Throwable -> L27
        Lbb:
            r7.rebuildJournal$okhttp()     // Catch: java.lang.Throwable -> L27
            r7.initialized = r5     // Catch: java.lang.Throwable -> L27
            monitor-exit(r7)
            return
        Lc2:
            throw r6     // Catch: java.lang.Throwable -> L27
        Lc3:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L27
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.DiskLruCache.initialize():void");
    }

    public final boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    public final void processJournal() {
        Path path = this.journalFileTmp;
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.fileSystem;
        _UtilCommonKt.deleteIfExists(diskLruCache$fileSystem$1, path);
        Iterator it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            Entry entry = (Entry) next;
            int i = 0;
            if (entry.currentEditor == null) {
                while (i < 2) {
                    this.size += entry.lengths[i];
                    i++;
                }
            } else {
                entry.currentEditor = null;
                while (i < 2) {
                    _UtilCommonKt.deleteIfExists(diskLruCache$fileSystem$1, (Path) entry.cleanFiles.get(i));
                    _UtilCommonKt.deleteIfExists(diskLruCache$fileSystem$1, (Path) entry.dirtyFiles.get(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void readJournal() {
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.fileSystem;
        Path path = this.journalFile;
        RealBufferedSource buffer = Okio__OkioKt.buffer(diskLruCache$fileSystem$1.source(path));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict(Long.MAX_VALUE);
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict(Long.MAX_VALUE);
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict(Long.MAX_VALUE);
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict(Long.MAX_VALUE);
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict(Long.MAX_VALUE);
            if (!"libcore.io.DiskLruCache".equals(readUtf8LineStrict) || !"1".equals(readUtf8LineStrict2) || !Intrinsics.areEqual(String.valueOf(201105), readUtf8LineStrict3) || !Intrinsics.areEqual(String.valueOf(2), readUtf8LineStrict4) || readUtf8LineStrict5.length() > 0) {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + ']');
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(buffer.readUtf8LineStrict(Long.MAX_VALUE));
                    i++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    if (buffer.exhausted()) {
                        RealBufferedSink realBufferedSink = this.journalWriter;
                        if (realBufferedSink != null) {
                            _UtilCommonKt.closeQuietly(realBufferedSink);
                        }
                        diskLruCache$fileSystem$1.getClass();
                        path.getClass();
                        this.journalWriter = new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$1.appendingSink(path), new DiskLruCache$$ExternalSyntheticLambda0(29, this)));
                    } else {
                        rebuildJournal$okhttp();
                    }
                    try {
                        buffer.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                    if (th != null) {
                        throw th;
                    }
                    return;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                buffer.close();
            } catch (Throwable th3) {
                ExceptionsKt.addSuppressed(th, th3);
            }
        }
    }

    public final void readJournalLine(String str) {
        String substring;
        int indexOf$default = StringsKt.indexOf$default(str, ' ', 0, 6);
        if (indexOf$default == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected journal line: ".concat(str));
            return;
        }
        int i = indexOf$default + 1;
        int indexOf$default2 = StringsKt.indexOf$default(str, ' ', i, 4);
        LinkedHashMap linkedHashMap = this.lruEntries;
        if (indexOf$default2 == -1) {
            substring = str.substring(i);
            String str2 = REMOVE;
            if (indexOf$default == str2.length() && StringsKt__StringsJVMKt.startsWith(str, str2, false)) {
                linkedHashMap.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf$default2);
        }
        Entry entry = (Entry) linkedHashMap.get(substring);
        if (entry == null) {
            entry = new Entry(this, substring);
            linkedHashMap.put(substring, entry);
        }
        if (indexOf$default2 != -1) {
            String str3 = CLEAN;
            if (indexOf$default == str3.length() && StringsKt__StringsJVMKt.startsWith(str, str3, false)) {
                List split$default = StringsKt.split$default(str.substring(indexOf$default2 + 1), new char[]{' '});
                entry.readable = true;
                entry.currentEditor = null;
                int size = split$default.size();
                entry.this$0.getClass();
                if (size != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$4("unexpected journal line: ", split$default);
                    return;
                }
                try {
                    int size2 = split$default.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        entry.lengths[i2] = Long.parseLong((String) split$default.get(i2));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$4("unexpected journal line: ", split$default);
                    return;
                }
            }
        }
        if (indexOf$default2 == -1) {
            String str4 = DIRTY;
            if (indexOf$default == str4.length() && StringsKt__StringsJVMKt.startsWith(str, str4, false)) {
                entry.currentEditor = new Latch(this, entry);
                return;
            }
        }
        if (indexOf$default2 == -1) {
            String str5 = READ;
            if (indexOf$default == str5.length() && StringsKt__StringsJVMKt.startsWith(str, str5, false)) {
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected journal line: ".concat(str));
    }

    public final synchronized void rebuildJournal$okhttp() {
        Throwable th;
        try {
            RealBufferedSink realBufferedSink = this.journalWriter;
            if (realBufferedSink != null) {
                realBufferedSink.close();
            }
            RealBufferedSink buffer = Okio__OkioKt.buffer(this.fileSystem.sink(this.journalFileTmp, false));
            try {
                buffer.writeUtf8("libcore.io.DiskLruCache");
                buffer.writeByte(10);
                buffer.writeUtf8("1");
                buffer.writeByte(10);
                buffer.writeDecimalLong(201105L);
                buffer.writeByte(10);
                buffer.writeDecimalLong(2L);
                buffer.writeByte(10);
                buffer.writeByte(10);
                for (Object obj : this.lruEntries.values()) {
                    obj.getClass();
                    Entry entry = (Entry) obj;
                    if (entry.currentEditor != null) {
                        buffer.writeUtf8(DIRTY);
                        buffer.writeByte(32);
                        buffer.writeUtf8(entry.key);
                        buffer.writeByte(10);
                    } else {
                        buffer.writeUtf8(CLEAN);
                        buffer.writeByte(32);
                        buffer.writeUtf8(entry.key);
                        for (long j : entry.lengths) {
                            buffer.writeByte(32);
                            buffer.writeDecimalLong(j);
                        }
                        buffer.writeByte(10);
                    }
                }
                try {
                    buffer.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    buffer.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
                th = th3;
            }
            if (th != null) {
                throw th;
            }
            boolean exists = this.fileSystem.exists(this.journalFile);
            DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.fileSystem;
            if (exists) {
                diskLruCache$fileSystem$1.atomicMove(this.journalFile, this.journalFileBackup);
                this.fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
                _UtilCommonKt.deleteIfExists(this.fileSystem, this.journalFileBackup);
            } else {
                diskLruCache$fileSystem$1.atomicMove(this.journalFileTmp, this.journalFile);
            }
            RealBufferedSink realBufferedSink2 = this.journalWriter;
            if (realBufferedSink2 != null) {
                _UtilCommonKt.closeQuietly(realBufferedSink2);
            }
            DiskLruCache$fileSystem$1 diskLruCache$fileSystem$12 = this.fileSystem;
            Path path = this.journalFile;
            diskLruCache$fileSystem$12.getClass();
            path.getClass();
            this.journalWriter = new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$12.appendingSink(path), new DiskLruCache$$ExternalSyntheticLambda0(29, this)));
            this.hasJournalErrors = false;
            this.mostRecentRebuildFailed = false;
        } catch (Throwable th5) {
            throw th5;
        }
    }

    public final void removeEntry$okhttp(Entry entry) {
        RealBufferedSink realBufferedSink;
        String str = entry.key;
        if (!this.civilizedFileSystem) {
            if (entry.lockingSourceCount > 0 && (realBufferedSink = this.journalWriter) != null) {
                realBufferedSink.writeUtf8(DIRTY);
                realBufferedSink.writeByte(32);
                realBufferedSink.writeUtf8(str);
                realBufferedSink.writeByte(10);
                realBufferedSink.flush();
            }
            if (entry.lockingSourceCount > 0 || entry.currentEditor != null) {
                entry.zombie = true;
                return;
            }
        }
        Latch latch = entry.currentEditor;
        if (latch != null) {
            latch.detach$okhttp();
        }
        for (int i = 0; i < 2; i++) {
            _UtilCommonKt.deleteIfExists(this.fileSystem, (Path) entry.cleanFiles.get(i));
            long j = this.size;
            long[] jArr = entry.lengths;
            this.size = j - jArr[i];
            jArr[i] = 0;
        }
        this.redundantOpCount++;
        RealBufferedSink realBufferedSink2 = this.journalWriter;
        if (realBufferedSink2 != null) {
            realBufferedSink2.writeUtf8(REMOVE);
            realBufferedSink2.writeByte(32);
            realBufferedSink2.writeUtf8(str);
            realBufferedSink2.writeByte(10);
        }
        this.lruEntries.remove(str);
        if (journalRebuildRequired()) {
            this.cleanupQueue.schedule(this.cleanupTask, 0L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        removeEntry$okhttp(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void trimToSize() {
        /*
            r4 = this;
        L0:
            long r0 = r4.size
            long r2 = r4.maxSize
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L2a
            java.util.LinkedHashMap r0 = r4.lruEntries
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L12:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L29
            java.lang.Object r1 = r0.next()
            r1.getClass()
            okhttp3.internal.cache.DiskLruCache$Entry r1 = (okhttp3.internal.cache.DiskLruCache.Entry) r1
            boolean r2 = r1.zombie
            if (r2 != 0) goto L12
            r4.removeEntry$okhttp(r1)
            goto L0
        L29:
            return
        L2a:
            r0 = 0
            r4.mostRecentTrimFailed = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.DiskLruCache.trimToSize():void");
    }
}
