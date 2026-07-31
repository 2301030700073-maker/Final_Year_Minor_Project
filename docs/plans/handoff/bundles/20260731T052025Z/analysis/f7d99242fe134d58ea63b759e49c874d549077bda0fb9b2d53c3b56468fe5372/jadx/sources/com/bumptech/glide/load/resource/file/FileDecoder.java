package com.bumptech.glide.load.resource.file;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawableResource;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileDecoder implements ResourceDecoder {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FileDecoder(int i) {
        this.$r8$classId = i;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource decode(Object obj, int i, int i2, Options options) {
        switch (this.$r8$classId) {
            case 0:
                return new FileResource((File) obj);
            case 1:
                return new FileResource((Bitmap) obj);
            default:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new GifDrawableResource(drawable, 1);
                }
                return null;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final /* bridge */ /* synthetic */ boolean handles(Object obj, Options options) {
        switch (this.$r8$classId) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }
}
