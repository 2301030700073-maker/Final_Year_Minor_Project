package defpackage;

import com.google.firebase.perf.util.Timer;
import defpackage.C4123zu;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

/* renamed from: lo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3292lo {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f14246do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0113Au f14248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f14249do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HttpURLConnection f14250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f14247do = -1;

    /* renamed from: if, reason: not valid java name */
    public long f14251if = -1;

    public C3292lo(HttpURLConnection httpURLConnection, Timer timer, C0113Au c0113Au) {
        this.f14250do = httpURLConnection;
        this.f14248do = c0113Au;
        this.f14249do = timer;
        c0113Au.m117throw(httpURLConnection.getURL().toString());
    }

    /* renamed from: case, reason: not valid java name */
    public final OutputStream m7387case() {
        Timer timer = this.f14249do;
        C0113Au c0113Au = this.f14248do;
        try {
            OutputStream outputStream = this.f14250do.getOutputStream();
            return outputStream != null ? new C2947io(outputStream, c0113Au, timer) : outputStream;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7388do() {
        long j = this.f14247do;
        C0113Au c0113Au = this.f14248do;
        Timer timer = this.f14249do;
        if (j == -1) {
            timer.m6127for();
            long j2 = timer.f11971do;
            this.f14247do = j2;
            c0113Au.m109catch(j2);
        }
        try {
            this.f14250do.connect();
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final int m7389else() {
        m7394this();
        long j = this.f14251if;
        Timer timer = this.f14249do;
        C0113Au c0113Au = this.f14248do;
        if (j == -1) {
            long m6126do = timer.m6126do();
            this.f14251if = m6126do;
            C4123zu.Cdo cdo = c0113Au.f165do;
            cdo.m6307super();
            C4123zu.m8835synchronized((C4123zu) cdo.f12107if, m6126do);
        }
        try {
            int responseCode = this.f14250do.getResponseCode();
            c0113Au.m118try(responseCode);
            return responseCode;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    public final boolean equals(Object obj) {
        return this.f14250do.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public final Object m7390for(Class[] clsArr) {
        Timer timer = this.f14249do;
        m7394this();
        HttpURLConnection httpURLConnection = this.f14250do;
        int responseCode = httpURLConnection.getResponseCode();
        C0113Au c0113Au = this.f14248do;
        c0113Au.m118try(responseCode);
        try {
            Object content = httpURLConnection.getContent(clsArr);
            if (content instanceof InputStream) {
                c0113Au.m110class(httpURLConnection.getContentType());
                return new C2889ho((InputStream) content, c0113Au, timer);
            }
            c0113Au.m110class(httpURLConnection.getContentType());
            c0113Au.m113final(httpURLConnection.getContentLength());
            c0113Au.m116super(timer.m6126do());
            c0113Au.m114if();
            return content;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final String m7391goto() {
        HttpURLConnection httpURLConnection = this.f14250do;
        m7394this();
        long j = this.f14251if;
        Timer timer = this.f14249do;
        C0113Au c0113Au = this.f14248do;
        if (j == -1) {
            long m6126do = timer.m6126do();
            this.f14251if = m6126do;
            C4123zu.Cdo cdo = c0113Au.f165do;
            cdo.m6307super();
            C4123zu.m8835synchronized((C4123zu) cdo.f12107if, m6126do);
        }
        try {
            String responseMessage = httpURLConnection.getResponseMessage();
            c0113Au.m118try(httpURLConnection.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    public final int hashCode() {
        return this.f14250do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final Object m7392if() {
        Timer timer = this.f14249do;
        m7394this();
        HttpURLConnection httpURLConnection = this.f14250do;
        int responseCode = httpURLConnection.getResponseCode();
        C0113Au c0113Au = this.f14248do;
        c0113Au.m118try(responseCode);
        try {
            Object content = httpURLConnection.getContent();
            if (content instanceof InputStream) {
                c0113Au.m110class(httpURLConnection.getContentType());
                return new C2889ho((InputStream) content, c0113Au, timer);
            }
            c0113Au.m110class(httpURLConnection.getContentType());
            c0113Au.m113final(httpURLConnection.getContentLength());
            c0113Au.m116super(timer.m6126do());
            c0113Au.m114if();
            return content;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final InputStream m7393new() {
        HttpURLConnection httpURLConnection = this.f14250do;
        C0113Au c0113Au = this.f14248do;
        m7394this();
        try {
            c0113Au.m118try(httpURLConnection.getResponseCode());
        } catch (IOException unused) {
            f14246do.m1820do();
        }
        InputStream errorStream = httpURLConnection.getErrorStream();
        return errorStream != null ? new C2889ho(errorStream, c0113Au, this.f14249do) : errorStream;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m7394this() {
        long j = this.f14247do;
        C0113Au c0113Au = this.f14248do;
        if (j == -1) {
            Timer timer = this.f14249do;
            timer.m6127for();
            long j2 = timer.f11971do;
            this.f14247do = j2;
            c0113Au.m109catch(j2);
        }
        HttpURLConnection httpURLConnection = this.f14250do;
        String requestMethod = httpURLConnection.getRequestMethod();
        if (requestMethod != null) {
            c0113Au.m115new(requestMethod);
        } else if (httpURLConnection.getDoOutput()) {
            c0113Au.m115new("POST");
        } else {
            c0113Au.m115new("GET");
        }
    }

    public final String toString() {
        return this.f14250do.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final InputStream m7395try() {
        Timer timer = this.f14249do;
        m7394this();
        HttpURLConnection httpURLConnection = this.f14250do;
        int responseCode = httpURLConnection.getResponseCode();
        C0113Au c0113Au = this.f14248do;
        c0113Au.m118try(responseCode);
        c0113Au.m110class(httpURLConnection.getContentType());
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            return inputStream != null ? new C2889ho(inputStream, c0113Au, timer) : inputStream;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }
}
