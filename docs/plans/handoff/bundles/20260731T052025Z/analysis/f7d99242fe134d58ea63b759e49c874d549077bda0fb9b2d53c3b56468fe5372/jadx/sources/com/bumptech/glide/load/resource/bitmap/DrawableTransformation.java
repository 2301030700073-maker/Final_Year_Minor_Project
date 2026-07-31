package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawableTransformation implements Transformation {
    public final boolean isRequired;
    public final Transformation wrapped;

    public DrawableTransformation(Transformation transformation, boolean z) {
        this.wrapped = transformation;
        this.isRequired = z;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof DrawableTransformation) {
            return this.wrapped.equals(((DrawableTransformation) obj).wrapped);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.wrapped.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource transform(Context context, Resource resource, int i, int i2) {
        BitmapPool bitmapPool = Glide.get(context).bitmapPool;
        Drawable drawable = (Drawable) resource.get();
        BitmapResource convert = DrawableToBitmapConverter.convert(bitmapPool, drawable, i, i2);
        if (convert == null) {
            if (!this.isRequired) {
                return resource;
            }
            Regex$$ExternalSyntheticBUOutline0.m$3(drawable, " to a Bitmap", "Unable to convert ");
            return null;
        }
        Resource transform = this.wrapped.transform(context, convert, i, i2);
        if (!transform.equals(convert)) {
            return new BitmapResource(context.getResources(), transform);
        }
        transform.recycle();
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.wrapped.updateDiskCacheKey(messageDigest);
    }
}
