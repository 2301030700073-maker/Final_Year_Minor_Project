package org.wikipedia.analytics.eventplatform;

import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.analytics.SessionData;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AppSessionEvent {
    public long pageLoadStartTime;
    public SessionData sessionData;

    public final void persistSession() {
        String str;
        Prefs prefs = Prefs.INSTANCE;
        SessionData sessionData = this.sessionData;
        sessionData.getClass();
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(SessionData.Companion.serializer(), sessionData);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_session_data, str);
    }

    public final void touchSession() {
        long currentTimeMillis = System.currentTimeMillis();
        long currentTimeMillis2 = System.currentTimeMillis() - this.sessionData.lastTouchTime;
        Prefs prefs = Prefs.INSTANCE;
        int i = PrefsIoUtil.getInt(R.string.preference_key_session_timeout, 30);
        if (i < 1) {
            i = 1;
        }
        if (currentTimeMillis2 > i * 60000) {
            SessionData sessionData = this.sessionData;
            int i2 = (int) (sessionData.lastTouchTime - sessionData.startTime);
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            SessionData sessionData2 = this.sessionData;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            EventPlatformClient.submit(new AppSessionEventImpl(i2, sessionData2, ViewSizeResolver$CC.m785m()));
            TabUtil.SESSION_ID = null;
            Prefs prefs2 = Prefs.INSTANCE;
            PrefsIoUtil.setString(R.string.preference_key_event_platform_session_id, null);
            TabUtil.PAGEVIEW_ID = null;
            this.sessionData = new SessionData();
            persistSession();
        }
        this.sessionData.lastTouchTime = currentTimeMillis;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class AppSessionEventImpl extends MobileAppsEventWithTemp {
        public final List languages;
        public final int length;
        public final SessionData sessionData;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(22))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return AppSessionEvent$AppSessionEventImpl$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AppSessionEventImpl(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2, int i2, SessionData sessionData, List list) {
            super(i, meta, str, z, str2, str3, z2);
            if (448 != (i & 448)) {
                TuplesKt.throwMissingFieldException(i, 448, AppSessionEvent$AppSessionEventImpl$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.length = i2;
            this.sessionData = sessionData;
            this.languages = list;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppSessionEventImpl(int i, SessionData sessionData, List list) {
            super("app_session");
            sessionData.getClass();
            list.getClass();
            this.length = i;
            this.sessionData = sessionData;
            this.languages = list;
        }
    }
}
