package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.DefaultSessionClient;

/* loaded from: classes.dex */
public class PausedSessionState extends SessionClientState {
    public PausedSessionState(DefaultSessionClient defaultSessionClient) {
        super(defaultSessionClient);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: for */
    public final void mo5109for() {
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: new */
    public final void mo5110new() {
        long currentTimeMillis = System.currentTimeMillis();
        DefaultSessionClient defaultSessionClient = this.f8953do;
        if (currentTimeMillis - defaultSessionClient.f8942do.f8938if.longValue() >= defaultSessionClient.f8939do) {
            mo5111try();
            return;
        }
        defaultSessionClient.f8942do.f8938if = null;
        DefaultEventClient defaultEventClient = (DefaultEventClient) defaultSessionClient.f8941do;
        defaultEventClient.m5099case(defaultEventClient.m5101for("_session.resume"));
        String str = defaultSessionClient.f8942do.f8937do;
        defaultSessionClient.m5112do(DefaultSessionClient.SessionState.ACTIVE);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: try */
    public final void mo5111try() {
        m5114if();
        m5113do();
    }
}
