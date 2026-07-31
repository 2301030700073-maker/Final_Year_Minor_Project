package com.bumptech.glide.load.resource.transcode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TranscoderRegistry$Entry {
    public final Class fromClass;
    public final Class toClass;
    public final ResourceTranscoder transcoder;

    public TranscoderRegistry$Entry(Class cls, Class cls2, ResourceTranscoder resourceTranscoder) {
        this.fromClass = cls;
        this.toClass = cls2;
        this.transcoder = resourceTranscoder;
    }
}
