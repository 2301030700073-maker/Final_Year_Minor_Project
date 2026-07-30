package com.amazonaws;

import com.amazonaws.auth.Signer;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.regions.Region;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.StringUtils;
import defpackage.V1;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public abstract class AmazonWebServiceClient {

    /* renamed from: do, reason: not valid java name */
    public static final Log f8660do = LogFactory.getLog(AmazonWebServiceClient.class);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ClientConfiguration f8661do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Signer f8662do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AmazonHttpClient f8663do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile String f8664do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile URI f8665do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList f8666do = new CopyOnWriteArrayList();

    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, UrlHttpClient urlHttpClient) {
        this.f8661do = clientConfiguration;
        this.f8663do = new AmazonHttpClient(clientConfiguration, urlHttpClient);
    }

    /* renamed from: case, reason: not valid java name */
    public void m4957case(String str) {
        URI m4961goto = m4961goto(str);
        String m4964try = m4964try();
        Signer m4962if = m4962if(m4964try, AwsHostNameUtils.m5173do(m4961goto.getHost(), m4964try), false);
        synchronized (this) {
            this.f8665do = m4961goto;
            this.f8662do = m4962if;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final String m4958do() {
        Class<?> cls;
        int i;
        if (this != Object.class && !AmazonWebServiceClient.class.isInterface()) {
            cls = getClass();
            while (true) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == AmazonWebServiceClient.class) {
                    break;
                }
                if (superclass == null) {
                    break;
                }
                cls = superclass;
            }
        }
        cls = null;
        String simpleName = cls.getSimpleName();
        HttpClientConfig httpClientConfig = (HttpClientConfig) InternalConfig.Factory.f8784do.f8783new.get(simpleName);
        String str = httpClientConfig != null ? httpClientConfig.f8777do : null;
        if (str != null) {
            return str;
        }
        int indexOf = simpleName.indexOf("JavaClient");
        if (indexOf == -1 && (indexOf = simpleName.indexOf("Client")) == -1) {
            throw new IllegalStateException("Unrecognized suffix for the AWS http client class name ".concat(simpleName));
        }
        int indexOf2 = simpleName.indexOf("Amazon");
        if (indexOf2 == -1) {
            indexOf2 = simpleName.indexOf("AWS");
            if (indexOf2 == -1) {
                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name ".concat(simpleName));
            }
            i = 3;
        } else {
            i = 6;
        }
        if (indexOf2 < indexOf) {
            return StringUtils.m5191do(simpleName.substring(indexOf2 + i, indexOf));
        }
        throw new IllegalStateException("Unrecognized AWS http client class name ".concat(simpleName));
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4959else(Region region) {
        String format;
        if (region == null) {
            throw new IllegalArgumentException("No region provided");
        }
        String m4964try = m4964try();
        if (region.m5122try(m4964try)) {
            format = region.m5121new(m4964try);
            int indexOf = format.indexOf("://");
            if (indexOf >= 0) {
                format = format.substring(indexOf + 3);
            }
        } else {
            format = String.format("%s.%s.%s", m4964try, region.m5120if(), region.m5119do());
            Log log = f8660do;
            StringBuilder m2493break = V1.m2493break("{", m4964try, ", ");
            m2493break.append(region.m5120if());
            m2493break.append("} was not found in region metadata, trying to construct an endpoint using the standard pattern for this region: '");
            m2493break.append(format);
            m2493break.append("'.");
            log.info(m2493break.toString());
        }
        URI m4961goto = m4961goto(format);
        Signer m4962if = m4962if(m4964try, region.m5120if(), false);
        synchronized (this) {
            this.f8665do = m4961goto;
            this.f8662do = m4962if;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final ExecutionContext m4960for(AmazonWebServiceRequest amazonWebServiceRequest) {
        this.f8663do.getClass();
        AwsSdkMetrics.m5057do();
        return new ExecutionContext(this.f8666do, System.getProperty("com.amazonaws.sdk.enableRuntimeProfiling") != null, this);
    }

    /* renamed from: goto, reason: not valid java name */
    public final URI m4961goto(String str) {
        if (!str.contains("://")) {
            str = this.f8661do.f8673do.f8691break + "://" + str;
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        if (r1 != null) goto L16;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.amazonaws.auth.Signer m4962if(java.lang.String r4, java.lang.String r5, boolean r6) {
        /*
            r3 = this;
            com.amazonaws.ClientConfiguration r0 = r3.f8661do
            java.lang.String r0 = r0.f8678if
            if (r0 != 0) goto L46
            j$.util.concurrent.ConcurrentHashMap r0 = com.amazonaws.auth.SignerFactory.f8737do
            com.amazonaws.internal.config.InternalConfig r0 = com.amazonaws.internal.config.InternalConfig.Factory.f8784do
            r0.getClass()
            if (r4 == 0) goto L40
            if (r5 == 0) goto L2d
            java.lang.String r1 = "/"
            java.lang.String r1 = defpackage.Creturn.m7982new(r4, r1, r5)
            java.util.HashMap r2 = r0.f8780do
            java.lang.Object r1 = r2.get(r1)
            com.amazonaws.internal.config.SignerConfig r1 = (com.amazonaws.internal.config.SignerConfig) r1
            if (r1 == 0) goto L22
            goto L39
        L22:
            java.util.HashMap r1 = r0.f8782if
            java.lang.Object r1 = r1.get(r5)
            com.amazonaws.internal.config.SignerConfig r1 = (com.amazonaws.internal.config.SignerConfig) r1
            if (r1 == 0) goto L2d
            goto L39
        L2d:
            java.util.HashMap r1 = r0.f8781for
            java.lang.Object r1 = r1.get(r4)
            com.amazonaws.internal.config.SignerConfig r1 = (com.amazonaws.internal.config.SignerConfig) r1
            if (r1 != 0) goto L39
            com.amazonaws.internal.config.SignerConfig r1 = r0.f8778do
        L39:
            java.lang.String r0 = r1.f8785do
            com.amazonaws.auth.Signer r4 = com.amazonaws.auth.SignerFactory.m5022do(r0, r4)
            goto L4a
        L40:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>()
            throw r4
        L46:
            com.amazonaws.auth.Signer r4 = com.amazonaws.auth.SignerFactory.m5022do(r0, r4)
        L4a:
            boolean r0 = r4 instanceof com.amazonaws.auth.RegionAwareSigner
            if (r0 == 0) goto L58
            r0 = r4
            com.amazonaws.auth.RegionAwareSigner r0 = (com.amazonaws.auth.RegionAwareSigner) r0
            if (r5 == 0) goto L58
            if (r6 == 0) goto L58
            r0.mo4990for(r5)
        L58:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.AmazonWebServiceClient.m4962if(java.lang.String, java.lang.String, boolean):com.amazonaws.auth.Signer");
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public final void m4963new(AWSRequestMetrics aWSRequestMetrics, DefaultRequest defaultRequest, boolean z) {
        if (defaultRequest != null) {
            aWSRequestMetrics.mo5169if(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.f9037do.mo5198if();
            defaultRequest.f8680do.getClass();
            this.f8663do.getClass();
            AwsSdkMetrics.m5057do().getClass();
        }
        if (z) {
            aWSRequestMetrics.mo5170new();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final String m4964try() {
        if (this.f8664do == null) {
            synchronized (this) {
                if (this.f8664do == null) {
                    String m4958do = m4958do();
                    this.f8664do = m4958do;
                    return m4958do;
                }
            }
        }
        return this.f8664do;
    }
}
