package com.fsck.k9.contacts;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactImageDataFetcher implements DataFetcher {
    public final /* synthetic */ int $r8$classId;
    public final Object contactImage;

    public ContactImageDataFetcher(ContactImage contactImage) {
        this.$r8$classId = 0;
        contactImage.getClass();
        this.contactImage = contactImage;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cancel() {
        int i = this.$r8$classId;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cleanup() {
        int i = this.$r8$classId;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class getDataClass() {
        switch (this.$r8$classId) {
            case 0:
                return ContactImage.class;
            case 1:
                return ByteBuffer.class;
            default:
                return this.contactImage.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final int getDataSource() {
        switch (this.$r8$classId) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void loadData(Priority priority, DataFetcher.DataCallback dataCallback) {
        int i = this.$r8$classId;
        Object obj = this.contactImage;
        switch (i) {
            case 0:
                priority.getClass();
                dataCallback.onDataReady((ContactImage) obj);
                break;
            case 1:
                try {
                    dataCallback.onDataReady(ByteBufferUtil.fromFile((File) obj));
                    break;
                } catch (IOException e) {
                    if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                        Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                    }
                    dataCallback.onLoadFailed(e);
                    return;
                }
            default:
                dataCallback.onDataReady(obj);
                break;
        }
    }

    public /* synthetic */ ContactImageDataFetcher(int i, Object obj) {
        this.$r8$classId = i;
        this.contactImage = obj;
    }

    private final void cancel$com$bumptech$glide$load$model$ByteBufferFileLoader$ByteBufferFetcher() {
    }

    private final void cancel$com$bumptech$glide$load$model$UnitModelLoader$UnitFetcher() {
    }

    private final void cancel$com$fsck$k9$contacts$ContactImageDataFetcher() {
    }

    private final void cleanup$com$bumptech$glide$load$model$ByteBufferFileLoader$ByteBufferFetcher() {
    }

    private final void cleanup$com$bumptech$glide$load$model$UnitModelLoader$UnitFetcher() {
    }

    private final void cleanup$com$fsck$k9$contacts$ContactImageDataFetcher() {
    }
}
