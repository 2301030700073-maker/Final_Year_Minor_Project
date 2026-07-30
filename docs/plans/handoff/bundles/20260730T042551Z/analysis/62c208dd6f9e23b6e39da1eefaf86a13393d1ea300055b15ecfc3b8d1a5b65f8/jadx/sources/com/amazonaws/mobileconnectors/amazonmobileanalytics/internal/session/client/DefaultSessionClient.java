package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration.PreferencesConfiguration;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.DefaultFileManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.FileSessionStore;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.Session;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.SessionStore;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DefaultSessionClient {

    /* renamed from: do, reason: not valid java name */
    public final long f8939do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AnalyticsContext f8940do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InternalEventClient f8941do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Session f8942do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SessionStore f8943do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SessionClientState f8947do;

    /* renamed from: if, reason: not valid java name */
    public final long f8948if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InactiveSessionState f8945do = new InactiveSessionState(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ActiveSessionState f8944do = new ActiveSessionState(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PausedSessionState f8946do = new PausedSessionState(this);

    public enum SessionState {
        INACTIVE,
        ACTIVE,
        PAUSED
    }

    public DefaultSessionClient(DefaultAnalyticsContext defaultAnalyticsContext, DefaultEventClient defaultEventClient, FileSessionStore fileSessionStore) {
        DefaultFileManager defaultFileManager;
        String str;
        this.f8943do = fileSessionStore;
        this.f8941do = defaultEventClient;
        this.f8940do = defaultAnalyticsContext;
        AnalyticsContext analyticsContext = fileSessionStore.f8931do;
        ReentrantReadWriteLock.ReadLock readLock = fileSessionStore.f8934do;
        readLock.lock();
        Session session = null;
        try {
            try {
                fileSessionStore.m5106for();
                BufferedReader bufferedReader = fileSessionStore.f8932do;
                str = bufferedReader != null ? bufferedReader.readLine() : null;
                try {
                    if (defaultFileManager.m5073for(fileSessionStore.f8933do) || !fileSessionStore.f8933do.exists()) {
                        fileSessionStore.f8933do = defaultFileManager.m5074if(fileSessionStore.f8933do);
                    }
                } catch (IOException unused) {
                }
            } finally {
                readLock.unlock();
            }
        } catch (IOException unused2) {
            try {
                if (defaultFileManager.m5073for(fileSessionStore.f8933do) || !fileSessionStore.f8933do.exists()) {
                    fileSessionStore.f8933do = defaultFileManager.m5074if(fileSessionStore.f8933do);
                }
            } catch (IOException unused3) {
            }
            str = null;
        } finally {
            fileSessionStore.m5105do();
            defaultFileManager = ((DefaultAnalyticsContext) analyticsContext).f8805do.f8837do;
            try {
                if (defaultFileManager.m5073for(fileSessionStore.f8933do) || !fileSessionStore.f8933do.exists()) {
                    fileSessionStore.f8933do = defaultFileManager.m5074if(fileSessionStore.f8933do);
                }
            } catch (IOException unused4) {
            }
        }
        if (!(str == null || str.trim().length() == 0)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                session = new Session(jSONObject.getString("session_id"), jSONObject.getString("start_time"), jSONObject.getString("stop_time"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        this.f8942do = session;
        if (session != null) {
            defaultEventClient.f8922do = session.f8937do;
            defaultEventClient.f8918do = session.f8936do.longValue();
        }
        this.f8947do = this.f8942do == null ? this.f8945do : this.f8946do;
        PreferencesConfiguration preferencesConfiguration = defaultAnalyticsContext.f8803do;
        this.f8948if = preferencesConfiguration.m5069if("sessionRestartDelay", 30000L).longValue();
        this.f8939do = preferencesConfiguration.m5069if("sessionResumeDelay", Long.valueOf(OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS)).longValue();
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m5112do(SessionState sessionState) {
        int ordinal = sessionState.ordinal();
        if (ordinal == 0) {
            this.f8947do = this.f8945do;
        } else if (ordinal == 1) {
            this.f8947do = this.f8944do;
        } else if (ordinal == 2) {
            this.f8947do = this.f8946do;
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[DefaultSessionClient]\n- session: ");
        Session session = this.f8942do;
        sb.append(session == null ? "<null>" : session.f8937do);
        Session session2 = this.f8942do;
        if (session2 != null) {
            if (session2.f8938if != null) {
                str = ": paused";
                sb.append(str);
                return sb.toString();
            }
        }
        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        sb.append(str);
        return sb.toString();
    }
}
