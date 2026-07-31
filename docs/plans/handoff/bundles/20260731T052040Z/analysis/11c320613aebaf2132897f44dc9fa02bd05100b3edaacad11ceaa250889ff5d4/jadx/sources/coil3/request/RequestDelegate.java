package coil3.request;

import coil3.RealImageLoader$execute$3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface RequestDelegate {
    void assertActive();

    Object awaitStarted(RealImageLoader$execute$3 realImageLoader$execute$3);

    void complete();

    void start();
}
