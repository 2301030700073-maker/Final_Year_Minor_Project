package org.wikipedia.page;

import android.webkit.WebView;
import org.wikipedia.analytics.eventplatform.ArticleFindInPageInteractionEvent;
import org.wikipedia.views.FindInPageActionProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FindInWebPageActionProvider extends FindInPageActionProvider implements FindInPageActionProvider.FindInPageListener {
    public final ArticleFindInPageInteractionEvent articleFindInPageInteractionEvent;
    public final PageFragment fragment;
    public String searchQuery;

    public FindInWebPageActionProvider(PageFragment pageFragment, ArticleFindInPageInteractionEvent articleFindInPageInteractionEvent) {
        super(pageFragment.requireContext());
        this.fragment = pageFragment;
        this.articleFindInPageInteractionEvent = articleFindInPageInteractionEvent;
        this.listener = this;
        this.enableLastOccurrenceSearchFlag = true;
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindNextClicked() {
        this.articleFindInPageInteractionEvent.numFindNext++;
        this.fragment.getWebView().findNext(true);
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindNextLongClicked() {
        this.articleFindInPageInteractionEvent.numFindPrev++;
        PageFragment pageFragment = this.fragment;
        pageFragment.getWebView().clearMatches();
        String str = this.searchQuery;
        if (str != null) {
            pageFragment.getWebView().findAllAsync(str);
        }
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindPrevClicked() {
        this.articleFindInPageInteractionEvent.numFindPrev++;
        this.fragment.getWebView().findNext(false);
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindPrevLongClicked() {
        this.articleFindInPageInteractionEvent.numFindNext++;
        PageFragment pageFragment = this.fragment;
        pageFragment.getWebView().clearMatches();
        String str = this.searchQuery;
        if (str != null) {
            pageFragment.getWebView().findAllAsync(str);
        }
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onSearchTextChanged(String str) {
        this.articleFindInPageInteractionEvent.findText = str == null ? "" : str;
        PageFragment pageFragment = this.fragment;
        if (str == null || str.length() == 0) {
            this.searchQuery = null;
            pageFragment.getWebView().clearMatches();
        } else {
            this.searchQuery = str;
            pageFragment.getWebView().setFindListener(new WebView.FindListener() { // from class: org.wikipedia.page.FindInWebPageActionProvider$$ExternalSyntheticLambda0
                @Override // android.webkit.WebView.FindListener
                public final void onFindResultReceived(int i, int i2, boolean z) {
                    if (z) {
                        FindInWebPageActionProvider.this.setMatchesResults(i, i2);
                    }
                }
            });
            pageFragment.getWebView().findAllAsync(str);
        }
    }
}
