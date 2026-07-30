package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import com.amazonaws.util.AwsHostNameUtils;
import java.net.URI;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ExecutionContext {

    /* renamed from: do, reason: not valid java name */
    public final AmazonWebServiceClient f8745do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AWSCredentials f8746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AWSRequestMetrics f8747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<RequestHandler2> f8748do;

    public ExecutionContext(CopyOnWriteArrayList copyOnWriteArrayList, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        this.f8748do = copyOnWriteArrayList;
        this.f8747do = z ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
        this.f8745do = amazonWebServiceClient;
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public final AWSRequestMetrics m5040do() {
        return this.f8747do;
    }

    /* renamed from: for, reason: not valid java name */
    public final Signer m5041for(URI uri) {
        AmazonWebServiceClient amazonWebServiceClient = this.f8745do;
        if (amazonWebServiceClient == null) {
            return null;
        }
        if (uri == null) {
            throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
        }
        String m4964try = amazonWebServiceClient.m4964try();
        return amazonWebServiceClient.m4962if(m4964try, AwsHostNameUtils.m5173do(uri.getHost(), m4964try), true);
    }

    /* renamed from: if, reason: not valid java name */
    public final AWSCredentials m5042if() {
        return this.f8746do;
    }
}
