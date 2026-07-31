package org.wikipedia.analytics.eventplatform;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import okhttp3.Headers;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class MobileAppsEvent extends EventWithDt {
    public final boolean anon;
    public final String appInstallId;
    public final String sessionId;
    public static final Companion Companion = new Companion();
    public static final Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(26));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) MobileAppsEvent.$cachedSerializer$delegate.getValue();
        }
    }

    public /* synthetic */ MobileAppsEvent(int i, Event.Meta meta, String str, boolean z, String str2, String str3) {
        super(i, meta, str);
        if ((i & 4) == 0) {
            this.anon = !Headers.Companion.isLoggedIn();
        } else {
            this.anon = z;
        }
        if ((i & 8) == 0) {
            this.sessionId = TabUtil.getSessionId();
        } else {
            this.sessionId = str2;
        }
        if ((i & 16) != 0) {
            this.appInstallId = str3;
            return;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance();
        this.appInstallId = WikipediaApp.getAppInstallID();
    }

    public static final /* synthetic */ void write$Self(MobileAppsEvent mobileAppsEvent, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
        Event.write$Self(mobileAppsEvent, uuidKt, serialDescriptor);
        uuidKt.encodeStringElement(serialDescriptor, 1, mobileAppsEvent.dt);
        uuidKt.encodeBooleanElement(serialDescriptor, 2, mobileAppsEvent.anon);
        uuidKt.encodeStringElement(serialDescriptor, 3, mobileAppsEvent.sessionId);
        uuidKt.encodeStringElement(serialDescriptor, 4, mobileAppsEvent.appInstallId);
    }

    public MobileAppsEvent(String str) {
        super(str);
        this.anon = !Headers.Companion.isLoggedIn();
        this.sessionId = TabUtil.getSessionId();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance();
        this.appInstallId = WikipediaApp.getAppInstallID();
    }
}
