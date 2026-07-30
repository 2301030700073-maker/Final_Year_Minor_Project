package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.Session;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.DefaultSessionClient;

/* loaded from: classes.dex */
public abstract class SessionClientState {

    /* renamed from: do, reason: not valid java name */
    public final DefaultSessionClient f8953do;

    public SessionClientState(DefaultSessionClient defaultSessionClient) {
        this.f8953do = defaultSessionClient;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5113do() {
        DefaultSessionClient defaultSessionClient = this.f8953do;
        Session session = new Session(defaultSessionClient.f8940do);
        defaultSessionClient.f8942do = session;
        InternalEventClient internalEventClient = defaultSessionClient.f8941do;
        DefaultEventClient defaultEventClient = (DefaultEventClient) internalEventClient;
        defaultEventClient.f8922do = session.f8937do;
        defaultEventClient.f8918do = session.f8936do.longValue();
        ((DefaultEventClient) internalEventClient).m5099case(((DefaultEventClient) internalEventClient).m5101for("_session.start"));
        defaultSessionClient.m5112do(DefaultSessionClient.SessionState.ACTIVE);
    }

    /* renamed from: for */
    public abstract void mo5109for();

    /* renamed from: if, reason: not valid java name */
    public final void m5114if() {
        DefaultSessionClient defaultSessionClient = this.f8953do;
        Session session = defaultSessionClient.f8942do;
        Long l = session.f8938if;
        if (!(l != null)) {
            if (!(l != null)) {
                session.f8938if = Long.valueOf(System.currentTimeMillis());
            }
        }
        Long l2 = defaultSessionClient.f8942do.f8938if;
        Long valueOf = Long.valueOf(l2 == null ? 0L : l2.longValue());
        long longValue = defaultSessionClient.f8942do.f8936do.longValue();
        Long m5108try = defaultSessionClient.f8942do.m5108try();
        InternalEventClient internalEventClient = defaultSessionClient.f8941do;
        ((DefaultEventClient) internalEventClient).m5099case(((DefaultEventClient) internalEventClient).m5102new("_session.stop", longValue, valueOf, m5108try));
        defaultSessionClient.f8942do = null;
        defaultSessionClient.m5112do(DefaultSessionClient.SessionState.INACTIVE);
    }

    /* renamed from: new */
    public abstract void mo5110new();

    /* renamed from: try */
    public abstract void mo5111try();
}
