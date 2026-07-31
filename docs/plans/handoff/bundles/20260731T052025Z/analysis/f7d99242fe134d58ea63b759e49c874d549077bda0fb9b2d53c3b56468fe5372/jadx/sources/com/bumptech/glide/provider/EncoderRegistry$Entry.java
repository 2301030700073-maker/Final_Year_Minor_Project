package com.bumptech.glide.provider;

import com.bumptech.glide.load.Encoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EncoderRegistry$Entry {
    public final Class dataClass;
    public final Encoder encoder;

    public EncoderRegistry$Entry(Class cls, Encoder encoder) {
        this.dataClass = cls;
        this.encoder = encoder;
    }
}
