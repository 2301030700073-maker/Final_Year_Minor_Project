package us.shandian.giga.io;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import j$.nio.channels.DesugarChannels;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FileStreamSAF extends SharpStream {
    public final FileChannel channel;
    public boolean disposed;
    public final ParcelFileDescriptor file;
    public final FileInputStream in;
    public final FileOutputStream out;

    public FileStreamSAF(ContentResolver contentResolver, Uri uri) {
        FileChannel convertMaybeLegacyFileChannelFromLibrary;
        ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(uri, "rw");
        this.file = openFileDescriptor;
        if (openFileDescriptor == null) {
            throw new IOException("Cannot get the ParcelFileDescriptor for " + uri.toString());
        }
        this.in = new FileInputStream(openFileDescriptor.getFileDescriptor());
        FileOutputStream fileOutputStream = new FileOutputStream(openFileDescriptor.getFileDescriptor());
        this.out = fileOutputStream;
        convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(fileOutputStream.getChannel());
        this.channel = convertMaybeLegacyFileChannelFromLibrary;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long available() {
        try {
            return this.in.available();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canRead() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canSeek() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canWrite() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.disposed = true;
            this.file.close();
            this.in.close();
            this.out.close();
            this.channel.close();
        } catch (IOException e) {
            Log.e("FileStreamSAF", "close() error", e);
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean isClosed() {
        return this.disposed;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long length() {
        return this.channel.size();
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read() {
        return this.in.read();
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void rewind() {
        seek(0L);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void seek(long j) {
        this.channel.position(j);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void setLength(long j) {
        this.channel.truncate(j);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long skip(long j) {
        return this.in.skip(j);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte b) {
        this.out.write(b);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr) {
        this.out.write(bArr);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr) {
        return this.in.read(bArr);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.in.read(bArr, i, i2);
    }
}
