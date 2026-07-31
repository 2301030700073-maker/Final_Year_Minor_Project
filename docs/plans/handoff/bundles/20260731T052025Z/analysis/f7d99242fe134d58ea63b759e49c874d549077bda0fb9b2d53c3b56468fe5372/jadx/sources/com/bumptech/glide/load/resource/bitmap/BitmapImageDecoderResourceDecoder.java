package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import com.bumptech.glide.util.ByteBufferUtil;
import com.mikepenz.fastadapter.VerboseLogger;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BitmapImageDecoderResourceDecoder implements ResourceDecoder {
    public final /* synthetic */ int $r8$classId;
    public final Object bitmapPool;

    public BitmapImageDecoderResourceDecoder(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.bitmapPool = new BitmapImageDecoderResourceDecoder(0);
                break;
            case 2:
                this.bitmapPool = new BitmapImageDecoderResourceDecoder(0);
                break;
            default:
                this.bitmapPool = new VerboseLogger();
                break;
        }
    }

    public BitmapResource decode(ImageDecoder.Source source, int i, int i2, Options options) {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, new DefaultOnHeaderDecodedListener(i, i2, options));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + decodeBitmap.getWidth() + "x" + decodeBitmap.getHeight() + "] for [" + i + "x" + i2 + "]");
        }
        return new BitmapResource(decodeBitmap, (VerboseLogger) this.bitmapPool);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final /* bridge */ /* synthetic */ boolean handles(Object obj, Options options) {
        switch (this.$r8$classId) {
            case 0:
                UriKt$$ExternalSyntheticBUOutline0.m855m(obj);
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource decode(Object obj, int i, int i2, Options options) {
        int i3 = this.$r8$classId;
        Object obj2 = this.bitmapPool;
        switch (i3) {
            case 0:
                return decode(UriKt$$ExternalSyntheticBUOutline0.m855m(obj), i, i2, options);
            case 1:
                return ((BitmapImageDecoderResourceDecoder) obj2).decode(ImageDecoder.createSource((ByteBuffer) obj), i, i2, options);
            default:
                return ((BitmapImageDecoderResourceDecoder) obj2).decode(ImageDecoder.createSource(ByteBufferUtil.fromStream((InputStream) obj)), i, i2, options);
        }
    }
}
