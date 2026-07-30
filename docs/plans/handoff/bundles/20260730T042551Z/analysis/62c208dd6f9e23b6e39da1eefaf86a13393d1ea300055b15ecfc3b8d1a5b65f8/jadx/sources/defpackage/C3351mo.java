package defpackage;

import com.google.firebase.perf.util.Timer;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;

/* renamed from: mo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3351mo<T> implements ResponseHandler<T> {

    /* renamed from: do, reason: not valid java name */
    public final C0113Au f14390do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f14391do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ResponseHandler<? extends T> f14392do;

    public C3351mo(ResponseHandler<? extends T> responseHandler, Timer timer, C0113Au c0113Au) {
        this.f14392do = responseHandler;
        this.f14391do = timer;
        this.f14390do = c0113Au;
    }

    @Override // org.apache.http.client.ResponseHandler
    public final T handleResponse(HttpResponse httpResponse) {
        this.f14390do.m116super(this.f14391do.m6126do());
        this.f14390do.m118try(httpResponse.getStatusLine().getStatusCode());
        Long m236do = C0135Bu.m236do(httpResponse);
        if (m236do != null) {
            this.f14390do.m113final(m236do.longValue());
        }
        String m238if = C0135Bu.m238if(httpResponse);
        if (m238if != null) {
            this.f14390do.m110class(m238if);
        }
        this.f14390do.m114if();
        return this.f14392do.handleResponse(httpResponse);
    }
}
