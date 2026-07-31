package okhttp3.internal.connection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface RoutePlanner$Plan {
    void cancel();

    RoutePlanner$ConnectResult connectTcp();

    RoutePlanner$ConnectResult connectTlsEtc();

    RealConnection handleSuccess();

    boolean isReady();

    RoutePlanner$Plan retry();
}
