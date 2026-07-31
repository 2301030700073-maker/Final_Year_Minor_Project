package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceEncoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceEncoderRegistry$Entry {
    public final ResourceEncoder encoder;
    public final Class resourceClass;

    public ResourceEncoderRegistry$Entry(Class cls, ResourceEncoder resourceEncoder) {
        this.resourceClass = cls;
        this.encoder = resourceEncoder;
    }
}
