package coil3.video;

import android.media.MediaDataSource;
import coil3.ImageLoader;
import coil3.decode.DataSource;
import coil3.decode.ImageSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import okio.Buffer;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MediaDataSourceFetcher implements Fetcher {
    private final MediaDataSource data;
    private final Options options;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class MediaDataSourceOkioSource implements Source {
        private final MediaDataSource mediaDataSource;
        private long position;
        private long size;

        public MediaDataSourceOkioSource(MediaDataSource mediaDataSource) {
            this.mediaDataSource = mediaDataSource;
            this.size = mediaDataSource.getSize();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.mediaDataSource.close();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) {
            long j2 = this.position;
            long j3 = this.size;
            if (j2 >= j3) {
                return -1L;
            }
            int min = (int) Math.min(j, j3 - j2);
            byte[] bArr = new byte[min];
            int readAt = this.mediaDataSource.readAt(this.position, bArr, 0, min);
            long j4 = readAt;
            this.position += j4;
            buffer.write(readAt, bArr);
            return j4;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class MediaSourceMetadata extends ImageSource.Metadata {
        private final MediaDataSource mediaDataSource;

        public MediaSourceMetadata(MediaDataSource mediaDataSource) {
            this.mediaDataSource = mediaDataSource;
        }

        public final MediaDataSource getMediaDataSource() {
            return this.mediaDataSource;
        }
    }

    public MediaDataSourceFetcher(MediaDataSource mediaDataSource, Options options) {
        this.data = mediaDataSource;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        return new SourceFetchResult(ImageSourceKt.ImageSource(new RealBufferedSource(new MediaDataSourceOkioSource(this.data)), this.options.getFileSystem(), new MediaSourceMetadata(this.data)), null, DataSource.DISK);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<MediaDataSource> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(MediaDataSource mediaDataSource, Options options, ImageLoader imageLoader) {
            return new MediaDataSourceFetcher(mediaDataSource, options);
        }
    }
}
