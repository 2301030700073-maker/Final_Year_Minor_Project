package org.wikipedia.analytics.eventplatform;

import coil3.network.NetworkHeaders;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.Headers;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class EditAttemptStepEvent extends EventWithDt {
    public static final Companion Companion = new Companion();
    public final EditAttemptStepInteractionEvent event;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static void logSaveSuccess(PageTitle pageTitle, String str) {
            pageTitle.getClass();
            submitEditAttemptEvent("saveSuccess", str, pageTitle);
        }

        public static void submitEditAttemptEvent(String str, String str2, PageTitle pageTitle) {
            Integer intOrNull;
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Jsoup.getInstance();
            String appInstallID = WikipediaApp.getAppInstallID();
            String string = Jsoup.getInstance().getString(R.string.device_type);
            string.getClass();
            String lowerCase = string.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            WikiSite wikiSite = pageTitle.wikiSite;
            int i = 0;
            if (Headers.Companion.isLoggedIn()) {
                if (NetworkHeaders.Builder.INSTANCE == null) {
                    try {
                        Prefs prefs = Prefs.INSTANCE;
                        NetworkHeaders.Builder.INSTANCE = new NetworkHeaders.Builder(new LinkedHashMap(Prefs.getCookies()));
                    } catch (Exception e) {
                        L.logRemoteErrorIfProd(e);
                    }
                }
                NetworkHeaders.Builder builder = NetworkHeaders.Builder.INSTANCE;
                if (builder == null) {
                    builder = new NetworkHeaders.Builder(new LinkedHashMap());
                    NetworkHeaders.Builder.INSTANCE = builder;
                }
                String cookieByName = builder.getCookieByName("UserID", wikiSite.authority(), false);
                if (cookieByName != null && (intOrNull = StringsKt__StringsJVMKt.toIntOrNull(cookieByName)) != null) {
                    i = intOrNull.intValue();
                }
            }
            EventPlatformClient.submit(new EditAttemptStepEvent(new EditAttemptStepInteractionEvent(str, appInstallID, str2, lowerCase, i, !Headers.Companion.isLoggedIn(), Headers.Companion.isTemporaryAccount(), pageTitle.getPrefixedText(), pageTitle.namespace().code(), pageTitle.wikiSite.dbName())));
        }

        public final KSerializer serializer() {
            return EditAttemptStepEvent$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EditAttemptStepEvent(int i, Event.Meta meta, String str, EditAttemptStepInteractionEvent editAttemptStepInteractionEvent) {
        super(i, meta, str);
        if (4 != (i & 4)) {
            TuplesKt.throwMissingFieldException(i, 4, EditAttemptStepEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.event = editAttemptStepInteractionEvent;
    }

    public EditAttemptStepEvent(EditAttemptStepInteractionEvent editAttemptStepInteractionEvent) {
        super("eventlogging_EditAttemptStep");
        this.event = editAttemptStepInteractionEvent;
    }
}
