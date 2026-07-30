package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import defpackage.Creturn;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class DefaultRequest<T> implements Request<T> {

    /* renamed from: do, reason: not valid java name */
    public int f8679do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AmazonWebServiceRequest f8680do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AWSRequestMetrics f8682do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InputStream f8683do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8684do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public URI f8685do;

    /* renamed from: if, reason: not valid java name */
    public final String f8688if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap f8687do = new LinkedHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8686do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HttpMethodName f8681do = HttpMethodName.POST;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.f8688if = str;
        this.f8680do = amazonWebServiceRequest;
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public final void m4971break(AWSRequestMetrics aWSRequestMetrics) {
        if (this.f8682do != null) {
            throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
        }
        this.f8682do = aWSRequestMetrics;
    }

    /* renamed from: case, reason: not valid java name */
    public final AmazonWebServiceRequest m4972case() {
        return this.f8680do;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4973catch(HashMap hashMap) {
        HashMap hashMap2 = this.f8686do;
        hashMap2.clear();
        hashMap2.putAll(hashMap);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m4974class(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = this.f8687do;
        linkedHashMap2.clear();
        linkedHashMap2.putAll(linkedHashMap);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4975do(String str, String str2) {
        this.f8686do.put(str, str2);
    }

    /* renamed from: else, reason: not valid java name */
    public final LinkedHashMap m4976else() {
        return this.f8687do;
    }

    /* renamed from: for, reason: not valid java name */
    public final URI m4977for() {
        return this.f8685do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final String m4978goto() {
        return this.f8684do;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4979if(String str, String str2) {
        this.f8687do.put(str, str2);
    }

    /* renamed from: new, reason: not valid java name */
    public final HashMap m4980new() {
        return this.f8686do;
    }

    /* renamed from: this, reason: not valid java name */
    public final String m4981this() {
        return this.f8688if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f8681do);
        sb.append(" ");
        sb.append(this.f8685do);
        sb.append(" ");
        String str = this.f8684do;
        if (str == null) {
            sb.append("/");
        } else {
            if (!str.startsWith("/")) {
                sb.append("/");
            }
            sb.append(str);
        }
        sb.append(" ");
        LinkedHashMap linkedHashMap = this.f8687do;
        if (!linkedHashMap.isEmpty()) {
            sb.append("Parameters: (");
            for (String str2 : linkedHashMap.keySet()) {
                Creturn.m7980goto(sb, str2, ": ", (String) linkedHashMap.get(str2), ", ");
            }
            sb.append(") ");
        }
        HashMap hashMap = this.f8686do;
        if (!hashMap.isEmpty()) {
            sb.append("Headers: (");
            for (String str3 : hashMap.keySet()) {
                Creturn.m7980goto(sb, str3, ": ", (String) hashMap.get(str3), ", ");
            }
            sb.append(") ");
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final HttpMethodName m4982try() {
        return this.f8681do;
    }
}
