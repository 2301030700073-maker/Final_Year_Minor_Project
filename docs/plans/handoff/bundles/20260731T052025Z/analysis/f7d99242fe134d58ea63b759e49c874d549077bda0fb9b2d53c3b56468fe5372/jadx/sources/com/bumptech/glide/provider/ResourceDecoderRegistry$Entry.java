package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceDecoderRegistry$Entry {
    public final Class dataClass;
    public final ResourceDecoder decoder;
    public final Class resourceClass;

    public ResourceDecoderRegistry$Entry(Class cls, Class cls2, ResourceDecoder resourceDecoder) {
        this.dataClass = cls;
        this.resourceClass = cls2;
        this.decoder = resourceDecoder;
    }
}
