package coil3.decode;

import coil3.ColorImage;
import coil3.Image;
import coil3.ImageLoader;
import coil3.decode.Decoder;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BlackholeDecoder implements Decoder {
    private final Function0 imageFactory;

    public BlackholeDecoder(Function0 function0) {
        this.imageFactory = function0;
    }

    @Override // coil3.decode.Decoder
    public Object decode(Continuation continuation) {
        return new DecodeResult((Image) this.imageFactory.invoke(), false);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Decoder.Factory {
        public static final Companion Companion = new Companion(null);
        public static final Image EMPTY_IMAGE = new ColorImage(0, 0, 0, 0, false, 30, null);
        private final Function0 imageFactory;

        public /* synthetic */ Factory(Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new UtilsKt$$ExternalSyntheticLambda0(24) : function0);
        }

        @Override // coil3.decode.Decoder.Factory
        public BlackholeDecoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
            return new BlackholeDecoder(this.imageFactory);
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        public Factory(Function0 function0) {
            this.imageFactory = function0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}
