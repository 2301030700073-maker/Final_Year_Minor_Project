package org.wikipedia;

import android.net.Uri;
import android.view.ContextMenu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.shareafact.ShareHandler;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.ObservableWebView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LongPressHandler implements View.OnCreateContextMenuListener, View.OnTouchListener {
    public final ShareHandler callback;
    public float clickPositionX;
    public float clickPositionY;
    public String referrer;
    public PageTitle title = null;
    public long prevId = -1;

    public LongPressHandler(ObservableWebView observableWebView, ShareHandler shareHandler) {
        this.callback = shareHandler;
        observableWebView.setOnCreateContextMenuListener(this);
        observableWebView.setOnTouchListener(this);
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        contextMenu.getClass();
        view.getClass();
        if (!(view instanceof WebView)) {
            showPopupMenu(view, false);
            return;
        }
        this.title = null;
        WebView.HitTestResult hitTestResult = ((WebView) view).getHitTestResult();
        hitTestResult.getClass();
        if (hitTestResult.getType() == 7) {
            String extra = hitTestResult.getExtra();
            if (extra == null) {
                extra = "";
            }
            Uri parse = Uri.parse(extra);
            parse.getClass();
            if (UriUtil.isValidPageLink(parse)) {
                WikiSite wikiSite = new WikiSite(parse);
                ShareHandler shareHandler = this.callback;
                WikiSite wikiSite2 = (WikiSite) shareHandler.bridge;
                if (wikiSite2 != null && wikiSite.dbName().equals(wikiSite2.dbName()) && !Intrinsics.areEqual(wikiSite.languageCode, wikiSite2.languageCode)) {
                    wikiSite = wikiSite2;
                }
                PageTitle.Companion companion = PageTitle.Companion;
                String path = parse.getPath();
                companion.getClass();
                this.title = PageTitle.Companion.titleForInternalLink(path, wikiSite);
                this.referrer = (String) shareHandler.webViewActionMode;
                HistoryEntry historyEntry = (HistoryEntry) ((PageFragment) shareHandler.fragment).model.curEntry;
                this.prevId = historyEntry != null ? historyEntry.id : -1L;
                showPopupMenu(view, true);
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        view.getClass();
        motionEvent.getClass();
        if (motionEvent.getAction() != 0) {
            return false;
        }
        this.clickPositionX = motionEvent.getX();
        this.clickPositionY = motionEvent.getY();
        return false;
    }

    public final void showPopupMenu(View view, boolean z) {
        View view2;
        PageTitle pageTitle = this.title;
        if (pageTitle == null || pageTitle.isSpecial() || !view.isAttachedToWindow()) {
            return;
        }
        Object systemService = view.getContext().getSystemService("input_method");
        systemService.getClass();
        ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
        HistoryEntry historyEntry = new HistoryEntry(2, pageTitle);
        historyEntry.referrer = this.referrer;
        historyEntry.prevId = this.prevId;
        if (z) {
            View view3 = new View(view.getContext());
            view3.setX(this.clickPositionX);
            view3.setY(this.clickPositionY);
            View rootView = view.getRootView();
            rootView.getClass();
            ((ViewGroup) rootView).addView(view3);
            view2 = view3;
        } else {
            view2 = view;
        }
        new LongPressMenu(view2, 0, null, this.callback, 30).show(historyEntry);
    }
}
