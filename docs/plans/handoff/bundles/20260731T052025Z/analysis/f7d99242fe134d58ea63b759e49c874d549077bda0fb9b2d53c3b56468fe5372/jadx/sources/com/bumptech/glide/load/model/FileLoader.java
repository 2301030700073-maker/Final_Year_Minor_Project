package com.bumptech.glide.load.model;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileLoader implements ModelLoader {
    public final /* synthetic */ int $r8$classId;
    public final Object fileOpener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StreamFactory extends DnsQueryResult {
    }

    public /* synthetic */ FileLoader(int i, Object obj) {
        this.$r8$classId = i;
        this.fileOpener = obj;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        int i3 = this.$r8$classId;
        Object obj2 = this.fileOpener;
        switch (i3) {
            case 0:
                File file = (File) obj;
                return new ModelLoader.LoadData(new ObjectKey(file), new ThumbFetcher(1, file, (ByteBufferEncoder) obj2));
            case 1:
                byte[] bArr = (byte[]) obj;
                return new ModelLoader.LoadData(new ObjectKey(bArr), new ByteArrayLoader$Fetcher(0, bArr, (ByteBufferEncoder) obj2));
            default:
                return new ModelLoader.LoadData(new ObjectKey(obj), new ByteArrayLoader$Fetcher(obj.toString(), (ByteBufferEncoder) obj2));
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return obj.toString().startsWith("data:image");
        }
    }
}
