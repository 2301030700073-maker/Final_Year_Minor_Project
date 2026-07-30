package com.facebook.internal;

import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.google.android.gms.common.api.Api;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3206kJ;
import defpackage.C3548q7;
import defpackage.C3756th;
import defpackage.EH;
import defpackage.EnumC0658Zq;
import defpackage.FE;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public final class FileLruCache {
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    private final Condition condition;
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private final AtomicLong lastClearCacheTime;
    private final Limits limits;
    private final ReentrantLock lock;
    private final String tag;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "FileLruCache";
    private static final AtomicLong bufferIndex = new AtomicLong();

    public static final class BufferFile {
        private static final String FILE_NAME_PREFIX = "buffer";
        public static final BufferFile INSTANCE = new BufferFile();
        private static final FilenameFilter filterExcludeBufferFiles = new Cdo(0);
        private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.if
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m5425filterExcludeNonBufferFiles$lambda1;
                m5425filterExcludeNonBufferFiles$lambda1 = FileLruCache.BufferFile.m5425filterExcludeNonBufferFiles$lambda1(file, str);
                return m5425filterExcludeNonBufferFiles$lambda1;
            }
        };

        private BufferFile() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: filterExcludeBufferFiles$lambda-0, reason: not valid java name */
        public static final boolean m5424filterExcludeBufferFiles$lambda0(File file, String str) {
            C0173Do.m399new(str, "filename");
            return !BF.j(str, FILE_NAME_PREFIX);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: filterExcludeNonBufferFiles$lambda-1, reason: not valid java name */
        public static final boolean m5425filterExcludeNonBufferFiles$lambda1(File file, String str) {
            C0173Do.m399new(str, "filename");
            return BF.j(str, FILE_NAME_PREFIX);
        }

        public final void deleteAll(File file) {
            C0173Do.m401try(file, "root");
            File[] listFiles = file.listFiles(excludeNonBufferFiles());
            if (listFiles != null) {
                int length = listFiles.length;
                int i = 0;
                while (i < length) {
                    File file2 = listFiles[i];
                    i++;
                    file2.delete();
                }
            }
        }

        public final FilenameFilter excludeBufferFiles() {
            return filterExcludeBufferFiles;
        }

        public final FilenameFilter excludeNonBufferFiles() {
            return filterExcludeNonBufferFiles;
        }

        public final File newFile(File file) {
            return new File(file, C0173Do.m397goto(Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()), FILE_NAME_PREFIX));
        }
    }

    public static final class CloseCallbackOutputStream extends OutputStream {
        private final StreamCloseCallback callback;
        private final OutputStream innerStream;

        public CloseCallbackOutputStream(OutputStream outputStream, StreamCloseCallback streamCloseCallback) {
            C0173Do.m401try(outputStream, "innerStream");
            C0173Do.m401try(streamCloseCallback, "callback");
            this.innerStream = outputStream;
            this.callback = streamCloseCallback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.innerStream.close();
            } finally {
                this.callback.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            this.innerStream.flush();
        }

        public final StreamCloseCallback getCallback() {
            return this.callback;
        }

        public final OutputStream getInnerStream() {
            return this.innerStream;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C0173Do.m401try(bArr, "buffer");
            this.innerStream.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            C0173Do.m401try(bArr, "buffer");
            this.innerStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.innerStream.write(i);
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final String getTAG() {
            return FileLruCache.TAG;
        }
    }

    public static final class Limits {
        private int byteCount = 1048576;
        private int fileCount = 1024;

        public final int getByteCount() {
            return this.byteCount;
        }

        public final int getFileCount() {
            return this.fileCount;
        }

        public final void setByteCount(int i) {
            if (i < 0) {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            }
            this.byteCount = i;
        }

        public final void setFileCount(int i) {
            if (i < 0) {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            }
            this.fileCount = i;
        }
    }

    public static final class ModifiedFile implements Comparable<ModifiedFile> {
        public static final Companion Companion = new Companion(null);
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }
        }

        public ModifiedFile(File file) {
            C0173Do.m401try(file, "file");
            this.file = file;
            this.modified = file.lastModified();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ModifiedFile) && compareTo((ModifiedFile) obj) == 0;
        }

        public final File getFile() {
            return this.file;
        }

        public final long getModified() {
            return this.modified;
        }

        public int hashCode() {
            return ((this.file.hashCode() + 1073) * HASH_MULTIPLIER) + ((int) (this.modified % Api.BaseClientBuilder.API_PRIORITY_OTHER));
        }

        @Override // java.lang.Comparable
        public int compareTo(ModifiedFile modifiedFile) {
            C0173Do.m401try(modifiedFile, "another");
            long j = this.modified;
            long j2 = modifiedFile.modified;
            if (j < j2) {
                return -1;
            }
            if (j > j2) {
                return 1;
            }
            return this.file.compareTo(modifiedFile.file);
        }
    }

    public interface StreamCloseCallback {
        void onClose();
    }

    public static final class StreamHeader {
        private static final int HEADER_VERSION = 0;
        public static final StreamHeader INSTANCE = new StreamHeader();

        private StreamHeader() {
        }

        public final JSONObject readHeader(InputStream inputStream) {
            C0173Do.m401try(inputStream, "stream");
            if (inputStream.read() != 0) {
                return null;
            }
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                EnumC0658Zq enumC0658Zq = EnumC0658Zq.CACHE;
                if (i2 >= 3) {
                    byte[] bArr = new byte[i3];
                    while (i < i3) {
                        int read = inputStream.read(bArr, i, i3 - i);
                        if (read < 1) {
                            Logger.Companion companion = Logger.Companion;
                            String tag = FileLruCache.Companion.getTAG();
                            C0173Do.m399new(tag, "TAG");
                            companion.log(enumC0658Zq, tag, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + i3);
                            return null;
                        }
                        i += read;
                    }
                    try {
                        Object nextValue = new JSONTokener(new String(bArr, C3548q7.f15043do)).nextValue();
                        if (nextValue instanceof JSONObject) {
                            return (JSONObject) nextValue;
                        }
                        Logger.Companion companion2 = Logger.Companion;
                        String tag2 = FileLruCache.Companion.getTAG();
                        C0173Do.m399new(tag2, "TAG");
                        companion2.log(enumC0658Zq, tag2, C0173Do.m397goto(nextValue.getClass().getCanonicalName(), "readHeader: expected JSONObject, got "));
                        return null;
                    } catch (JSONException e) {
                        throw new IOException(e.getMessage());
                    }
                }
                int read2 = inputStream.read();
                if (read2 == -1) {
                    Logger.Companion companion3 = Logger.Companion;
                    String tag3 = FileLruCache.Companion.getTAG();
                    C0173Do.m399new(tag3, "TAG");
                    companion3.log(enumC0658Zq, tag3, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i3 = (i3 << 8) + (read2 & 255);
                i2++;
            }
        }

        public final void writeHeader(OutputStream outputStream, JSONObject jSONObject) {
            C0173Do.m401try(outputStream, "stream");
            C0173Do.m401try(jSONObject, "header");
            String jSONObject2 = jSONObject.toString();
            C0173Do.m399new(jSONObject2, "header.toString()");
            byte[] bytes = jSONObject2.getBytes(C3548q7.f15043do);
            C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write((bytes.length >> 0) & 255);
            outputStream.write(bytes);
        }
    }

    public FileLruCache(String str, Limits limits) {
        C0173Do.m401try(str, "tag");
        C0173Do.m401try(limits, "limits");
        this.tag = str;
        this.limits = limits;
        C3756th c3756th = C3756th.f15751do;
        Validate.sdkInitialized();
        LockOnGetVariable<File> lockOnGetVariable = C3756th.f15742do;
        if (lockOnGetVariable == null) {
            C0173Do.m400this("cacheDir");
            throw null;
        }
        File file = new File(lockOnGetVariable.getValue(), str);
        this.directory = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.lastClearCacheTime = new AtomicLong(0L);
        if (file.mkdirs() || file.isDirectory()) {
            BufferFile.INSTANCE.deleteAll(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: clearCache$lambda-1, reason: not valid java name */
    public static final void m5419clearCache$lambda1(File[] fileArr) {
        C0173Do.m399new(fileArr, "filesToDelete");
        int length = fileArr.length;
        int i = 0;
        while (i < length) {
            File file = fileArr[i];
            i++;
            file.delete();
        }
    }

    public static /* synthetic */ InputStream get$default(FileLruCache fileLruCache, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.get(str, str2);
    }

    public static /* synthetic */ OutputStream openPutStream$default(FileLruCache fileLruCache, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.openPutStream(str, str2);
    }

    private final void postTrim() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                C3756th.m8304new().execute(new FE(this, 2));
            }
            C3206kJ c3206kJ = C3206kJ.f13965do;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: postTrim$lambda-3$lambda-2, reason: not valid java name */
    public static final void m5422postTrim$lambda3$lambda2(FileLruCache fileLruCache) {
        C0173Do.m401try(fileLruCache, "this$0");
        fileLruCache.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renameToTargetAndTrim(String str, File file) {
        if (!file.renameTo(new File(this.directory, Utility.md5hash(str)))) {
            file.delete();
        }
        postTrim();
    }

    private final void trim() {
        long j;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isTrimPending = false;
            this.isTrimInProgress = true;
            C3206kJ c3206kJ = C3206kJ.f13965do;
            reentrantLock.unlock();
            try {
                Logger.Companion companion = Logger.Companion;
                EnumC0658Zq enumC0658Zq = EnumC0658Zq.CACHE;
                String str = TAG;
                C0173Do.m399new(str, "TAG");
                companion.log(enumC0658Zq, str, "trim started");
                PriorityQueue priorityQueue = new PriorityQueue();
                File[] listFiles = this.directory.listFiles(BufferFile.INSTANCE.excludeBufferFiles());
                long j2 = 0;
                if (listFiles != null) {
                    int length = listFiles.length;
                    j = 0;
                    int i = 0;
                    while (i < length) {
                        File file = listFiles[i];
                        i++;
                        C0173Do.m399new(file, "file");
                        ModifiedFile modifiedFile = new ModifiedFile(file);
                        priorityQueue.add(modifiedFile);
                        Logger.Companion companion2 = Logger.Companion;
                        String str2 = TAG;
                        C0173Do.m399new(str2, "TAG");
                        companion2.log(enumC0658Zq, str2, "  trim considering time=" + Long.valueOf(modifiedFile.getModified()) + " name=" + ((Object) modifiedFile.getFile().getName()));
                        j2 += file.length();
                        j++;
                        listFiles = listFiles;
                    }
                } else {
                    j = 0;
                }
                while (true) {
                    if (j2 <= this.limits.getByteCount() && j <= this.limits.getFileCount()) {
                        this.lock.lock();
                        try {
                            this.isTrimInProgress = false;
                            this.condition.signalAll();
                            C3206kJ c3206kJ2 = C3206kJ.f13965do;
                            return;
                        } finally {
                        }
                    }
                    File file2 = ((ModifiedFile) priorityQueue.remove()).getFile();
                    Logger.Companion companion3 = Logger.Companion;
                    String str3 = TAG;
                    C0173Do.m399new(str3, "TAG");
                    companion3.log(enumC0658Zq, str3, C0173Do.m397goto(file2.getName(), "  trim removing "));
                    j2 -= file2.length();
                    j--;
                    file2.delete();
                }
            } catch (Throwable th) {
                this.lock.lock();
                try {
                    this.isTrimInProgress = false;
                    this.condition.signalAll();
                    C3206kJ c3206kJ3 = C3206kJ.f13965do;
                    throw th;
                } finally {
                }
            }
        } finally {
        }
    }

    public final void clearCache() {
        File[] listFiles = this.directory.listFiles(BufferFile.INSTANCE.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (listFiles != null) {
            C3756th.m8304new().execute(new EH(listFiles, 4));
        }
    }

    public final InputStream get(String str) {
        C0173Do.m401try(str, HEADER_CACHEKEY_KEY);
        return get$default(this, str, null, 2, null);
    }

    public final InputStream get(String str, String str2) {
        C0173Do.m401try(str, HEADER_CACHEKEY_KEY);
        File file = new File(this.directory, Utility.md5hash(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                JSONObject readHeader = StreamHeader.INSTANCE.readHeader(bufferedInputStream);
                if (readHeader == null) {
                    return null;
                }
                if (!C0173Do.m394do(readHeader.optString(HEADER_CACHEKEY_KEY), str)) {
                    return null;
                }
                String optString = readHeader.optString("tag", null);
                if (str2 == null && !C0173Do.m394do(str2, optString)) {
                    return null;
                }
                long time = new Date().getTime();
                Logger.Companion companion = Logger.Companion;
                EnumC0658Zq enumC0658Zq = EnumC0658Zq.CACHE;
                String str3 = TAG;
                C0173Do.m399new(str3, "TAG");
                companion.log(enumC0658Zq, str3, "Setting lastModified to " + Long.valueOf(time) + " for " + ((Object) file.getName()));
                file.setLastModified(time);
                return bufferedInputStream;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public final String getLocation() {
        String path = this.directory.getPath();
        C0173Do.m399new(path, "directory.path");
        return path;
    }

    public final InputStream interceptAndPut(String str, InputStream inputStream) {
        C0173Do.m401try(str, HEADER_CACHEKEY_KEY);
        C0173Do.m401try(inputStream, "input");
        return new CopyingInputStream(inputStream, openPutStream$default(this, str, null, 2, null));
    }

    public final OutputStream openPutStream(String str) {
        C0173Do.m401try(str, HEADER_CACHEKEY_KEY);
        return openPutStream$default(this, str, null, 2, null);
    }

    public final OutputStream openPutStream(final String str, String str2) {
        EnumC0658Zq enumC0658Zq = EnumC0658Zq.CACHE;
        C0173Do.m401try(str, HEADER_CACHEKEY_KEY);
        final File newFile = BufferFile.INSTANCE.newFile(this.directory);
        newFile.delete();
        if (!newFile.createNewFile()) {
            throw new IOException(C0173Do.m397goto(newFile.getAbsolutePath(), "Could not create file at "));
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(newFile);
            final long currentTimeMillis = System.currentTimeMillis();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback() { // from class: com.facebook.internal.FileLruCache$openPutStream$renameToTargetCallback$1
                @Override // com.facebook.internal.FileLruCache.StreamCloseCallback
                public void onClose() {
                    AtomicLong atomicLong;
                    long j = currentTimeMillis;
                    atomicLong = this.lastClearCacheTime;
                    if (j < atomicLong.get()) {
                        newFile.delete();
                    } else {
                        this.renameToTargetAndTrim(str, newFile);
                    }
                }
            }), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(HEADER_CACHEKEY_KEY, str);
                    if (!Utility.isNullOrEmpty(str2)) {
                        jSONObject.put("tag", str2);
                    }
                    StreamHeader.INSTANCE.writeHeader(bufferedOutputStream, jSONObject);
                    return bufferedOutputStream;
                } catch (JSONException e) {
                    Logger.Companion companion = Logger.Companion;
                    String str3 = TAG;
                    C0173Do.m399new(str3, "TAG");
                    companion.log(enumC0658Zq, 5, str3, C0173Do.m397goto(e, "Error creating JSON header for cache file: "));
                    throw new IOException(e.getMessage());
                }
            } catch (Throwable th) {
                bufferedOutputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e2) {
            Logger.Companion companion2 = Logger.Companion;
            String str4 = TAG;
            C0173Do.m399new(str4, "TAG");
            companion2.log(enumC0658Zq, 5, str4, C0173Do.m397goto(e2, "Error creating buffer output stream: "));
            throw new IOException(e2.getMessage());
        }
    }

    public final long sizeInBytesForTest() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        while (true) {
            try {
                if (!this.isTrimPending && !this.isTrimInProgress) {
                    break;
                }
                try {
                    this.condition.await();
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        C3206kJ c3206kJ = C3206kJ.f13965do;
        reentrantLock.unlock();
        File[] listFiles = this.directory.listFiles();
        long j = 0;
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                File file = listFiles[i];
                i++;
                j += file.length();
            }
        }
        return j;
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.tag + " file:" + ((Object) this.directory.getName()) + '}';
    }

    public static final class CopyingInputStream extends InputStream {
        private final InputStream input;
        private final OutputStream output;

        public CopyingInputStream(InputStream inputStream, OutputStream outputStream) {
            C0173Do.m401try(inputStream, "input");
            C0173Do.m401try(outputStream, "output");
            this.input = inputStream;
            this.output = outputStream;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.input.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.input.close();
            } finally {
                this.output.close();
            }
        }

        public final InputStream getInput() {
            return this.input;
        }

        public final OutputStream getOutput() {
            return this.output;
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) {
            C0173Do.m401try(bArr, "buffer");
            int read = this.input.read(bArr);
            if (read > 0) {
                this.output.write(bArr, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (j2 < j) {
                int read = read(bArr, 0, (int) Math.min(j - j2, 1024));
                if (read < 0) {
                    return j2;
                }
                j2 += read;
            }
            return j2;
        }

        @Override // java.io.InputStream
        public int read() {
            int read = this.input.read();
            if (read >= 0) {
                this.output.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            C0173Do.m401try(bArr, "buffer");
            int read = this.input.read(bArr, i, i2);
            if (read > 0) {
                this.output.write(bArr, i, read);
            }
            return read;
        }
    }
}
