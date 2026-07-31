package coil3.request;

import coil3.request.ImageRequest;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageRequest$Builder$listener$5 implements ImageRequest.Listener {
    final /* synthetic */ Function1 $onCancel;
    final /* synthetic */ Function2 $onError;
    final /* synthetic */ Function1 $onStart;
    final /* synthetic */ Function2 $onSuccess;

    public ImageRequest$Builder$listener$5(Function1 function1, Function1 function12, Function2 function2, Function2 function22) {
        this.$onStart = function1;
        this.$onCancel = function12;
        this.$onError = function2;
        this.$onSuccess = function22;
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onCancel(ImageRequest imageRequest) {
        this.$onCancel.invoke(imageRequest);
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onError(ImageRequest imageRequest, ErrorResult errorResult) {
        this.$onError.invoke(imageRequest, errorResult);
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onStart(ImageRequest imageRequest) {
        this.$onStart.invoke(imageRequest);
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onSuccess(ImageRequest imageRequest, SuccessResult successResult) {
        this.$onSuccess.invoke(imageRequest, successResult);
    }
}
