package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Response;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.DateUtils;
import defpackage.C4122zt;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class AmazonHttpClient {

    /* renamed from: do, reason: not valid java name */
    public static final Log f8740do = LogFactory.getLog("com.amazonaws.request");

    /* renamed from: if, reason: not valid java name */
    public static final Log f8741if = LogFactory.getLog(AmazonHttpClient.class);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ClientConfiguration f8742do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HttpClient f8743do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HttpRequestFactory f8744do = new HttpRequestFactory();

    public AmazonHttpClient(ClientConfiguration clientConfiguration, UrlHttpClient urlHttpClient) {
        this.f8742do = clientConfiguration;
        this.f8743do = urlHttpClient;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m5030case(HttpResponse httpResponse) {
        String str = httpResponse.f8760do.get("Location");
        return (httpResponse.f8757do != 307 || str == null || str.isEmpty()) ? false : true;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m5031do(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + " " + str2.trim();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v14, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.String] */
    /* renamed from: else, reason: not valid java name */
    public static int m5032else(HttpResponse httpResponse, AmazonServiceException amazonServiceException) {
        Date m5180else;
        Date date = new Date();
        String str = httpResponse.m5049if().get("Date");
        try {
            if (str != 0) {
                try {
                    if (!str.isEmpty()) {
                        m5180else = DateUtils.m5180else(str);
                        str = (int) ((date.getTime() - m5180else.getTime()) / 1000);
                        return str;
                    }
                } catch (RuntimeException e) {
                    e = e;
                    str = 0;
                    f8741if.warn(C4122zt.m8824for("Unable to parse clock skew offset from response: ", str), e);
                    return 0;
                }
            }
            String message = amazonServiceException.getMessage();
            m5180else = DateUtils.m5184try(message.substring(message.indexOf("(") + 1, message.contains(" + 15") ? message.indexOf(" + 15") : message.indexOf(" - 15")));
            str = (int) ((date.getTime() - m5180else.getTime()) / 1000);
            return str;
        } catch (RuntimeException e2) {
            e = e2;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static long m5033goto(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i, RetryPolicy retryPolicy) {
        int i2 = (i - 1) - 1;
        long mo5130do = retryPolicy.m5132do().mo5130do(i2);
        Log log = f8741if;
        if (log.isDebugEnabled()) {
            log.debug("Retriable error detected, will retry in " + mo5130do + "ms, attempt number: " + i2);
        }
        try {
            Thread.sleep(mo5130do);
            return mo5130do;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e.getMessage(), e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static AmazonServiceException m5034new(DefaultRequest defaultRequest, HttpResponseHandler httpResponseHandler, HttpResponse httpResponse) {
        AmazonServiceException amazonServiceException;
        int m5050new = httpResponse.m5050new();
        try {
            amazonServiceException = (AmazonServiceException) httpResponseHandler.mo5052do(httpResponse);
            f8740do.debug("Received error response: " + amazonServiceException.toString());
        } catch (Exception e) {
            if (m5050new == 413) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.m4956try(defaultRequest.m4981this());
                amazonServiceException.m4951case(413);
                amazonServiceException.m4955new("Request entity too large");
            } else {
                if (m5050new != 503 || !"Service Unavailable".equalsIgnoreCase(httpResponse.m5051try())) {
                    if (e instanceof IOException) {
                        throw ((IOException) e);
                    }
                    throw new AmazonClientException("Unable to unmarshall error response (" + e.getMessage() + "). Response Code: " + m5050new + ", Response Text: " + httpResponse.m5051try(), e);
                }
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.m4956try(defaultRequest.m4981this());
                amazonServiceException.m4951case(503);
                amazonServiceException.m4955new("Service unavailable");
            }
        }
        amazonServiceException.m4951case(m5050new);
        amazonServiceException.m4956try(defaultRequest.m4981this());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m5035this(DefaultRequest defaultRequest, Exception exc) {
        InputStream inputStream = defaultRequest.f8683do;
        if (inputStream == null) {
            return;
        }
        if (!inputStream.markSupported()) {
            throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
        }
        try {
            defaultRequest.f8683do.reset();
        } catch (IOException unused) {
            throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Object m5036try(HttpResponseHandler httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) {
        try {
            AWSRequestMetrics m5040do = executionContext.m5040do();
            AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ResponseProcessingTime;
            m5040do.mo5166case(field);
            try {
                AmazonWebServiceResponse amazonWebServiceResponse = (AmazonWebServiceResponse) httpResponseHandler.mo5052do(httpResponse);
                if (amazonWebServiceResponse == null) {
                    throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.m5050new() + ", Response Text: " + httpResponse.m5051try());
                }
                Log log = f8740do;
                if (log.isDebugEnabled()) {
                    log.debug("Received successful response: " + httpResponse.m5050new() + ", AWS Request ID: " + amazonWebServiceResponse.m4965do());
                }
                m5040do.mo5167do(AWSRequestMetrics.Field.AWSRequestID, amazonWebServiceResponse.m4965do());
                return amazonWebServiceResponse.m4967if();
            } finally {
                m5040do.mo5169if(field);
            }
        } catch (CRC32MismatchException e) {
            throw e;
        } catch (IOException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new AmazonClientException("Unable to unmarshall response (" + e3.getMessage() + "). Response Code: " + httpResponse.m5050new() + ", Response Text: " + httpResponse.m5051try(), e3);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m5037break(AmazonWebServiceRequest amazonWebServiceRequest, InputStream inputStream, AmazonClientException amazonClientException, int i, RetryPolicy retryPolicy) {
        int i2 = i - 1;
        int m4969do = this.f8742do.m4969do();
        if (m4969do < 0 || !retryPolicy.m5135new()) {
            m4969do = retryPolicy.m5134if();
        }
        if (i2 >= m4969do) {
            return false;
        }
        if (inputStream == null || inputStream.markSupported()) {
            return ((PredefinedRetryPolicies.SDKDefaultRetryCondition) retryPolicy.m5133for()).m5131do(amazonClientException);
        }
        Log log = f8741if;
        if (log.isDebugEnabled()) {
            log.debug("Content not repeatable");
        }
        return false;
    }

    public final void finalize() {
        this.f8743do.getClass();
        super.finalize();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0462 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:219:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x015c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03e0 A[Catch: all -> 0x03b2, TRY_ENTER, TryCatch #11 {all -> 0x03b2, blocks: (B:19:0x00a2, B:26:0x00b3, B:29:0x00ee, B:32:0x00f9, B:249:0x010d, B:39:0x0121, B:42:0x0127, B:45:0x012c, B:46:0x0130, B:55:0x03d8, B:58:0x03e0, B:59:0x03f6, B:61:0x042e, B:74:0x045c, B:75:0x0131, B:77:0x0139, B:78:0x0151, B:244:0x015c, B:81:0x0162, B:85:0x016b, B:87:0x0171, B:88:0x0179, B:90:0x017f, B:92:0x0198, B:233:0x0373, B:234:0x0376, B:274:0x00c4, B:275:0x00c7), top: B:18:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x042e A[Catch: all -> 0x03b2, TRY_LEAVE, TryCatch #11 {all -> 0x03b2, blocks: (B:19:0x00a2, B:26:0x00b3, B:29:0x00ee, B:32:0x00f9, B:249:0x010d, B:39:0x0121, B:42:0x0127, B:45:0x012c, B:46:0x0130, B:55:0x03d8, B:58:0x03e0, B:59:0x03f6, B:61:0x042e, B:74:0x045c, B:75:0x0131, B:77:0x0139, B:78:0x0151, B:244:0x015c, B:81:0x0162, B:85:0x016b, B:87:0x0171, B:88:0x0179, B:90:0x017f, B:92:0x0198, B:233:0x0373, B:234:0x0376, B:274:0x00c4, B:275:0x00c7), top: B:18:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x045c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0139 A[Catch: Error -> 0x00b7, RuntimeException -> 0x00ba, IOException -> 0x0396, all -> 0x03b2, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x03b2, blocks: (B:19:0x00a2, B:26:0x00b3, B:29:0x00ee, B:32:0x00f9, B:249:0x010d, B:39:0x0121, B:42:0x0127, B:45:0x012c, B:46:0x0130, B:55:0x03d8, B:58:0x03e0, B:59:0x03f6, B:61:0x042e, B:74:0x045c, B:75:0x0131, B:77:0x0139, B:78:0x0151, B:244:0x015c, B:81:0x0162, B:85:0x016b, B:87:0x0171, B:88:0x0179, B:90:0x017f, B:92:0x0198, B:233:0x0373, B:234:0x0376, B:274:0x00c4, B:275:0x00c7), top: B:18:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0168  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.amazonaws.Response m5038for(com.amazonaws.DefaultRequest r28, com.amazonaws.http.HttpResponseHandler r29, com.amazonaws.http.HttpResponseHandler r30, com.amazonaws.http.ExecutionContext r31) {
        /*
            Method dump skipped, instructions count: 1141
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.m5038for(com.amazonaws.DefaultRequest, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.ExecutionContext):com.amazonaws.Response");
    }

    /* renamed from: if, reason: not valid java name */
    public final Response m5039if(DefaultRequest defaultRequest, HttpResponseHandler httpResponseHandler, HttpResponseHandler httpResponseHandler2, ExecutionContext executionContext) {
        List<RequestHandler2> list = executionContext.f8748do;
        if (list == null) {
            list = Collections.emptyList();
        } else {
            for (RequestHandler2 requestHandler2 : list) {
                if (requestHandler2 instanceof CredentialsRequestHandler) {
                    ((CredentialsRequestHandler) requestHandler2).f8738do = executionContext.f8746do;
                }
                requestHandler2.mo5028for(defaultRequest);
            }
        }
        AWSRequestMetrics aWSRequestMetrics = executionContext.f8747do;
        try {
            Response m5038for = m5038for(defaultRequest, httpResponseHandler, httpResponseHandler2, executionContext);
            aWSRequestMetrics.f9037do.mo5198if();
            Iterator<RequestHandler2> it = list.iterator();
            while (it.hasNext()) {
                it.next().mo5029if(defaultRequest, m5038for);
            }
            return m5038for;
        } catch (AmazonClientException e) {
            Iterator<RequestHandler2> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().mo5027do(defaultRequest, e);
            }
            throw e;
        }
    }
}
