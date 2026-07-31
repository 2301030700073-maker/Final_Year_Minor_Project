package coil3.request;

import coil3.Image;
import coil3.target.Target;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageRequest$Builder$target$4 implements Target {
    final /* synthetic */ Function1 $onError;
    final /* synthetic */ Function1 $onStart;
    final /* synthetic */ Function1 $onSuccess;

    public ImageRequest$Builder$target$4(Function1 function1, Function1 function12, Function1 function13) {
        this.$onStart = function1;
        this.$onError = function12;
        this.$onSuccess = function13;
    }

    @Override // coil3.target.Target
    public void onError(Image image) {
        this.$onError.invoke(image);
    }

    @Override // coil3.target.Target
    public void onStart(Image image) {
        this.$onStart.invoke(image);
    }

    @Override // coil3.target.Target
    public void onSuccess(Image image) {
        this.$onSuccess.invoke(image);
    }
}
