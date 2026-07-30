package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.FileSessionStore;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.Session;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.DefaultSessionClient;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class ActiveSessionState extends SessionClientState {
    public ActiveSessionState(DefaultSessionClient defaultSessionClient) {
        super(defaultSessionClient);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: for, reason: not valid java name */
    public final void mo5109for() {
        DefaultSessionClient defaultSessionClient = this.f8953do;
        Session session = defaultSessionClient.f8942do;
        if (!(session.f8938if != null)) {
            session.f8938if = Long.valueOf(System.currentTimeMillis());
        }
        Session session2 = defaultSessionClient.f8942do;
        String str = session2.f8937do;
        long longValue = session2.f8936do.longValue();
        Long m5108try = defaultSessionClient.f8942do.m5108try();
        DefaultEventClient defaultEventClient = (DefaultEventClient) defaultSessionClient.f8941do;
        defaultEventClient.m5099case(defaultEventClient.m5102new("_session.pause", longValue, null, m5108try));
        Session session3 = defaultSessionClient.f8942do;
        FileSessionStore fileSessionStore = (FileSessionStore) defaultSessionClient.f8943do;
        fileSessionStore.getClass();
        String jSONObject = session3.mo5076if().toString();
        ReentrantReadWriteLock.WriteLock writeLock = fileSessionStore.f8935do;
        writeLock.lock();
        OutputStreamWriter outputStreamWriter = null;
        try {
            try {
                outputStreamWriter = fileSessionStore.m5107if();
                if (outputStreamWriter != null) {
                    if (fileSessionStore.f8933do.length() + jSONObject.length() <= ((DefaultAnalyticsContext) fileSessionStore.f8931do).f8803do.m5069if("maxStorageSize", 22560L).longValue()) {
                        outputStreamWriter.write(jSONObject);
                        outputStreamWriter.flush();
                    }
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                if (outputStreamWriter != null) {
                    try {
                        outputStreamWriter.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
            if (outputStreamWriter != null) {
                try {
                    outputStreamWriter.close();
                } catch (IOException unused3) {
                }
            }
            writeLock.unlock();
            defaultSessionClient.m5112do(DefaultSessionClient.SessionState.PAUSED);
        } catch (Throwable th2) {
            writeLock.unlock();
            throw th2;
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: new, reason: not valid java name */
    public final void mo5110new() {
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.SessionClientState
    /* renamed from: try, reason: not valid java name */
    public final void mo5111try() {
        long currentTimeMillis = System.currentTimeMillis();
        DefaultSessionClient defaultSessionClient = this.f8953do;
        if (currentTimeMillis - defaultSessionClient.f8942do.f8936do.longValue() > defaultSessionClient.f8948if) {
            m5114if();
            m5113do();
        }
    }
}
