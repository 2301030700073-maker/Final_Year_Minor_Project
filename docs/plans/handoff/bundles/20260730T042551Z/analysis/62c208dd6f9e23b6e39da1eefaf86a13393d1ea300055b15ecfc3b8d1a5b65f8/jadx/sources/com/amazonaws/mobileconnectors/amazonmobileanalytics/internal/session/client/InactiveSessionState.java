package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;

/* loaded from: classes.dex */
public class InactiveSessionState extends SessionClientState {
    public InactiveSessionState(DefaultSessionClient defaultSessionClient) {
        super(defaultSessionClient);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: for */
    public final void mo5109for() {
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: new */
    public final void mo5110new() {
        DefaultSessionClient defaultSessionClient = this.f8953do;
        ((DefaultEventClient) defaultSessionClient.f8941do).m5099case(((DefaultEventClient) defaultSessionClient.f8941do).m5101for("_session.resume"));
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: try */
    public final void mo5111try() {
        m5113do();
    }
}
