package org.apache.commons.io.output;

import io.sentry.instrumentation.file.SentryFileInputStream;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: classes6.dex */
public class DeferredFileOutputStream extends ThresholdingOutputStream {
    private boolean closed;
    private OutputStream currentOutputStream;
    private final File directory;
    private ByteArrayOutputStream memoryOutputStream;
    private File outputFile;
    private final String prefix;
    private final String suffix;

    public DeferredFileOutputStream(int i, File file) {
        this(i, file, null, null, null, 1024);
    }

    public DeferredFileOutputStream(int i, int i2, File file) {
        this(i, file, null, null, null, i2);
        if (i2 < 0) {
            throw new IllegalArgumentException("Initial buffer size must be atleast 0.");
        }
    }

    public DeferredFileOutputStream(int i, String str, String str2, File file) {
        this(i, null, str, str2, file, 1024);
        if (str == null) {
            throw new IllegalArgumentException("Temporary file prefix is missing");
        }
    }

    public DeferredFileOutputStream(int i, int i2, String str, String str2, File file) {
        this(i, null, str, str2, file, i2);
        if (str == null) {
            throw new IllegalArgumentException("Temporary file prefix is missing");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Initial buffer size must be atleast 0.");
        }
    }

    private DeferredFileOutputStream(int i, File file, String str, String str2, File file2, int i2) {
        super(i);
        this.closed = false;
        this.outputFile = file;
        this.prefix = str;
        this.suffix = str2;
        this.directory = file2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        this.memoryOutputStream = byteArrayOutputStream;
        this.currentOutputStream = byteArrayOutputStream;
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    protected OutputStream getStream() throws IOException {
        return this.currentOutputStream;
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    protected void thresholdReached() throws IOException {
        String str = this.prefix;
        if (str != null) {
            this.outputFile = File.createTempFile(str, this.suffix, this.directory);
        }
        FileUtils.forceMkdirParent(this.outputFile);
        File file = this.outputFile;
        FileOutputStream create = SentryFileOutputStream.Factory.create(new FileOutputStream(file), file);
        try {
            this.memoryOutputStream.writeTo(create);
            this.currentOutputStream = create;
            this.memoryOutputStream = null;
        } catch (IOException e) {
            create.close();
            throw e;
        }
    }

    public boolean isInMemory() {
        return !isThresholdExceeded();
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.memoryOutputStream;
        if (byteArrayOutputStream != null) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    public File getFile() {
        return this.outputFile;
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.closed = true;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        if (!this.closed) {
            throw new IOException("Stream not closed");
        }
        if (isInMemory()) {
            this.memoryOutputStream.writeTo(outputStream);
            return;
        }
        File file = this.outputFile;
        FileInputStream create = SentryFileInputStream.Factory.create(new FileInputStream(file), file);
        try {
            IOUtils.copy(create, outputStream);
            if (create != null) {
                create.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (create != null) {
                    try {
                        create.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
