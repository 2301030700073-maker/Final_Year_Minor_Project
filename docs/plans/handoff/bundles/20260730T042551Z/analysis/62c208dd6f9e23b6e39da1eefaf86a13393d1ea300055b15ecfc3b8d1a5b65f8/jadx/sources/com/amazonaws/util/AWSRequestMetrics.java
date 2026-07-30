package com.amazonaws.util;

import java.io.Serializable;

@Deprecated
/* loaded from: classes.dex */
public class AWSRequestMetrics {

    /* renamed from: do, reason: not valid java name */
    public final TimingInfo f9037do;

    public enum Field {
        AWSErrorCode,
        AWSRequestID,
        /* JADX INFO: Fake field, exist only in values array */
        BytesProcessed,
        ClientExecuteTime,
        CredentialsRequestTime,
        Exception,
        HttpRequestTime,
        RedirectLocation,
        RequestMarshallTime,
        RequestSigningTime,
        ResponseProcessingTime,
        RequestCount,
        RetryCount,
        HttpClientRetryCount,
        HttpClientSendRequestTime,
        HttpClientReceiveResponseTime,
        HttpClientPoolAvailableCount,
        HttpClientPoolLeasedCount,
        HttpClientPoolPendingCount,
        RetryPauseTime,
        ServiceEndpoint,
        ServiceName,
        StatusCode
    }

    public AWSRequestMetrics() {
        System.currentTimeMillis();
        this.f9037do = new TimingInfo(System.nanoTime(), null);
    }

    /* renamed from: case, reason: not valid java name */
    public void mo5166case(Field field) {
    }

    /* renamed from: do, reason: not valid java name */
    public void mo5167do(Field field, Serializable serializable) {
    }

    /* renamed from: for, reason: not valid java name */
    public void mo5168for() {
    }

    /* renamed from: if, reason: not valid java name */
    public void mo5169if(Field field) {
    }

    /* renamed from: new, reason: not valid java name */
    public void mo5170new() {
    }

    /* renamed from: try, reason: not valid java name */
    public void mo5171try(long j) {
    }

    public AWSRequestMetrics(TimingInfo timingInfo) {
        this.f9037do = timingInfo;
    }
}
