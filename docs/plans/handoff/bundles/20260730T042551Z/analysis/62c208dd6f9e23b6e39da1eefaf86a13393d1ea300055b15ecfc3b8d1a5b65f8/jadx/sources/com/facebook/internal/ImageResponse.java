package com.facebook.internal;

import android.graphics.Bitmap;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ImageResponse {
    private final Bitmap bitmap;
    private final Exception error;
    private final boolean isCachedRedirect;
    private final ImageRequest request;

    public ImageResponse(ImageRequest imageRequest, Exception exc, boolean z, Bitmap bitmap) {
        C0173Do.m401try(imageRequest, "request");
        this.request = imageRequest;
        this.error = exc;
        this.isCachedRedirect = z;
        this.bitmap = bitmap;
    }

    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final Exception getError() {
        return this.error;
    }

    public final ImageRequest getRequest() {
        return this.request;
    }

    public final boolean isCachedRedirect() {
        return this.isCachedRedirect;
    }
}
