package org.wikipedia.page;

import android.content.Context;
import android.net.Uri;
import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LinkHandler implements CommunicationBridge.JSEventListener, LinkMovementMethodExt.UrlHandlerWithText {
    public static final List KNOWN_SCHEMES = Room.listOf((Object[]) new String[]{"http", "https", "geo", "file", "content"});
    public final Context context;

    public LinkHandler(Context context) {
        this.context = context;
    }

    public abstract WikiSite getWikiSite();

    /* JADX WARN: Removed duplicated region for block: B:46:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onExternalLinkClicked(android.net.Uri r22) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.LinkHandler.onExternalLinkClicked(android.net.Uri):void");
    }

    public abstract void onInternalLinkClicked(PageTitle pageTitle);

    @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
    public final void onMessage(String str, JsonObject jsonObject) {
        str.getClass();
        if (jsonObject != null) {
            JsonElement jsonElement = (JsonElement) jsonObject.get("href");
            String content = jsonElement != null ? JsonElementKt.getJsonPrimitive(jsonElement).getContent() : null;
            if (content == null) {
                content = "";
            }
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content, "+", "%2B"), "UTF-8");
                decode.getClass();
                content = decode;
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(content));
            }
            JsonElement jsonElement2 = (JsonElement) jsonObject.get("title");
            String content2 = jsonElement2 != null ? JsonElementKt.getJsonPrimitive(jsonElement2).getContent() : null;
            JsonElement jsonElement3 = (JsonElement) jsonObject.get("text");
            String content3 = jsonElement3 != null ? JsonElementKt.getJsonPrimitive(jsonElement3).getContent() : null;
            onUrlClick(content, content2, content3 != null ? content3 : "");
        }
    }

    public void onPageLinkClicked(String str, String str2) {
        str2.getClass();
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandlerWithText
    public final void onUrlClick(String str, String str2, String str3) {
        String queryParameter;
        Long longOrNull;
        PageTitle pageTitle;
        str.getClass();
        str3.getClass();
        boolean z = false;
        if (StringsKt__StringsJVMKt.startsWith(str, "mailto:", false)) {
            ShareUtil.composeEmail$default(this.context, StringsKt.removePrefix("mailto:", str), null, null, 12);
            return;
        }
        if (StringsKt__StringsJVMKt.startsWith(str, "//", false)) {
            str = getWikiSite().scheme() + ":" + ((Object) str);
        } else if (StringsKt__StringsJVMKt.startsWith(str, "./", false)) {
            str = StringsKt__StringsJVMKt.replace$default(str, "./", "/wiki/");
        }
        int indexOf$default = StringsKt.indexOf$default(str, "?event-logging-label", 0, false, 6);
        if (indexOf$default > 0) {
            str = str.substring(0, indexOf$default);
        }
        Uri parse = Uri.parse(str);
        parse.getClass();
        String fragment = parse.getFragment();
        if (fragment != null && StringsKt.contains(fragment, "cite", false)) {
            onPageLinkClicked(fragment, str3);
            return;
        }
        List list = KNOWN_SCHEMES;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (StringsKt__StringsJVMKt.startsWith(str, ((String) it.next()) + ":", false)) {
                    break;
                }
            }
        }
        parse = parse.buildUpon().scheme(getWikiSite().scheme()).authority(getWikiSite().authority()).path(str).build();
        parse.getClass();
        Pattern compile = Pattern.compile("^.*?/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/");
        compile.getClass();
        String replaceFirst = compile.matcher(str).replaceFirst("");
        replaceFirst.getClass();
        Pattern compile2 = Pattern.compile("#.*$");
        compile2.getClass();
        String replaceFirst2 = compile2.matcher(replaceFirst).replaceFirst("");
        replaceFirst2.getClass();
        String replace$default = StringsKt__StringsJVMKt.replace$default(replaceFirst2, "_", " ");
        if (!replace$default.equals(str2)) {
            str2 = replace$default;
        }
        WikiSite wikiSite = new WikiSite(parse);
        if (wikiSite.subdomain().equals(getWikiSite().subdomain()) && !Intrinsics.areEqual(wikiSite.languageCode, getWikiSite().languageCode)) {
            String authority = parse.getAuthority();
            authority.getClass();
            wikiSite = new WikiSite(authority, getWikiSite().languageCode);
        }
        L.d("Link clicked was " + parse);
        String authority2 = parse.getAuthority();
        if (authority2 != null) {
            WikiSite.Companion.getClass();
            if (WikiSite.Companion.supportedAuthority(authority2)) {
                z = true;
            }
        }
        String path = parse.getPath();
        if (path != null) {
            Pattern compile3 = Pattern.compile("^/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/.*");
            compile3.getClass();
            if (compile3.matcher(path).matches() && z) {
                if (str2.length() == 0) {
                    PageTitle.Companion companion = PageTitle.Companion;
                    String path2 = parse.getPath();
                    companion.getClass();
                    pageTitle = PageTitle.Companion.titleForInternalLink(path2, wikiSite);
                } else {
                    PageTitle.Companion companion2 = PageTitle.Companion;
                    String fragment2 = parse.getFragment();
                    companion2.getClass();
                    pageTitle = (fragment2 == null || fragment2.length() == 0) ? new PageTitle(str2, wikiSite, (String) null) : new PageTitle(Animation.CC.m(str2, "#", fragment2), wikiSite, (String) null);
                }
                if (pageTitle.isFilePage()) {
                    onMediaLinkClicked(pageTitle);
                    return;
                } else if (pageTitle.isSpecial()) {
                    onExternalLinkClicked(parse);
                    return;
                } else {
                    onInternalLinkClicked(pageTitle);
                    return;
                }
            }
        }
        String fragment3 = parse.getFragment();
        if (fragment3 != null && fragment3.length() != 0 && z) {
            String fragment4 = parse.getFragment();
            fragment4.getClass();
            onPageLinkClicked(fragment4, str3);
            return;
        }
        String queryParameter2 = parse.getQueryParameter("title");
        if (queryParameter2 == null || queryParameter2.length() == 0 || (queryParameter = parse.getQueryParameter("diff")) == null || queryParameter.length() == 0 || !z) {
            onExternalLinkClicked(parse);
            return;
        }
        String queryParameter3 = parse.getQueryParameter("diff");
        String str4 = queryParameter3 != null ? queryParameter3 : "";
        Long longOrNull2 = StringsKt__StringsJVMKt.toLongOrNull(str4);
        long j = -1;
        long longValue = longOrNull2 != null ? longOrNull2.longValue() : -1L;
        if (str4.equals("next") || str4.equals("prev")) {
            String queryParameter4 = parse.getQueryParameter("oldid");
            if (queryParameter4 != null && (longOrNull = StringsKt__StringsJVMKt.toLongOrNull(queryParameter4)) != null) {
                j = longOrNull.longValue();
            }
            longValue = j;
        }
        onDiffLinkClicked(new PageTitle(parse.getQueryParameter("title"), wikiSite, (String) null), longValue);
    }

    public void onMediaLinkClicked(PageTitle pageTitle) {
    }

    public void onDiffLinkClicked(PageTitle pageTitle, long j) {
    }
}
