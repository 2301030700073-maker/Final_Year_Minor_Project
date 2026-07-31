package com.skydoves.landscapist.coil3;

import coil3.Image;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.skydoves.landscapist.ImageLoadState;
import com.skydoves.landscapist.coil3.CoilImageState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoilImageStateKt {
    public static final CoilImageState toCoilImageState(ImageLoadState imageLoadState) {
        imageLoadState.getClass();
        if (imageLoadState instanceof ImageLoadState.None) {
            return CoilImageState.None.INSTANCE;
        }
        if (imageLoadState instanceof ImageLoadState.Loading) {
            return CoilImageState.Loading.INSTANCE;
        }
        if (imageLoadState instanceof ImageLoadState.Success) {
            ImageLoadState.Success success = (ImageLoadState.Success) imageLoadState;
            Object data = success.getData();
            return new CoilImageState.Success(data instanceof Image ? (Image) data : null, success.getDataSource());
        }
        if (!(imageLoadState instanceof ImageLoadState.Failure)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        ImageLoadState.Failure failure = (ImageLoadState.Failure) imageLoadState;
        Object data2 = failure.getData();
        return new CoilImageState.Failure(data2 instanceof Image ? (Image) data2 : null, failure.getReason());
    }
}
