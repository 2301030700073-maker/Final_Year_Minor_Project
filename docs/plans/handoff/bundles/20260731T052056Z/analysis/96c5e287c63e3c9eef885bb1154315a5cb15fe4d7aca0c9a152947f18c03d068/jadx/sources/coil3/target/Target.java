package coil3.target;

import coil3.Image;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Target {
    void onError(Image image);

    void onStart(Image image);

    void onSuccess(Image image);
}
