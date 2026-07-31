package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.camera.core.impl.Config;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BitmapTransformation implements Transformation {
    public abstract Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2);

    @Override // com.bumptech.glide.load.Transformation
    public final Resource transform(Context context, Resource resource, int i, int i2) {
        if (!Util.isValidDimensions(i, i2)) {
            UriKt$$ExternalSyntheticBUOutline0.m(Config.CC.m("Cannot apply transformation on width: ", i, " or height: ", i2, " less than or equal to zero and not Target.SIZE_ORIGINAL"));
            return null;
        }
        BitmapPool bitmapPool = Glide.get(context).bitmapPool;
        Bitmap bitmap = (Bitmap) resource.get();
        if (i == Integer.MIN_VALUE) {
            i = bitmap.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getHeight();
        }
        Bitmap transform = transform(bitmapPool, bitmap, i, i2);
        return bitmap.equals(transform) ? resource : BitmapResource.obtain(transform, bitmapPool);
    }
}
