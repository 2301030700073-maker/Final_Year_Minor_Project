package org.wikipedia.widgets.readingchallenge;

import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.Collections;
import java.util.Map;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingChallengeAnalyticsHelper {
    public static void logHeartbeat(String str, boolean z) {
        Map map;
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-widgetchallenge", testKitchenClient);
        if (z) {
            Prefs prefs = Prefs.INSTANCE;
            map = Collections.singletonMap("streak_count", Integer.valueOf(Prefs.getReadingChallengeStreak()));
            map.getClass();
        } else {
            map = null;
        }
        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "heartbeat", "widget_challenge", null, str, null, map, 116);
    }
}
