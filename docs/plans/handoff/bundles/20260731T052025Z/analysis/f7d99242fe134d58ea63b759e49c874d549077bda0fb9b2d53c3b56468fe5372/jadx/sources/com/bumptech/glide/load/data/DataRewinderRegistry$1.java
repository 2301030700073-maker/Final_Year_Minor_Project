package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataRewinderRegistry$1 implements DataRewinder.Factory {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DataRewinderRegistry$1(int i) {
        this.$r8$classId = i;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder.Factory
    public final DataRewinder build(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return new InputStreamRewinder(obj);
            case 1:
                return new InputStreamRewinder((ParcelFileDescriptor) obj);
            default:
                return new VideoDecoder.AnonymousClass1((ByteBuffer) obj, 3);
        }
    }

    @Override // com.bumptech.glide.load.data.DataRewinder.Factory
    public final Class getDataClass() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Not implemented");
            case 1:
                return ParcelFileDescriptor.class;
            default:
                return ByteBuffer.class;
        }
    }
}
