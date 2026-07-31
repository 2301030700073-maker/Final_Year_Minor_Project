package com.fsck.k9.contacts;

import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy$2;
import com.fsck.k9.mail.Address;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactPictureLoader {
    public final String backgroundCacheId;
    public final ContactLetterBitmapCreator contactLetterBitmapCreator;
    public final Context context;
    public final int pictureSizeInPx;

    public ContactPictureLoader(Context context, ContactLetterBitmapCreator contactLetterBitmapCreator) {
        this.context = context;
        this.contactLetterBitmapCreator = contactLetterBitmapCreator;
        this.pictureSizeInPx = (int) (40.0f * context.getResources().getDisplayMetrics().density);
        ContactLetterBitmapConfig contactLetterBitmapConfig = contactLetterBitmapCreator.config;
        this.backgroundCacheId = contactLetterBitmapConfig.hasDefaultBackgroundColor ? String.valueOf(contactLetterBitmapConfig.defaultBackgroundColor) : "*";
    }

    public final void setContactPicture(ImageView imageView, Address address) {
        imageView.getClass();
        address.getClass();
        ((RequestBuilder) ((RequestBuilder) Glide.with(imageView.getContext()).load(new ContactImage(false, this.backgroundCacheId, this.contactLetterBitmapCreator, address)).diskCacheStrategy(DiskCacheStrategy$2.NONE)).dontAnimate()).into(imageView);
    }
}
