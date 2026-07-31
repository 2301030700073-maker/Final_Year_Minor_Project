package com.bumptech.glide.load.resource.drawable;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.work.OperationKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.Util;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimatedImageDecoder {
    public final LruArrayPool arrayPool;
    public final ArrayList imageHeaderParsers;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimatedImageDrawableResource implements Resource {
        public final AnimatedImageDrawable imageDrawable;

        public AnimatedImageDrawableResource(AnimatedImageDrawable animatedImageDrawable) {
            this.imageDrawable = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Object get() {
            return this.imageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Class getResourceClass() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final int getSize() {
            return Util.getBytesPerPixel(Bitmap.Config.ARGB_8888) * this.imageDrawable.getIntrinsicHeight() * this.imageDrawable.getIntrinsicWidth() * 2;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final void recycle() {
            this.imageDrawable.stop();
            this.imageDrawable.clearAnimationCallbacks();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StreamAnimatedImageDecoder implements ResourceDecoder {
        public final /* synthetic */ int $r8$classId;
        public final AnimatedImageDecoder delegate;

        public /* synthetic */ StreamAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder, int i) {
            this.$r8$classId = i;
            this.delegate = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final Resource decode(Object obj, int i, int i2, Options options) {
            switch (this.$r8$classId) {
                case 0:
                    return AnimatedImageDecoder.decode(ImageDecoder.createSource(ByteBufferUtil.fromStream((InputStream) obj)), i, i2, options);
                default:
                    return AnimatedImageDecoder.decode(ImageDecoder.createSource((ByteBuffer) obj), i, i2, options);
            }
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final boolean handles(Object obj, Options options) {
            int i = this.$r8$classId;
            AnimatedImageDecoder animatedImageDecoder = this.delegate;
            switch (i) {
                case 0:
                    ImageHeaderParser.ImageType type = OperationKt.getType(animatedImageDecoder.imageHeaderParsers, (InputStream) obj, animatedImageDecoder.arrayPool);
                    if (type != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                        if (Build.VERSION.SDK_INT < 31 || type != ImageHeaderParser.ImageType.ANIMATED_AVIF) {
                            break;
                        }
                    }
                    break;
                default:
                    ImageHeaderParser.ImageType type2 = OperationKt.getType(animatedImageDecoder.imageHeaderParsers, (ByteBuffer) obj);
                    if (type2 != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                        if (Build.VERSION.SDK_INT < 31 || type2 != ImageHeaderParser.ImageType.ANIMATED_AVIF) {
                            break;
                        }
                    }
                    break;
            }
            return false;
        }
    }

    public AnimatedImageDecoder(ArrayList arrayList, LruArrayPool lruArrayPool) {
        this.imageHeaderParsers = arrayList;
        this.arrayPool = lruArrayPool;
    }

    public static AnimatedImageDrawableResource decode(ImageDecoder.Source source, int i, int i2, Options options) {
        Drawable decodeDrawable = ImageDecoder.decodeDrawable(source, new DefaultOnHeaderDecodedListener(i, i2, options));
        if (decodeDrawable instanceof AnimatedImageDrawable) {
            return new AnimatedImageDrawableResource((AnimatedImageDrawable) decodeDrawable);
        }
        UriKt$$ExternalSyntheticBUOutline0.m(decodeDrawable, "Received unexpected drawable type for animated image, failing: ");
        return null;
    }
}
