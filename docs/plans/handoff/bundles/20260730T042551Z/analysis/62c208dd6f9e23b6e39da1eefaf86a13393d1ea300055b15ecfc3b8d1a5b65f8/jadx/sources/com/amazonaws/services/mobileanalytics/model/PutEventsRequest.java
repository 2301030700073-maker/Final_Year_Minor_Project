package com.amazonaws.services.mobileanalytics.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.internal.ListWithAutoConstructFlag;
import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
public class PutEventsRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f9002break;

    /* renamed from: catch, reason: not valid java name */
    public String f9003catch;

    /* renamed from: do, reason: not valid java name */
    public ListWithAutoConstructFlag<Event> f9004do;

    /* renamed from: do, reason: not valid java name */
    public final ListWithAutoConstructFlag m5150do() {
        if (this.f9004do == null) {
            ListWithAutoConstructFlag<Event> listWithAutoConstructFlag = new ListWithAutoConstructFlag<>();
            this.f9004do = listWithAutoConstructFlag;
            listWithAutoConstructFlag.f8773do = true;
        }
        return this.f9004do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PutEventsRequest)) {
            return false;
        }
        PutEventsRequest putEventsRequest = (PutEventsRequest) obj;
        if ((putEventsRequest.m5150do() == null) ^ (m5150do() == null)) {
            return false;
        }
        if (putEventsRequest.m5150do() != null && !putEventsRequest.m5150do().equals(m5150do())) {
            return false;
        }
        String str = putEventsRequest.f9002break;
        boolean z = str == null;
        String str2 = this.f9002break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = putEventsRequest.f9003catch;
        boolean z2 = str3 == null;
        String str4 = this.f9003catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        return str3 == null || str3.equals(str4);
    }

    public final int hashCode() {
        int hashCode = ((m5150do() == null ? 0 : m5150do().hashCode()) + 31) * 31;
        String str = this.f9002break;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f9003catch;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (m5150do() != null) {
            sb.append("Events: " + m5150do() + ",");
        }
        if (this.f9002break != null) {
            Cif.m6909catch(new StringBuilder("ClientContext: "), this.f9002break, ",", sb);
        }
        if (this.f9003catch != null) {
            sb.append("ClientContextEncoding: " + this.f9003catch);
        }
        sb.append("}");
        return sb.toString();
    }
}
