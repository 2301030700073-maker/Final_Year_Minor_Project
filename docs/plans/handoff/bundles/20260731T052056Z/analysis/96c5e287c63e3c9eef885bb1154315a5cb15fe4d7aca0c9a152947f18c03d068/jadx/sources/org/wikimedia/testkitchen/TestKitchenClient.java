package org.wikimedia.testkitchen;

import j$.time.Instant;
import j$.time.ZoneId;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.ConnectionPool;
import okhttp3.Request;
import okio.ByteString;
import okio.Options;
import okio.Path;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TestKitchenClient {
    public static final ZoneId ZONE_Z = ZoneId.of("Z");
    public final Request.Builder eventProcessor;
    public final ByteString.Companion logger;
    public final ConnectionPool samplingController;
    public final SessionController sessionController;
    public final AtomicReference sourceConfig;

    public TestKitchenClient(TestKitchenAdapter testKitchenAdapter, TestKitchenAdapter testKitchenAdapter2, ByteString.Companion companion) {
        this.logger = companion;
        AtomicReference atomicReference = new AtomicReference(null);
        this.sourceConfig = atomicReference;
        Instant now = Instant.now();
        now.getClass();
        SessionController sessionController = new SessionController();
        sessionController.sessionTouched = now;
        sessionController.sessionId = Options.Companion.generateSessionId();
        this.sessionController = sessionController;
        ConnectionPool connectionPool = new ConnectionPool(20, testKitchenAdapter2, sessionController);
        this.samplingController = connectionPool;
        new Path.Companion(13);
        Request.Builder builder = new Request.Builder();
        builder.url = atomicReference;
        builder.method = connectionPool;
        builder.headers = testKitchenAdapter;
        builder.body = companion;
        builder.tags = new LinkedBlockingQueue(16);
        this.eventProcessor = builder;
    }
}
