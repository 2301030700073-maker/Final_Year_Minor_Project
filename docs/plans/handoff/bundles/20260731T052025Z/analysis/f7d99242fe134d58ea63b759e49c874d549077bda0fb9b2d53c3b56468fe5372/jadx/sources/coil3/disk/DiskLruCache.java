package coil3.disk;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.Coroutines_nonJsCommonKt;
import coil3.util.FileSystemsKt;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.BufferedSink;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiskLruCache implements AutoCloseable {
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    public static final String JOURNAL_FILE = "journal";
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    public static final String JOURNAL_FILE_TMP = "journal.tmp";
    public static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    public static final String VERSION = "1";
    private final int appVersion;
    private final CoroutineScope cleanupScope;
    private boolean closed;
    private final Path directory;
    private final DiskLruCache$fileSystem$1 fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    private final Path journalFile;
    private final Path journalFileBackup;
    private final Path journalFileTmp;
    private BufferedSink journalWriter;
    private final Object lock;
    private final Map<String, Entry> lruEntries;
    private final long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private int operationsSinceRewrite;
    private long size;
    private final int valueCount;
    public static final Companion Companion = new Companion(null);
    private static final Regex LEGAL_KEY_PATTERN = new Regex("[a-z0-9_-]{1,120}");

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Editor {
        private boolean closed;
        private final Entry entry;
        private final boolean[] written;

        public Editor(Entry entry) {
            this.entry = entry;
            this.written = new boolean[DiskLruCache.this.valueCount];
        }

        private final void complete(boolean z) {
            Object obj = DiskLruCache.this.lock;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                try {
                    if (this.closed) {
                        throw new IllegalStateException("editor is closed");
                    }
                    if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                        diskLruCache.completeEdit(this, z);
                    }
                    this.closed = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void abort() {
            complete(false);
        }

        public final void commit() {
            complete(true);
        }

        public final Snapshot commitAndGet() {
            Snapshot snapshot;
            Object obj = DiskLruCache.this.lock;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                commit();
                snapshot = diskLruCache.get(this.entry.getKey());
            }
            return snapshot;
        }

        public final void detach() {
            if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                this.entry.setZombie(true);
            }
        }

        public final Path file(int i) {
            Path path;
            Object obj = DiskLruCache.this.lock;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                if (this.closed) {
                    throw new IllegalStateException("editor is closed");
                }
                this.written[i] = true;
                Path path2 = this.entry.getDirtyFiles().get(i);
                FileSystemsKt.createFile$default(diskLruCache.fileSystem, path2, false, 2, null);
                path = path2;
            }
            return path;
        }

        public final Entry getEntry() {
            return this.entry;
        }

        public final boolean[] getWritten() {
            return this.written;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Entry {
        private final ArrayList<Path> cleanFiles;
        private Editor currentEditor;
        private final ArrayList<Path> dirtyFiles;
        private final String key;
        private final long[] lengths;
        private int lockingSnapshotCount;
        private boolean readable;
        private boolean zombie;

        public Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.valueCount];
            this.cleanFiles = new ArrayList<>(DiskLruCache.this.valueCount);
            this.dirtyFiles = new ArrayList<>(DiskLruCache.this.valueCount);
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            int i = DiskLruCache.this.valueCount;
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(i2);
                this.cleanFiles.add(DiskLruCache.this.directory.resolve(sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(DiskLruCache.this.directory.resolve(sb.toString()));
                sb.setLength(length);
            }
        }

        public final ArrayList<Path> getCleanFiles() {
            return this.cleanFiles;
        }

        public final Editor getCurrentEditor() {
            return this.currentEditor;
        }

        public final ArrayList<Path> getDirtyFiles() {
            return this.dirtyFiles;
        }

        public final String getKey() {
            return this.key;
        }

        public final long[] getLengths() {
            return this.lengths;
        }

        public final int getLockingSnapshotCount() {
            return this.lockingSnapshotCount;
        }

        public final boolean getReadable() {
            return this.readable;
        }

        public final boolean getZombie() {
            return this.zombie;
        }

        public final void setCurrentEditor(Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLengths(List<String> list) {
            if (list.size() != DiskLruCache.this.valueCount) {
                UriKt$$ExternalSyntheticBUOutline0.m(list, "unexpected journal line: ");
                return;
            }
            try {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    this.lengths[i] = Long.parseLong(list.get(i));
                }
            } catch (NumberFormatException unused) {
                UriKt$$ExternalSyntheticBUOutline0.m(list, "unexpected journal line: ");
            }
        }

        public final void setLockingSnapshotCount(int i) {
            this.lockingSnapshotCount = i;
        }

        public final void setReadable(boolean z) {
            this.readable = z;
        }

        public final void setZombie(boolean z) {
            this.zombie = z;
        }

        public final Snapshot snapshot() {
            if (!this.readable || this.currentEditor != null || this.zombie) {
                return null;
            }
            ArrayList<Path> arrayList = this.cleanFiles;
            DiskLruCache diskLruCache = DiskLruCache.this;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!diskLruCache.fileSystem.exists(arrayList.get(i))) {
                    try {
                        diskLruCache.removeEntry(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
            }
            this.lockingSnapshotCount++;
            return DiskLruCache.this.new Snapshot(this);
        }

        public final void writeLengths(BufferedSink bufferedSink) {
            for (long j : this.lengths) {
                bufferedSink.writeByte(32).writeDecimalLong(j);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Snapshot implements AutoCloseable {
        private boolean closed;
        private final Entry entry;

        public Snapshot(Entry entry) {
            this.entry = entry;
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Object obj = DiskLruCache.this.lock;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                this.entry.setLockingSnapshotCount(r2.getLockingSnapshotCount() - 1);
                if (this.entry.getLockingSnapshotCount() == 0 && this.entry.getZombie()) {
                    diskLruCache.removeEntry(this.entry);
                }
            }
        }

        public final Editor closeAndEdit() {
            Editor edit;
            Object obj = DiskLruCache.this.lock;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                close();
                edit = diskLruCache.edit(this.entry.getKey());
            }
            return edit;
        }

        public final Path file(int i) {
            if (!this.closed) {
                return this.entry.getCleanFiles().get(i);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("snapshot is closed");
            return null;
        }

        public final Entry getEntry() {
            return this.entry;
        }
    }

    public DiskLruCache(FileSystem fileSystem, Path path, CoroutineContext coroutineContext, long j, int i, int i2) {
        this.directory = path;
        this.maxSize = j;
        this.appVersion = i;
        this.valueCount = i2;
        if (j <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("maxSize <= 0");
            throw null;
        }
        if (i2 <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("valueCount <= 0");
            throw null;
        }
        this.journalFile = path.resolve(JOURNAL_FILE);
        this.journalFileTmp = path.resolve(JOURNAL_FILE_TMP);
        this.journalFileBackup = path.resolve(JOURNAL_FILE_BACKUP);
        this.lruEntries = Collections_jvmCommonKt.LruMutableMap$default(0, 0.0f, 3, null);
        CoroutineContext plus = coroutineContext.plus(JobKt.SupervisorJob$default());
        CoroutineDispatcher dispatcher = coil3.util.UtilsKt.getDispatcher(coroutineContext);
        dispatcher = dispatcher == null ? Coroutines_nonJsCommonKt.ioCoroutineDispatcher() : dispatcher;
        CoroutineDispatcher.Key key = CoroutineDispatcher.Key;
        this.cleanupScope = JobKt.CoroutineScope(plus.plus(dispatcher.limitedParallelism(1)));
        this.lock = new Object();
        this.fileSystem = new DiskLruCache$fileSystem$1(fileSystem);
    }

    private final void checkNotClosed() {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void completeEdit(Editor editor, boolean z) {
        synchronized (this.lock) {
            Entry entry = editor.getEntry();
            if (!Intrinsics.areEqual(entry.getCurrentEditor(), editor)) {
                throw new IllegalStateException("Check failed.");
            }
            if (!z || entry.getZombie()) {
                int i = this.valueCount;
                for (int i2 = 0; i2 < i; i2++) {
                    this.fileSystem.delete(entry.getDirtyFiles().get(i2));
                }
            } else {
                int i3 = this.valueCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    if (editor.getWritten()[i4] && !this.fileSystem.exists(entry.getDirtyFiles().get(i4))) {
                        editor.abort();
                        return;
                    }
                }
                int i5 = this.valueCount;
                for (int i6 = 0; i6 < i5; i6++) {
                    Path path = entry.getDirtyFiles().get(i6);
                    Path path2 = entry.getCleanFiles().get(i6);
                    boolean exists = this.fileSystem.exists(path);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.fileSystem;
                    if (exists) {
                        diskLruCache$fileSystem$1.atomicMove(path, path2);
                    } else {
                        FileSystemsKt.createFile$default(diskLruCache$fileSystem$1, entry.getCleanFiles().get(i6), false, 2, null);
                    }
                    long j = entry.getLengths()[i6];
                    Long l = this.fileSystem.metadata(path2).size;
                    long longValue = l != null ? l.longValue() : 0L;
                    entry.getLengths()[i6] = longValue;
                    this.size = (this.size - j) + longValue;
                }
            }
            entry.setCurrentEditor(null);
            if (entry.getZombie()) {
                removeEntry(entry);
                return;
            }
            this.operationsSinceRewrite++;
            BufferedSink bufferedSink = this.journalWriter;
            bufferedSink.getClass();
            if (!z && !entry.getReadable()) {
                this.lruEntries.remove(entry.getKey());
                bufferedSink.writeUtf8(REMOVE);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(entry.getKey());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.size <= this.maxSize || journalRewriteRequired()) {
                    launchCleanup();
                }
            }
            entry.setReadable(true);
            bufferedSink.writeUtf8(CLEAN);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(entry.getKey());
            entry.writeLengths(bufferedSink);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
            if (this.size <= this.maxSize) {
            }
            launchCleanup();
        }
    }

    private final void delete() {
        close();
        FileSystemsKt.deleteContents(this.fileSystem, this.directory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean journalRewriteRequired() {
        return this.operationsSinceRewrite >= 2000;
    }

    private final void launchCleanup() {
        JobKt.launch$default(this.cleanupScope, null, null, new DiskLruCache$launchCleanup$1(this, null), 3);
    }

    private final BufferedSink newJournalWriter() {
        return new RealBufferedSink(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new DiskLruCache$$ExternalSyntheticLambda0(0, this)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit newJournalWriter$lambda$0(DiskLruCache diskLruCache, IOException iOException) {
        diskLruCache.hasJournalErrors = true;
        return Unit.INSTANCE;
    }

    private final void processJournal() {
        Iterator<Entry> it = this.lruEntries.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.getCurrentEditor() == null) {
                int i2 = this.valueCount;
                while (i < i2) {
                    j += next.getLengths()[i];
                    i++;
                }
            } else {
                next.setCurrentEditor(null);
                int i3 = this.valueCount;
                while (i < i3) {
                    this.fileSystem.delete(next.getCleanFiles().get(i));
                    this.fileSystem.delete(next.getDirtyFiles().get(i));
                    i++;
                }
                it.remove();
            }
        }
        this.size = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void readJournal() {
        /*
            r11 = this;
            java.lang.String r0 = ", "
            java.lang.String r1 = "unexpected journal header: ["
            coil3.disk.DiskLruCache$fileSystem$1 r2 = r11.fileSystem
            okio.Path r3 = r11.journalFile
            okio.Source r2 = r2.source(r3)
            okio.RealBufferedSource r2 = okio.Okio.buffer(r2)
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            java.lang.String r5 = r2.readUtf8LineStrict(r3)     // Catch: java.lang.Throwable -> L62
            java.lang.String r6 = r2.readUtf8LineStrict(r3)     // Catch: java.lang.Throwable -> L62
            java.lang.String r7 = r2.readUtf8LineStrict(r3)     // Catch: java.lang.Throwable -> L62
            java.lang.String r8 = r2.readUtf8LineStrict(r3)     // Catch: java.lang.Throwable -> L62
            java.lang.String r9 = r2.readUtf8LineStrict(r3)     // Catch: java.lang.Throwable -> L62
            java.lang.String r10 = "libcore.io.DiskLruCache"
            boolean r10 = r10.equals(r5)     // Catch: java.lang.Throwable -> L62
            if (r10 == 0) goto L84
            java.lang.String r10 = "1"
            boolean r10 = r10.equals(r6)     // Catch: java.lang.Throwable -> L62
            if (r10 == 0) goto L84
            int r10 = r11.appVersion     // Catch: java.lang.Throwable -> L62
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L62
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r10, r7)     // Catch: java.lang.Throwable -> L62
            if (r10 == 0) goto L84
            int r10 = r11.valueCount     // Catch: java.lang.Throwable -> L62
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L62
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r10, r8)     // Catch: java.lang.Throwable -> L62
            if (r10 == 0) goto L84
            int r10 = r9.length()     // Catch: java.lang.Throwable -> L62
            if (r10 > 0) goto L84
            r0 = 0
        L58:
            java.lang.String r1 = r2.readUtf8LineStrict(r3)     // Catch: java.lang.Throwable -> L62 java.io.EOFException -> L64
            r11.readJournalLine(r1)     // Catch: java.lang.Throwable -> L62 java.io.EOFException -> L64
            int r0 = r0 + 1
            goto L58
        L62:
            r11 = move-exception
            goto Lb3
        L64:
            java.util.Map<java.lang.String, coil3.disk.DiskLruCache$Entry> r1 = r11.lruEntries     // Catch: java.lang.Throwable -> L62
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L62
            int r0 = r0 - r1
            r11.operationsSinceRewrite = r0     // Catch: java.lang.Throwable -> L62
            boolean r0 = r2.exhausted()     // Catch: java.lang.Throwable -> L62
            if (r0 != 0) goto L77
            r11.writeJournal()     // Catch: java.lang.Throwable -> L62
            goto L7d
        L77:
            okio.BufferedSink r0 = r11.newJournalWriter()     // Catch: java.lang.Throwable -> L62
            r11.journalWriter = r0     // Catch: java.lang.Throwable -> L62
        L7d:
            r2.close()     // Catch: java.lang.Throwable -> L82
            r11 = 0
            goto Lbb
        L82:
            r11 = move-exception
            goto Lbb
        L84:
            java.io.IOException r11 = new java.io.IOException     // Catch: java.lang.Throwable -> L62
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L62
            r3.append(r5)     // Catch: java.lang.Throwable -> L62
            r3.append(r0)     // Catch: java.lang.Throwable -> L62
            r3.append(r6)     // Catch: java.lang.Throwable -> L62
            r3.append(r0)     // Catch: java.lang.Throwable -> L62
            r3.append(r7)     // Catch: java.lang.Throwable -> L62
            r3.append(r0)     // Catch: java.lang.Throwable -> L62
            r3.append(r8)     // Catch: java.lang.Throwable -> L62
            r3.append(r0)     // Catch: java.lang.Throwable -> L62
            r3.append(r9)     // Catch: java.lang.Throwable -> L62
            java.lang.String r0 = "]"
            r3.append(r0)     // Catch: java.lang.Throwable -> L62
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L62
            r11.<init>(r0)     // Catch: java.lang.Throwable -> L62
            throw r11     // Catch: java.lang.Throwable -> L62
        Lb3:
            r2.close()     // Catch: java.lang.Throwable -> Lb7
            goto Lbb
        Lb7:
            r0 = move-exception
            kotlin.ResultKt.addSuppressed(r11, r0)
        Lbb:
            if (r11 != 0) goto Lbe
            return
        Lbe:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.disk.DiskLruCache.readJournal():void");
    }

    private final void readJournalLine(String str) {
        String substring;
        int indexOf$default = StringsKt.indexOf$default(str, ' ', 0, 6);
        if (indexOf$default == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("unexpected journal line: ".concat(str));
            return;
        }
        int i = indexOf$default + 1;
        int indexOf$default2 = StringsKt.indexOf$default(str, ' ', i, 4);
        if (indexOf$default2 == -1) {
            substring = str.substring(i);
            if (indexOf$default == 6 && StringsKt__StringsJVMKt.startsWith(str, REMOVE, false)) {
                this.lruEntries.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf$default2);
        }
        Map<String, Entry> map = this.lruEntries;
        Entry entry = map.get(substring);
        if (entry == null) {
            entry = new Entry(substring);
            map.put(substring, entry);
        }
        Entry entry2 = entry;
        if (indexOf$default2 != -1 && indexOf$default == 5 && StringsKt__StringsJVMKt.startsWith(str, CLEAN, false)) {
            List<String> split$default = StringsKt.split$default(str.substring(indexOf$default2 + 1), new char[]{' '});
            entry2.setReadable(true);
            entry2.setCurrentEditor(null);
            entry2.setLengths(split$default);
            return;
        }
        if (indexOf$default2 == -1 && indexOf$default == 5 && StringsKt__StringsJVMKt.startsWith(str, DIRTY, false)) {
            entry2.setCurrentEditor(new Editor(entry2));
        } else {
            if (indexOf$default2 == -1 && indexOf$default == 4 && StringsKt__StringsJVMKt.startsWith(str, READ, false)) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("unexpected journal line: ".concat(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeEntry(Entry entry) {
        BufferedSink bufferedSink;
        if (entry.getLockingSnapshotCount() > 0 && (bufferedSink = this.journalWriter) != null) {
            bufferedSink.writeUtf8(DIRTY);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(entry.getKey());
            bufferedSink.writeByte(10);
            bufferedSink.flush();
        }
        if (entry.getLockingSnapshotCount() > 0 || entry.getCurrentEditor() != null) {
            entry.setZombie(true);
            return;
        }
        int i = this.valueCount;
        for (int i2 = 0; i2 < i; i2++) {
            this.fileSystem.delete(entry.getCleanFiles().get(i2));
            this.size -= entry.getLengths()[i2];
            entry.getLengths()[i2] = 0;
        }
        this.operationsSinceRewrite++;
        BufferedSink bufferedSink2 = this.journalWriter;
        if (bufferedSink2 != null) {
            bufferedSink2.writeUtf8(REMOVE);
            bufferedSink2.writeByte(32);
            bufferedSink2.writeUtf8(entry.getKey());
            bufferedSink2.writeByte(10);
            bufferedSink2.flush();
        }
        this.lruEntries.remove(entry.getKey());
        if (journalRewriteRequired()) {
            launchCleanup();
        }
    }

    private final boolean removeOldestEntry() {
        for (Entry entry : this.lruEntries.values()) {
            if (!entry.getZombie()) {
                removeEntry(entry);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trimToSize() {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }

    private final void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.matches(str)) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeJournal() {
        Throwable th;
        synchronized (this.lock) {
            try {
                BufferedSink bufferedSink = this.journalWriter;
                if (bufferedSink != null) {
                    bufferedSink.close();
                }
                RealBufferedSink buffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp, false));
                try {
                    buffer.writeUtf8(MAGIC);
                    buffer.writeByte(10);
                    buffer.writeUtf8(VERSION);
                    buffer.writeByte(10);
                    buffer.writeDecimalLong(this.appVersion);
                    buffer.writeByte(10);
                    buffer.writeDecimalLong(this.valueCount);
                    buffer.writeByte(10);
                    buffer.writeByte(10);
                    for (Entry entry : this.lruEntries.values()) {
                        if (entry.getCurrentEditor() != null) {
                            buffer.writeUtf8(DIRTY);
                            buffer.writeByte(32);
                            buffer.writeUtf8(entry.getKey());
                            buffer.writeByte(10);
                        } else {
                            buffer.writeUtf8(CLEAN);
                            buffer.writeByte(32);
                            buffer.writeUtf8(entry.getKey());
                            entry.writeLengths(buffer);
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
                        ResultKt.addSuppressed(th3, th4);
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
                    this.fileSystem.delete(this.journalFileBackup);
                } else {
                    diskLruCache$fileSystem$1.atomicMove(this.journalFileTmp, this.journalFile);
                }
                this.journalWriter = newJournalWriter();
                this.operationsSinceRewrite = 0;
                this.hasJournalErrors = false;
                this.mostRecentRebuildFailed = false;
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.initialized && !this.closed) {
                    for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[0])) {
                        Editor currentEditor = entry.getCurrentEditor();
                        if (currentEditor != null) {
                            currentEditor.detach();
                        }
                    }
                    trimToSize();
                    JobKt.cancel(this.cleanupScope, (CancellationException) null);
                    BufferedSink bufferedSink = this.journalWriter;
                    bufferedSink.getClass();
                    bufferedSink.close();
                    this.journalWriter = null;
                    this.closed = true;
                    return;
                }
                this.closed = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Editor edit(String str) {
        synchronized (this.lock) {
            checkNotClosed();
            validateKey(str);
            initialize();
            Entry entry = this.lruEntries.get(str);
            if ((entry != null ? entry.getCurrentEditor() : null) != null) {
                return null;
            }
            if (entry != null && entry.getLockingSnapshotCount() != 0) {
                return null;
            }
            if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
                BufferedSink bufferedSink = this.journalWriter;
                bufferedSink.getClass();
                bufferedSink.writeUtf8(DIRTY);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(str);
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.hasJournalErrors) {
                    return null;
                }
                if (entry == null) {
                    entry = new Entry(str);
                    this.lruEntries.put(str, entry);
                }
                Editor editor = new Editor(entry);
                entry.setCurrentEditor(editor);
                return editor;
            }
            launchCleanup();
            return null;
        }
    }

    public final void evictAll() {
        synchronized (this.lock) {
            try {
                initialize();
                for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[0])) {
                    removeEntry(entry);
                }
                this.mostRecentTrimFailed = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void flush() {
        synchronized (this.lock) {
            if (this.initialized) {
                checkNotClosed();
                trimToSize();
                BufferedSink bufferedSink = this.journalWriter;
                bufferedSink.getClass();
                bufferedSink.flush();
            }
        }
    }

    public final Snapshot get(String str) {
        Snapshot snapshot;
        synchronized (this.lock) {
            checkNotClosed();
            validateKey(str);
            initialize();
            Entry entry = this.lruEntries.get(str);
            if (entry != null && (snapshot = entry.snapshot()) != null) {
                this.operationsSinceRewrite++;
                BufferedSink bufferedSink = this.journalWriter;
                bufferedSink.getClass();
                bufferedSink.writeUtf8(READ);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(str);
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (journalRewriteRequired()) {
                    launchCleanup();
                }
                return snapshot;
            }
            return null;
        }
    }

    public final void initialize() {
        synchronized (this.lock) {
            try {
                if (this.initialized) {
                    return;
                }
                this.fileSystem.delete(this.journalFileTmp);
                if (this.fileSystem.exists(this.journalFileBackup)) {
                    boolean exists = this.fileSystem.exists(this.journalFile);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.fileSystem;
                    if (exists) {
                        diskLruCache$fileSystem$1.delete(this.journalFileBackup);
                    } else {
                        diskLruCache$fileSystem$1.atomicMove(this.journalFileBackup, this.journalFile);
                    }
                }
                if (this.fileSystem.exists(this.journalFile)) {
                    try {
                        readJournal();
                        processJournal();
                        this.initialized = true;
                        return;
                    } catch (IOException unused) {
                        try {
                            delete();
                            this.closed = false;
                        } catch (Throwable th) {
                            this.closed = false;
                            throw th;
                        }
                    }
                }
                writeJournal();
                this.initialized = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean remove(String str) {
        synchronized (this.lock) {
            checkNotClosed();
            validateKey(str);
            initialize();
            Entry entry = this.lruEntries.get(str);
            if (entry == null) {
                return false;
            }
            removeEntry(entry);
            if (this.size <= this.maxSize) {
                this.mostRecentTrimFailed = false;
            }
            return true;
        }
    }

    public final long size() {
        long j;
        synchronized (this.lock) {
            initialize();
            j = this.size;
        }
        return j;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ void getJOURNAL_FILE$coil_core$annotations() {
        }

        public static /* synthetic */ void getJOURNAL_FILE_BACKUP$coil_core$annotations() {
        }

        public static /* synthetic */ void getJOURNAL_FILE_TMP$coil_core$annotations() {
        }

        public static /* synthetic */ void getMAGIC$coil_core$annotations() {
        }

        public static /* synthetic */ void getVERSION$coil_core$annotations() {
        }
    }
}
