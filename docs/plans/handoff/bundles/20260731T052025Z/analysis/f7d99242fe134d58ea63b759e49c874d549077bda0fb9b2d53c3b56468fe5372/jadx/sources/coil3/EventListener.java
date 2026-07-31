package coil3;

import android.graphics.Bitmap;
import coil3.decode.DecodeResult;
import coil3.decode.Decoder;
import coil3.fetch.FetchResult;
import coil3.fetch.Fetcher;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.SuccessResult;
import coil3.size.Size;
import coil3.size.SizeResolver;
import coil3.transition.Transition;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EventListener implements ImageRequest.Listener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: coil3.EventListener$Companion$NONE$1
    };

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Factory {
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final Factory NONE = new UriKt$$ExternalSyntheticBUOutline0(9);

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        /* renamed from: coil3.EventListener$Factory$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static final /* synthetic */ int $r8$clinit = 0;

            static {
                Companion companion = Factory.Companion;
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }
        }

        EventListener create(ImageRequest imageRequest);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onCancel(ImageRequest imageRequest) {
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onStart(ImageRequest imageRequest) {
    }

    public void keyEnd(ImageRequest imageRequest, String str) {
    }

    public void keyStart(ImageRequest imageRequest, Object obj) {
    }

    public void mapEnd(ImageRequest imageRequest, Object obj) {
    }

    public void mapStart(ImageRequest imageRequest, Object obj) {
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onError(ImageRequest imageRequest, ErrorResult errorResult) {
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onSuccess(ImageRequest imageRequest, SuccessResult successResult) {
    }

    public void resolveSizeEnd(ImageRequest imageRequest, Size size) {
    }

    public void resolveSizeStart(ImageRequest imageRequest, SizeResolver sizeResolver) {
    }

    public void transformEnd(ImageRequest imageRequest, Bitmap bitmap) {
    }

    public void transformStart(ImageRequest imageRequest, Bitmap bitmap) {
    }

    public void transitionEnd(ImageRequest imageRequest, Transition transition) {
    }

    public void transitionStart(ImageRequest imageRequest, Transition transition) {
    }

    public void decodeStart(ImageRequest imageRequest, Decoder decoder, Options options) {
    }

    public void fetchStart(ImageRequest imageRequest, Fetcher fetcher, Options options) {
    }

    public void decodeEnd(ImageRequest imageRequest, Decoder decoder, Options options, DecodeResult decodeResult) {
    }

    public void fetchEnd(ImageRequest imageRequest, Fetcher fetcher, Options options, FetchResult fetchResult) {
    }
}
