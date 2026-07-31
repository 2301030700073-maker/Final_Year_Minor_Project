package org.wikipedia.page;

import android.content.Context;
import android.net.Uri;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.Touch;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkMovementMethodExt extends LinkMovementMethod {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final UrlHandler handler;
    public final UrlHandlerWithText handlerWithText;
    public final UrlHandlerWithTextAndCoords handlerWithTextAndCoords;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface UrlHandler {
        void onUrlClick(String str);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface UrlHandlerWithText {
        void onUrlClick(String str, String str2, String str3);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface UrlHandlerWithTextAndCoords {
        void onUrlClick(int i, int i2, String str, String str2, String str3);
    }

    public LinkMovementMethodExt(UrlHandler urlHandler) {
        this.handler = urlHandler;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public final boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        String str;
        String str2;
        textView.getClass();
        spannable.getClass();
        motionEvent.getClass();
        if (motionEvent.getAction() == 1) {
            int scrollX = textView.getScrollX() + (((int) motionEvent.getX()) - textView.getTotalPaddingLeft());
            int scrollY = textView.getScrollY() + (((int) motionEvent.getY()) - textView.getTotalPaddingTop());
            Layout layout = textView.getLayout();
            int lineForVertical = layout.getLineForVertical(scrollY);
            if (scrollY >= 0 && scrollY <= layout.getHeight()) {
                float lineLeft = layout.getLineLeft(lineForVertical);
                float lineRight = layout.getLineRight(lineForVertical);
                float f = scrollX;
                if (lineLeft <= f && f <= lineRight) {
                    int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, f);
                    Object[] spans = spannable.getSpans(offsetForHorizontal, offsetForHorizontal, URLSpan.class);
                    spans.getClass();
                    URLSpan[] uRLSpanArr = (URLSpan[]) spans;
                    if (uRLSpanArr.length != 0) {
                        try {
                            str = spannable.subSequence(spannable.getSpanStart(uRLSpanArr[0]), spannable.getSpanEnd(uRLSpanArr[0])).toString();
                        } catch (Exception e) {
                            e.printStackTrace();
                            str = "";
                        }
                        String str3 = str;
                        L.d(str3);
                        String url = uRLSpanArr[0].getURL();
                        url.getClass();
                        try {
                            String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(url, "+", "%2B"), "UTF-8");
                            decode.getClass();
                            str2 = decode;
                        } catch (UnsupportedEncodingException e2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                            return false;
                        } catch (IllegalArgumentException unused) {
                            L.d("URL decoding failed. String was: ".concat(url));
                            str2 = url;
                        }
                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                        Context context = textView.getContext();
                        context.getClass();
                        companion.getClass();
                        BreadCrumbLogEvent.Companion.logClick(context, textView);
                        UrlHandler urlHandler = this.handler;
                        if (urlHandler != null) {
                            urlHandler.onUrlClick(str2);
                        }
                        UrlHandlerWithText urlHandlerWithText = this.handlerWithText;
                        if (urlHandlerWithText != null) {
                            urlHandlerWithText.onUrlClick(str2, UriUtil.getTitleFromUrl(str2), str3);
                        }
                        UrlHandlerWithTextAndCoords urlHandlerWithTextAndCoords = this.handlerWithTextAndCoords;
                        if (urlHandlerWithTextAndCoords != null) {
                            urlHandlerWithTextAndCoords.onUrlClick((int) motionEvent.getRawX(), (int) motionEvent.getRawY(), str2, UriUtil.getTitleFromUrl(str2), str3);
                        }
                        return true;
                    }
                }
            }
            Selection.removeSelection(spannable);
            return Touch.onTouchEvent(textView, spannable, motionEvent);
        }
        return super.onTouchEvent(textView, spannable, motionEvent);
    }

    public LinkMovementMethodExt(UrlHandlerWithText urlHandlerWithText) {
        this.handlerWithText = urlHandlerWithText;
    }

    public LinkMovementMethodExt(UrlHandlerWithTextAndCoords urlHandlerWithTextAndCoords) {
        this.handlerWithTextAndCoords = urlHandlerWithTextAndCoords;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ErrorLinkHandler extends LinkHandler {
        public WikiSite wikiSite;

        @Override // org.wikipedia.page.LinkHandler
        public final WikiSite getWikiSite() {
            return this.wikiSite;
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onInternalLinkClicked(PageTitle pageTitle) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            WikipediaApp jsoup = Jsoup.getInstance();
            Uri parse = Uri.parse(UriUtil.resolveProtocolRelativeUrl(pageTitle.getUri(), pageTitle.wikiSite));
            parse.getClass();
            UriUtil.visitInExternalBrowser(jsoup, parse);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onPageLinkClicked(String str, String str2) {
            str2.getClass();
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onMediaLinkClicked(PageTitle pageTitle) {
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onDiffLinkClicked(PageTitle pageTitle, long j) {
        }
    }
}
