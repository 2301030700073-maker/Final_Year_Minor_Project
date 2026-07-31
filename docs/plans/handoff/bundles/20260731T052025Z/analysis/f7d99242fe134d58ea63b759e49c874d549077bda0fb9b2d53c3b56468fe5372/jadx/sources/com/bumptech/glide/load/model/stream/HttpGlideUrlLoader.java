package com.bumptech.glide.load.model.stream;

import androidx.work.Configuration;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.HttpUrlFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelCache$1;
import com.bumptech.glide.load.model.ModelCache$ModelKey;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HttpGlideUrlLoader implements ModelLoader {
    public static final Option TIMEOUT = Option.memory(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");
    public final Configuration.Builder modelCache;

    public HttpGlideUrlLoader(Configuration.Builder builder) {
        this.modelCache = builder;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        GlideUrl glideUrl = (GlideUrl) obj;
        Configuration.Builder builder = this.modelCache;
        if (builder != null) {
            ModelCache$1 modelCache$1 = (ModelCache$1) builder.workerFactory;
            ModelCache$ModelKey modelCache$ModelKey = ModelCache$ModelKey.get(glideUrl);
            Object obj2 = modelCache$1.get(modelCache$ModelKey);
            ArrayDeque arrayDeque = ModelCache$ModelKey.KEY_QUEUE;
            synchronized (arrayDeque) {
                arrayDeque.offer(modelCache$ModelKey);
            }
            GlideUrl glideUrl2 = (GlideUrl) obj2;
            if (glideUrl2 == null) {
                modelCache$1.put(ModelCache$ModelKey.get(glideUrl), glideUrl);
            } else {
                glideUrl = glideUrl2;
            }
        }
        return new ModelLoader.LoadData(glideUrl, new HttpUrlFetcher(glideUrl, ((Integer) options.get(TIMEOUT)).intValue()));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean handles(Object obj) {
        return true;
    }
}
