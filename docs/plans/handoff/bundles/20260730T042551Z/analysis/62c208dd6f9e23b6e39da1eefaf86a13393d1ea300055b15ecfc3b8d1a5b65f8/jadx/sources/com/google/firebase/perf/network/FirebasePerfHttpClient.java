package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import defpackage.AI;
import defpackage.C0113Au;
import defpackage.C0135Bu;
import defpackage.C3351mo;
import defpackage.C4122zt;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes3.dex */
public class FirebasePerfHttpClient {
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpUriRequest.getURI().toString());
            m108for.m115new(httpUriRequest.getMethod());
            Long m236do = C0135Bu.m236do(httpUriRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            HttpResponse execute = httpClient.execute(httpUriRequest);
            m108for.m116super(timer.m6126do());
            m108for.m118try(execute.getStatusLine().getStatusCode());
            Long m236do2 = C0135Bu.m236do(execute);
            if (m236do2 != null) {
                m108for.m113final(m236do2.longValue());
            }
            String m238if = C0135Bu.m238if(execute);
            if (m238if != null) {
                m108for.m110class(m238if);
            }
            m108for.m114if();
            return execute;
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpUriRequest.getURI().toString());
            m108for.m115new(httpUriRequest.getMethod());
            Long m236do = C0135Bu.m236do(httpUriRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            m108for.m116super(timer.m6126do());
            m108for.m118try(execute.getStatusLine().getStatusCode());
            Long m236do2 = C0135Bu.m236do(execute);
            if (m236do2 != null) {
                m108for.m113final(m236do2.longValue());
            }
            String m238if = C0135Bu.m238if(execute);
            if (m238if != null) {
                m108for.m110class(m238if);
            }
            m108for.m114if();
            return execute;
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpUriRequest.getURI().toString());
            m108for.m115new(httpUriRequest.getMethod());
            Long m236do = C0135Bu.m236do(httpUriRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            return (T) httpClient.execute(httpUriRequest, new C3351mo(responseHandler, timer, m108for));
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpUriRequest.getURI().toString());
            m108for.m115new(httpUriRequest.getMethod());
            Long m236do = C0135Bu.m236do(httpUriRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            return (T) httpClient.execute(httpUriRequest, new C3351mo(responseHandler, timer, m108for), httpContext);
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            m108for.m115new(httpRequest.getRequestLine().getMethod());
            Long m236do = C0135Bu.m236do(httpRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            m108for.m116super(timer.m6126do());
            m108for.m118try(execute.getStatusLine().getStatusCode());
            Long m236do2 = C0135Bu.m236do(execute);
            if (m236do2 != null) {
                m108for.m113final(m236do2.longValue());
            }
            String m238if = C0135Bu.m238if(execute);
            if (m238if != null) {
                m108for.m110class(m238if);
            }
            m108for.m114if();
            return execute;
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            m108for.m115new(httpRequest.getRequestLine().getMethod());
            Long m236do = C0135Bu.m236do(httpRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            m108for.m116super(timer.m6126do());
            m108for.m118try(execute.getStatusLine().getStatusCode());
            Long m236do2 = C0135Bu.m236do(execute);
            if (m236do2 != null) {
                m108for.m113final(m236do2.longValue());
            }
            String m238if = C0135Bu.m238if(execute);
            if (m238if != null) {
                m108for.m110class(m238if);
            }
            m108for.m114if();
            return execute;
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            m108for.m115new(httpRequest.getRequestLine().getMethod());
            Long m236do = C0135Bu.m236do(httpRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            return (T) httpClient.execute(httpHost, httpRequest, new C3351mo(responseHandler, timer, m108for));
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        Timer timer = new Timer();
        C0113Au m108for = C0113Au.m108for(AI.f54do);
        try {
            m108for.m117throw(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            m108for.m115new(httpRequest.getRequestLine().getMethod());
            Long m236do = C0135Bu.m236do(httpRequest);
            if (m236do != null) {
                m108for.m112else(m236do.longValue());
            }
            timer.m6127for();
            m108for.m109catch(timer.m6128if());
            return (T) httpClient.execute(httpHost, httpRequest, new C3351mo(responseHandler, timer, m108for), httpContext);
        } catch (IOException e) {
            C4122zt.m8828this(timer, m108for, m108for);
            throw e;
        }
    }
}
