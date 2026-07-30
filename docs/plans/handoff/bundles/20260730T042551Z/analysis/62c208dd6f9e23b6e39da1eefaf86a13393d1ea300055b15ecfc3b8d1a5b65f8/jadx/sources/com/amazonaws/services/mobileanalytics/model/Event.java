package com.amazonaws.services.mobileanalytics.model;

import defpackage.Cif;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class Event implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f8997break;

    /* renamed from: catch, reason: not valid java name */
    public String f8998catch;

    /* renamed from: do, reason: not valid java name */
    public Session f8999do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Map<String, String> f9000do;

    /* renamed from: if, reason: not valid java name */
    public Map<String, Double> f9001if;

    /* renamed from: do, reason: not valid java name */
    public final Map<String, String> m5148do() {
        if (this.f9000do == null) {
            this.f9000do = new HashMap();
        }
        return this.f9000do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Event)) {
            return false;
        }
        Event event = (Event) obj;
        String str = event.f8997break;
        boolean z = str == null;
        String str2 = this.f8997break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = event.f8998catch;
        boolean z2 = str3 == null;
        String str4 = this.f8998catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        Session session = event.f8999do;
        boolean z3 = session == null;
        Session session2 = this.f8999do;
        if (z3 ^ (session2 == null)) {
            return false;
        }
        if (session != null && !session.equals(session2)) {
            return false;
        }
        if ((event.m5148do() == null) ^ (m5148do() == null)) {
            return false;
        }
        if (event.m5148do() != null && !event.m5148do().equals(m5148do())) {
            return false;
        }
        if ((event.m5149if() == null) ^ (m5149if() == null)) {
            return false;
        }
        return event.m5149if() == null || event.m5149if().equals(m5149if());
    }

    public final int hashCode() {
        String str = this.f8997break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f8998catch;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Session session = this.f8999do;
        return ((((((hashCode2 + (session == null ? 0 : session.hashCode())) * 31) + 0) * 31) + (m5148do() == null ? 0 : m5148do().hashCode())) * 31) + (m5149if() != null ? m5149if().hashCode() : 0);
    }

    /* renamed from: if, reason: not valid java name */
    public final Map<String, Double> m5149if() {
        if (this.f9001if == null) {
            this.f9001if = new HashMap();
        }
        return this.f9001if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f8997break != null) {
            Cif.m6909catch(new StringBuilder("EventType: "), this.f8997break, ",", sb);
        }
        if (this.f8998catch != null) {
            Cif.m6909catch(new StringBuilder("Timestamp: "), this.f8998catch, ",", sb);
        }
        if (this.f8999do != null) {
            sb.append("Session: " + this.f8999do + ",");
        }
        if (m5148do() != null) {
            sb.append("Attributes: " + m5148do() + ",");
        }
        if (m5149if() != null) {
            sb.append("Metrics: " + m5149if());
        }
        sb.append("}");
        return sb.toString();
    }
}
