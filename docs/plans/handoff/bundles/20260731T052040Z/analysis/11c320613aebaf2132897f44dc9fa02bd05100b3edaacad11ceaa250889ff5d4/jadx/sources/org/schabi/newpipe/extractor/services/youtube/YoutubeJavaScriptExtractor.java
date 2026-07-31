package org.schabi.newpipe.extractor.services.youtube;

import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeJavaScriptExtractor {
    public static final Pattern IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN = Pattern.compile("player\\\\/([a-z0-9]{8})\\\\/");
    public static final Pattern EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN = Pattern.compile("\"jsUrl\":\"(/s/player/[A-Za-z0-9]+/player_ias\\.vflset/[A-Za-z_-]+/base\\.js)\"");

    public static String extractJavaScriptUrlWithIframeResource() {
        try {
            try {
                return "https://www.youtube.com/s/player/" + Parser.matchGroup((String) Utility.downloader.get("https://www.youtube.com/iframe_api", null, Localization.DEFAULT).mHiddenViews, IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN, 1) + "/player_ias.vflset/en_GB/base.js";
            } catch (Parser.RegexException e) {
                Utils$$ExternalSyntheticBUOutline0.m("IFrame resource didn't provide JavaScript base player's hash", e);
                return null;
            }
        } catch (Exception e2) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not fetch IFrame resource", e2);
            return null;
        }
    }
}
