package coil3;

import android.content.Context;
import android.widget.ImageView;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.util.CoilUtils;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingletonImageLoaders_androidKt {
    public static final void dispose(ImageView imageView) {
        CoilUtils.dispose(imageView);
    }

    public static final ImageLoader getImageLoader(Context context) {
        return SingletonImageLoader.get(context);
    }

    public static final ImageResult getResult(ImageView imageView) {
        return CoilUtils.result(imageView);
    }

    public static final Disposable load(ImageView imageView, Object obj, ImageLoader imageLoader, Function1 function1) {
        ImageRequest.Builder target = ImageRequests_androidKt.target(new ImageRequest.Builder(imageView.getContext()).data(obj), imageView);
        function1.invoke(target);
        return imageLoader.enqueue(target.build());
    }

    public static /* synthetic */ Disposable load$default(ImageView imageView, Object obj, ImageLoader imageLoader, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            imageLoader = SingletonImageLoader.get(imageView.getContext());
        }
        if ((i & 4) != 0) {
            function1 = new Function1() { // from class: coil3.SingletonImageLoaders_androidKt$load$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                    invoke((ImageRequest.Builder) obj3);
                    return Unit.INSTANCE;
                }

                public final void invoke(ImageRequest.Builder builder) {
                }
            };
        }
        ImageRequest.Builder target = ImageRequests_androidKt.target(new ImageRequest.Builder(imageView.getContext()).data(obj), imageView);
        function1.invoke(target);
        return imageLoader.enqueue(target.build());
    }
}
