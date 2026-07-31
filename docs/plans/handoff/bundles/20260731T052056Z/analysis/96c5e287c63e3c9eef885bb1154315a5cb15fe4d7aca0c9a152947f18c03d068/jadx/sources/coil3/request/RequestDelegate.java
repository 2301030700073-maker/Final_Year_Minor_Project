package coil3.request;

import coil3.RealImageLoader$execute$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface RequestDelegate {
    void assertActive();

    Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3);

    void complete();

    void start();
}
