package com.bumptech.glide.load.resource.transcode;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.file.FileResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import com.bumptech.glide.util.ByteBufferUtil;
import com.google.zxing.common.BitSource;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnitTranscoder implements ResourceTranscoder {
    public static final UnitTranscoder UNIT_TRANSCODER = new UnitTranscoder(0);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ UnitTranscoder(int i) {
        this.$r8$classId = i;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public final Resource transcode(Resource resource, Options options) {
        byte[] bArr;
        switch (this.$r8$classId) {
            default:
                ByteBuffer asReadOnlyBuffer = ((GifFrameLoader) ((GifDrawable) resource.get()).state.frameLoader).gifDecoder.rawData.asReadOnlyBuffer();
                AtomicReference atomicReference = ByteBufferUtil.BUFFER_REF;
                BitSource bitSource = (asReadOnlyBuffer.isReadOnly() || !asReadOnlyBuffer.hasArray()) ? null : new BitSource(asReadOnlyBuffer.array(), asReadOnlyBuffer.arrayOffset(), asReadOnlyBuffer.limit());
                if (bitSource != null && bitSource.byteOffset == 0 && bitSource.bitOffset == bitSource.bytes.length) {
                    bArr = asReadOnlyBuffer.array();
                } else {
                    ByteBuffer asReadOnlyBuffer2 = asReadOnlyBuffer.asReadOnlyBuffer();
                    byte[] bArr2 = new byte[asReadOnlyBuffer2.limit()];
                    asReadOnlyBuffer2.get(bArr2);
                    bArr = bArr2;
                }
                resource = new FileResource(bArr);
                break;
            case 0:
                return resource;
        }
    }
}
