package com.bumptech.glide.load.model;

import android.net.Uri;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UrlUriLoader implements ModelLoader {
    public static final Set SCHEMES = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));
    public final ModelLoader urlLoader;

    public UrlUriLoader(ModelLoader modelLoader) {
        this.urlLoader = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        return this.urlLoader.buildLoadData(new GlideUrl(((Uri) obj).toString()), i, i2, options);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Object obj) {
        return SCHEMES.contains(((Uri) obj).getScheme());
    }
}
