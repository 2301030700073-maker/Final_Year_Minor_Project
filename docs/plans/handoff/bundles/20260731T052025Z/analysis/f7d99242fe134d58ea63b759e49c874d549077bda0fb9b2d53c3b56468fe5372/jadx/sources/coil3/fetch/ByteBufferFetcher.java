package coil3.fetch;

import coil3.ImageLoader;
import coil3.decode.ByteBufferMetadata;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import java.nio.ByteBuffer;
import kotlin.coroutines.Continuation;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteBufferFetcher implements Fetcher {
    private final ByteBuffer data;
    private final Options options;

    public ByteBufferFetcher(ByteBuffer byteBuffer, Options options) {
        this.data = byteBuffer;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        return new SourceFetchResult(ImageSourceKt.ImageSource(Okio.buffer(ByteBufferFetcherKt.asSource(this.data)), this.options.getFileSystem(), new ByteBufferMetadata(this.data)), null, DataSource.MEMORY);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<ByteBuffer> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(ByteBuffer byteBuffer, Options options, ImageLoader imageLoader) {
            return new ByteBufferFetcher(byteBuffer, options);
        }
    }
}
