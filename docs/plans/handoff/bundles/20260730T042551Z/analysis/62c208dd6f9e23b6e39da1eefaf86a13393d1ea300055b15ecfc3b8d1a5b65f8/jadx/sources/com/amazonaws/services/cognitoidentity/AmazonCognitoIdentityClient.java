package com.amazonaws.services.cognitoidentity;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.AnonymousAWSCredentials;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.handlers.RequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.http.JsonResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.transform.ExternalServiceExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InternalErrorExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InvalidIdentityPoolConfigurationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InvalidParameterExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.LimitExceededExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.NotAuthorizedExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ResourceConflictExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ResourceNotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.TooManyRequestsExceptionUnmarshaller;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class AmazonCognitoIdentityClient extends AmazonWebServiceClient implements AmazonCognitoIdentity {

    /* renamed from: do, reason: not valid java name */
    public final AWSCredentialsProvider f8980do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f8981do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AmazonCognitoIdentityClient(AnonymousAWSCredentials anonymousAWSCredentials, ClientConfiguration clientConfiguration) {
        super(clientConfiguration, new UrlHttpClient(clientConfiguration));
        StaticCredentialsProvider staticCredentialsProvider = new StaticCredentialsProvider(anonymousAWSCredentials);
        this.f8980do = staticCredentialsProvider;
        ArrayList arrayList = new ArrayList();
        this.f8981do = arrayList;
        arrayList.add(new InternalErrorExceptionUnmarshaller());
        this.f8981do.add(new InvalidParameterExceptionUnmarshaller());
        this.f8981do.add(new ResourceConflictExceptionUnmarshaller());
        this.f8981do.add(new ExternalServiceExceptionUnmarshaller());
        this.f8981do.add(new InvalidIdentityPoolConfigurationExceptionUnmarshaller());
        this.f8981do.add(new LimitExceededExceptionUnmarshaller());
        this.f8981do.add(new NotAuthorizedExceptionUnmarshaller());
        this.f8981do.add(new ResourceNotFoundExceptionUnmarshaller());
        this.f8981do.add(new TooManyRequestsExceptionUnmarshaller());
        this.f8981do.add(new JsonErrorUnmarshaller());
        super.m4957case("cognito-identity.us-east-1.amazonaws.com");
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        CopyOnWriteArrayList copyOnWriteArrayList = ((AmazonWebServiceClient) this).f8666do;
        copyOnWriteArrayList.addAll(handlerChainFactory.m5023do(RequestHandler.class, "/com/amazonaws/services/cognitoidentity/request.handlers"));
        copyOnWriteArrayList.addAll(handlerChainFactory.m5023do(RequestHandler2.class, "/com/amazonaws/services/cognitoidentity/request.handler2s"));
    }

    /* renamed from: break, reason: not valid java name */
    public final <X, Y extends AmazonWebServiceRequest> Response<X> m5137break(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, ExecutionContext executionContext) {
        DefaultRequest defaultRequest = (DefaultRequest) request;
        defaultRequest.f8685do = ((AmazonWebServiceClient) this).f8665do;
        defaultRequest.f8679do = 0;
        AWSRequestMetrics aWSRequestMetrics = executionContext.f8747do;
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.CredentialsRequestTime;
        aWSRequestMetrics.mo5166case(field);
        try {
            AWSCredentials mo4997do = this.f8980do.mo4997do();
            aWSRequestMetrics.mo5169if(field);
            executionContext.f8746do = mo4997do;
            return ((AmazonWebServiceClient) this).f8663do.m5039if(defaultRequest, httpResponseHandler, new JsonErrorResponseHandler(this.f8981do), executionContext);
        } catch (Throwable th) {
            aWSRequestMetrics.mo5169if(field);
            throw th;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final GetCredentialsForIdentityResult m5138this(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) {
        ExecutionContext m4960for = m4960for(getCredentialsForIdentityRequest);
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        AWSRequestMetrics aWSRequestMetrics = m4960for.f8747do;
        aWSRequestMetrics.mo5166case(field);
        AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
        DefaultRequest defaultRequest = null;
        try {
            aWSRequestMetrics.mo5166case(field2);
            try {
                new GetCredentialsForIdentityRequestMarshaller();
                defaultRequest = GetCredentialsForIdentityRequestMarshaller.m5145do(getCredentialsForIdentityRequest);
                defaultRequest.m4971break(aWSRequestMetrics);
                aWSRequestMetrics.mo5169if(field2);
                return (GetCredentialsForIdentityResult) m5137break(defaultRequest, new JsonResponseHandler(new GetCredentialsForIdentityResultJsonUnmarshaller()), m4960for).f8696do;
            } catch (Throwable th) {
                aWSRequestMetrics.mo5169if(field2);
                throw th;
            }
        } finally {
            m4963new(aWSRequestMetrics, defaultRequest, true);
        }
    }
}
