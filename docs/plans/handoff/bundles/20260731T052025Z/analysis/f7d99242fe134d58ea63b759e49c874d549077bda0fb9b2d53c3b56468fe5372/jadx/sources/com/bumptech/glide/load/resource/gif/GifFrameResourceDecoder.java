package com.bumptech.glide.load.resource.gif;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.fsck.k9.backend.imap.ImapSync;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GifFrameResourceDecoder implements ResourceDecoder {
    public final /* synthetic */ int $r8$classId;
    public final Object bitmapPool;

    public /* synthetic */ GifFrameResourceDecoder(int i, Object obj) {
        this.$r8$classId = i;
        this.bitmapPool = obj;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource decode(Object obj, int i, int i2, Options options) {
        int i3 = this.$r8$classId;
        Object obj2 = this.bitmapPool;
        switch (i3) {
            case 0:
                return BitmapResource.obtain(((StandardGifDecoder) obj).getNextFrame(), (BitmapPool) obj2);
            case 1:
                Downsampler downsampler = (Downsampler) obj2;
                return downsampler.decode(new ImapSync((ByteBuffer) obj, downsampler.parsers, downsampler.byteArrayPool, 9), i, i2, options, Downsampler.EMPTY_CALLBACKS);
            default:
                Downsampler downsampler2 = (Downsampler) obj2;
                return downsampler2.decode(new ImapSync((ParcelFileDescriptor) obj, downsampler2.parsers, downsampler2.byteArrayPool), i, i2, options, Downsampler.EMPTY_CALLBACKS);
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean handles(Object obj, Options options) {
        switch (this.$r8$classId) {
            case 0:
                break;
            case 1:
                break;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                if ((("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) && parcelFileDescriptor.getStatSize() > 536870912) || "robolectric".equals(Build.FINGERPRINT)) {
                }
                break;
        }
        return true;
    }
}
