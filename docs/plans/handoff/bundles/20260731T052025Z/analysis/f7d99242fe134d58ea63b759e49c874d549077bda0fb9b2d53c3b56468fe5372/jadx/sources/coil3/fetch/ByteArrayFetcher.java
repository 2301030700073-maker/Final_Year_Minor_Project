package coil3.fetch;

import coil3.ImageLoader;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteArrayFetcher implements Fetcher {
    private final byte[] byteArray;
    private final Options options;

    public ByteArrayFetcher(byte[] bArr, Options options) {
        this.byteArray = bArr;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        Buffer buffer = new Buffer();
        byte[] bArr = this.byteArray;
        bArr.getClass();
        buffer.write(bArr.length, bArr);
        return new SourceFetchResult(ImageSourceKt.ImageSource$default(buffer, this.options.getFileSystem(), null, 4, null), null, DataSource.MEMORY);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<byte[]> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(byte[] bArr, Options options, ImageLoader imageLoader) {
            return new ByteArrayFetcher(bArr, options);
        }
    }
}
