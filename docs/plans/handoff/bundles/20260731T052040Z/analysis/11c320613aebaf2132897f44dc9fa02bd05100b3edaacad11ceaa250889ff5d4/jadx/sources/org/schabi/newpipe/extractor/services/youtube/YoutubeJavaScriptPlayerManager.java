package org.schabi.newpipe.extractor.services.youtube;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeJavaScriptPlayerManager {
    public static final HashMap CACHED_THROTTLING_PARAMETERS = new HashMap();
    public static String cachedJavaScriptPlayerCode;
    public static String cachedSignatureDeobfuscationFunction;
    public static String cachedThrottlingDeobfuscationFunction;
    public static String cachedThrottlingDeobfuscationFunctionName;
    public static ParsingException sigDeobFuncExtractionEx;
    public static ParsingException throttlingDeobfFuncExtractionEx;

    public static void extractJavaScriptCodeIfNeeded(String str) {
        String matchGroup;
        String str2;
        Localization localization = Localization.DEFAULT;
        if (cachedJavaScriptPlayerCode == null) {
            try {
                String extractJavaScriptUrlWithIframeResource = YoutubeJavaScriptExtractor.extractJavaScriptUrlWithIframeResource();
                if (extractJavaScriptUrlWithIframeResource.startsWith("//")) {
                    extractJavaScriptUrlWithIframeResource = "https:".concat(extractJavaScriptUrlWithIframeResource);
                } else if (extractJavaScriptUrlWithIframeResource.startsWith("/")) {
                    extractJavaScriptUrlWithIframeResource = "https://www.youtube.com".concat(extractJavaScriptUrlWithIframeResource);
                }
                new URL(extractJavaScriptUrlWithIframeResource);
                try {
                    str2 = (String) Utility.downloader.get(extractJavaScriptUrlWithIframeResource, null, localization).mHiddenViews;
                } catch (Exception e) {
                    throw new ParsingException("Could not get JavaScript base player's code", e);
                }
            } catch (Exception unused) {
                try {
                    String str3 = (String) Utility.downloader.get("https://www.youtube.com/embed/" + str, null, localization).mHiddenViews;
                    Elements select = Jsoup.parse(str3).select("script");
                    Iterator<E> it = select.iterator();
                    while (it.hasNext()) {
                        ((Element) it.next()).attr("name", "player/base");
                    }
                    Iterator<E> it2 = select.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            try {
                                matchGroup = Parser.matchGroup(str3, YoutubeJavaScriptExtractor.EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN, 1);
                                break;
                            } catch (Parser.RegexException e2) {
                                Utils$$ExternalSyntheticBUOutline0.m("Embedded watch page didn't provide JavaScript base player's URL", e2);
                                return;
                            }
                        }
                        matchGroup = ((Element) it2.next()).attr("src");
                        if (matchGroup.contains("base.js")) {
                            break;
                        }
                    }
                    Pattern pattern = YoutubeJavaScriptExtractor.IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN;
                    if (matchGroup.startsWith("//")) {
                        matchGroup = "https:".concat(matchGroup);
                    } else if (matchGroup.startsWith("/")) {
                        matchGroup = "https://www.youtube.com".concat(matchGroup);
                    }
                    try {
                        new URL(matchGroup);
                        try {
                            str2 = (String) Utility.downloader.get(matchGroup, null, localization).mHiddenViews;
                        } catch (Exception e3) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not get JavaScript base player's code", e3);
                            return;
                        }
                    } catch (MalformedURLException e4) {
                        Utils$$ExternalSyntheticBUOutline0.m("The extracted and built JavaScript URL is invalid", e4);
                        return;
                    }
                } catch (Exception e5) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not fetch embedded watch page", e5);
                    return;
                }
            }
            cachedJavaScriptPlayerCode = str2;
        }
    }
}
