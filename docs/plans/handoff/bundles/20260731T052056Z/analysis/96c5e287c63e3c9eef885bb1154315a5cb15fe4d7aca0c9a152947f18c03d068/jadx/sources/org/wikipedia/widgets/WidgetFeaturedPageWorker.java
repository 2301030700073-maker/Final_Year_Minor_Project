package org.wikipedia.widgets;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.ReversedListReadOnly;
import kotlin.text.MatcherMatchResult;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/widgets/WidgetFeaturedPageWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WidgetFeaturedPageWorker extends CoroutineWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WidgetFeaturedPageWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public static String findFeaturedArticleTitle(String str) {
        String str2;
        int indexOf$default = StringsKt.indexOf$default(str, "</h2>", 0, false, 6);
        if (indexOf$default == -1) {
            indexOf$default = 0;
        }
        Pattern compile = Pattern.compile("<a\\s*[^>]*href=\"([^\"]*)\"[^>]*>");
        compile.getClass();
        Matcher matcher = compile.matcher(str);
        matcher.getClass();
        for (MatcherMatchResult findNext = RegexKt.findNext(matcher, indexOf$default, str); findNext != null; findNext = findNext.next()) {
            String obj = StringsKt.trim((String) ((ReversedListReadOnly) findNext.getGroupValues()).get(1)).toString();
            int indexOf$default2 = StringsKt.indexOf$default(str, "</a>", findNext.getRange().last, false, 4);
            if (indexOf$default2 == -1) {
                return "";
            }
            String substring = str.substring(findNext.getRange().last + 1, indexOf$default2);
            StringUtil stringUtil = StringUtil.INSTANCE;
            String obj2 = StringsKt.trim(StringUtil.fromHtml(substring).toString()).toString();
            PageTitle.Companion companion = PageTitle.Companion;
            obj.getClass();
            try {
                str2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(obj, "+", "%2B"), "UTF-8");
                str2.getClass();
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(obj));
                str2 = obj;
            }
            WikiSite wikiSite = new WikiSite(obj);
            companion.getClass();
            PageTitle titleForInternalLink = PageTitle.Companion.titleForInternalLink(str2, wikiSite);
            if (!titleForInternalLink.isFilePage() && !titleForInternalLink.isSpecial() && StringsKt__StringsJVMKt.startsWith(obj, "/wiki/", false) && obj2.length() > 0) {
                return titleForInternalLink.getPrefixedText();
            }
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x016a, code lost:
    
        if (r1 != r3) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f2 A[Catch: Exception -> 0x0189, TryCatch #0 {Exception -> 0x0189, blocks: (B:15:0x003a, B:16:0x016d, B:17:0x016f, B:24:0x0047, B:25:0x0147, B:29:0x004e, B:30:0x012b, B:32:0x0057, B:34:0x00ec, B:36:0x00f2, B:38:0x0102, B:41:0x010b, B:45:0x012e, B:49:0x0064), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012e A[Catch: Exception -> 0x0189, TryCatch #0 {Exception -> 0x0189, blocks: (B:15:0x003a, B:16:0x016d, B:17:0x016f, B:24:0x0047, B:25:0x0147, B:29:0x004e, B:30:0x012b, B:32:0x0057, B:34:0x00ec, B:36:0x00f2, B:38:0x0102, B:41:0x010b, B:45:0x012e, B:49:0x0064), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0061  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.WidgetFeaturedPageWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
