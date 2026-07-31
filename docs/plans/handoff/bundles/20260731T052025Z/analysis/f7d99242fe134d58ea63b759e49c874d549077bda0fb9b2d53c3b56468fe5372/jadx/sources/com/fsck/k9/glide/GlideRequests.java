package com.fsck.k9.glide;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.RequestOptions;
import com.fsck.k9.contacts.ContactImage;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideRequests extends RequestManager {
    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder as(Class cls) {
        return new GlideRequest(this.glide, this, cls, this.context);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder asBitmap() {
        return (GlideRequest) super.asBitmap();
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder asDrawable() {
        return (GlideRequest) as(Drawable.class);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder load(Uri uri) {
        return (GlideRequest) super.load(uri);
    }

    @Override // com.bumptech.glide.RequestManager
    public final void setRequestOptions(RequestOptions requestOptions) {
        if (requestOptions instanceof GlideOptions) {
            super.setRequestOptions(requestOptions);
        } else {
            super.setRequestOptions(new GlideOptions().apply(requestOptions));
        }
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder load(File file) {
        return (GlideRequest) super.load(file);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder load(ContactImage contactImage) {
        return (GlideRequest) super.load(contactImage);
    }
}
