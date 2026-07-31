package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.Resource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ResourceDecoder {
    Resource decode(Object obj, int i, int i2, Options options);

    boolean handles(Object obj, Options options);
}
