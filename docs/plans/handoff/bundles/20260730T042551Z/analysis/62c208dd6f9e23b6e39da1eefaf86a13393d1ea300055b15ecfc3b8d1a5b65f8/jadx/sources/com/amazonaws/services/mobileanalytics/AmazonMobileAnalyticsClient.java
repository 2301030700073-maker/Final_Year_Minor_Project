package com.amazonaws.services.mobileanalytics;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.CognitoCachingCredentialsProvider;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.handlers.RequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.http.JsonResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.services.mobileanalytics.model.PutEventsRequest;
import com.amazonaws.services.mobileanalytics.model.transform.BadRequestExceptionUnmarshaller;
import com.amazonaws.services.mobileanalytics.model.transform.PutEventsRequestMarshaller;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class AmazonMobileAnalyticsClient extends AmazonWebServiceClient {

    /* renamed from: do, reason: not valid java name */
    public final AWSCredentialsProvider f8995do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f8996do;

    public AmazonMobileAnalyticsClient(CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider, ClientConfiguration clientConfiguration) {
        super(clientConfiguration, new UrlHttpClient(clientConfiguration));
        this.f8995do = cognitoCachingCredentialsProvider;
        ArrayList arrayList = new ArrayList();
        this.f8996do = arrayList;
        arrayList.add(new BadRequestExceptionUnmarshaller());
        this.f8996do.add(new JsonErrorUnmarshaller());
        super.m4957case("mobileanalytics.us-east-1.amazonaws.com");
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        CopyOnWriteArrayList copyOnWriteArrayList = ((AmazonWebServiceClient) this).f8666do;
        copyOnWriteArrayList.addAll(handlerChainFactory.m5023do(RequestHandler.class, "/com/amazonaws/services/mobileanalytics/request.handlers"));
        copyOnWriteArrayList.addAll(handlerChainFactory.m5023do(RequestHandler2.class, "/com/amazonaws/services/mobileanalytics/request.handler2s"));
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5147this(PutEventsRequest putEventsRequest) {
        ExecutionContext m4960for = m4960for(putEventsRequest);
        AWSRequestMetrics aWSRequestMetrics = m4960for.f8747do;
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.RequestMarshallTime;
        aWSRequestMetrics.mo5166case(field);
        try {
            new PutEventsRequestMarshaller();
            DefaultRequest m5151do = PutEventsRequestMarshaller.m5151do(putEventsRequest);
            m5151do.m4971break(aWSRequestMetrics);
            aWSRequestMetrics.mo5169if(field);
            JsonResponseHandler jsonResponseHandler = new JsonResponseHandler(null);
            m5151do.f8685do = ((AmazonWebServiceClient) this).f8665do;
            m5151do.f8679do = 0;
            AWSRequestMetrics aWSRequestMetrics2 = m4960for.f8747do;
            AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.CredentialsRequestTime;
            aWSRequestMetrics2.mo5166case(field2);
            try {
                AWSCredentials mo4997do = this.f8995do.mo4997do();
                aWSRequestMetrics2.mo5169if(field2);
                m4960for.f8746do = mo4997do;
                ((AmazonWebServiceClient) this).f8663do.m5039if(m5151do, jsonResponseHandler, new JsonErrorResponseHandler(this.f8996do), m4960for);
            } catch (Throwable th) {
                aWSRequestMetrics2.mo5169if(field2);
                throw th;
            }
        } catch (Throwable th2) {
            aWSRequestMetrics.mo5169if(field);
            throw th2;
        }
    }
}
