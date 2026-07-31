package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import java.io.InputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceLoader$UriFactory implements ModelLoaderFactory, ResourceTranscoder {
    public final /* synthetic */ int $r8$classId;
    public final Resources resources;

    public /* synthetic */ ResourceLoader$UriFactory(int i, Resources resources) {
        this.$r8$classId = i;
        this.resources = resources;
    }

    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        int i = this.$r8$classId;
        Resources resources = this.resources;
        switch (i) {
            case 0:
                return new AssetUriLoader(resources, UnitModelLoader.INSTANCE);
            case 1:
                return new AssetUriLoader(resources, multiModelLoaderFactory.build(Uri.class, AssetFileDescriptor.class));
            default:
                return new AssetUriLoader(resources, multiModelLoaderFactory.build(Uri.class, InputStream.class));
        }
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public Resource transcode(Resource resource, Options options) {
        if (resource == null) {
            return null;
        }
        return new BitmapResource(this.resources, resource);
    }
}
