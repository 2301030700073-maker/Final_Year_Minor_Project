package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.net.Uri;
import coil3.util.UtilsKt;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.FileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.StreamLocalUriFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriLoader implements ModelLoader {
    public static final Set SCHEMES = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(UtilsKt.SCHEME_FILE, "content", "android.resource")));
    public final StreamFactory factory;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StreamFactory implements ModelLoaderFactory {
        public final /* synthetic */ int $r8$classId;
        public final ContentResolver contentResolver;

        public /* synthetic */ StreamFactory(ContentResolver contentResolver, int i) {
            this.$r8$classId = i;
            this.contentResolver = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
            switch (this.$r8$classId) {
            }
            return new UriLoader(this);
        }
    }

    public UriLoader(StreamFactory streamFactory) {
        this.factory = streamFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        DataFetcher streamLocalUriFetcher;
        Uri uri = (Uri) obj;
        ObjectKey objectKey = new ObjectKey(uri);
        StreamFactory streamFactory = this.factory;
        switch (streamFactory.$r8$classId) {
            case 0:
                streamLocalUriFetcher = new StreamLocalUriFetcher(0, uri, streamFactory.contentResolver);
                break;
            case 1:
                streamLocalUriFetcher = new FileDescriptorLocalUriFetcher(streamFactory.contentResolver, uri, 1);
                break;
            default:
                streamLocalUriFetcher = new FileDescriptorLocalUriFetcher(streamFactory.contentResolver, uri, 0);
                break;
        }
        return new ModelLoader.LoadData(objectKey, streamLocalUriFetcher);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Object obj) {
        return SCHEMES.contains(((Uri) obj).getScheme());
    }
}
