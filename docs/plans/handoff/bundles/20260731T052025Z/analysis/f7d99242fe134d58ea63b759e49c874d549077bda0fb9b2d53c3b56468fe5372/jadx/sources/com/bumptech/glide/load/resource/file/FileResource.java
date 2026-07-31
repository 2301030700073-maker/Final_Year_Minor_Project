package com.bumptech.glide.load.resource.file;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileResource implements Resource {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object data;

    public FileResource(byte[] bArr) {
        Util.checkNotNull(bArr, "Argument must not be null");
        this.data = bArr;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                return (File) this.data;
            case 1:
                return (Bitmap) this.data;
            default:
                return (byte[]) this.data;
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class getResourceClass() {
        switch (this.$r8$classId) {
            case 0:
                return ((File) this.data).getClass();
            case 1:
                return Bitmap.class;
            default:
                return byte[].class;
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        switch (this.$r8$classId) {
            case 0:
                return 1;
            case 1:
                return Util.getBitmapByteSize((Bitmap) this.data);
            default:
                return ((byte[]) this.data).length;
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void recycle() {
        int i = this.$r8$classId;
    }

    public FileResource(File file) {
        Util.checkNotNull(file, "Argument must not be null");
        this.data = file;
    }

    public FileResource(Bitmap bitmap) {
        this.data = bitmap;
    }

    private final void recycle$com$bumptech$glide$load$resource$bitmap$UnitBitmapDecoder$NonOwnedBitmapResource() {
    }

    private final void recycle$com$bumptech$glide$load$resource$bytes$BytesResource() {
    }

    private final void recycle$com$bumptech$glide$load$resource$file$FileResource() {
    }
}
