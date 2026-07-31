package org.wikipedia.notifications;

import android.content.Context;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import okio.Okio__JvmOkioKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationLinkHandler extends LinkHandler {
    public final NotificationCategory category;
    public WikiSite wikiSite;

    public NotificationLinkHandler(Context context, NotificationCategory notificationCategory) {
        super(context);
        this.category = notificationCategory;
    }

    @Override // org.wikipedia.page.LinkHandler
    public final WikiSite getWikiSite() {
        WikiSite wikiSite = this.wikiSite;
        if (wikiSite != null) {
            return wikiSite;
        }
        Intrinsics.throwUninitializedPropertyAccessException("wikiSite");
        throw null;
    }

    @Override // org.wikipedia.page.LinkHandler
    public final void onDiffLinkClicked(PageTitle pageTitle, long j) {
        ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
        Context context = this.context;
        context.startActivity(ByteString.Companion.newIntent$default(companion, context, pageTitle, -1, -1L, j, null, 32));
    }

    @Override // org.wikipedia.page.LinkHandler
    public final void onExternalLinkClicked(Uri uri) {
        try {
            Context context = this.context;
            String uri2 = uri.toString();
            uri2.getClass();
            Okio__JvmOkioKt.openInCustomTab(context, uri2);
        } catch (Exception e) {
            L.e(e);
        }
    }

    @Override // org.wikipedia.page.LinkHandler
    public final void onInternalLinkClicked(PageTitle pageTitle) {
        if (this.category == NotificationCategory.LOGIN_FAIL) {
            Uri parse = Uri.parse(pageTitle.getUri());
            parse.getClass();
            onExternalLinkClicked(parse);
        } else {
            int i = PageActivity.$r8$clinit;
            HistoryEntry historyEntry = new HistoryEntry(25, pageTitle);
            Context context = this.context;
            context.startActivity(LoginClient.newIntentForCurrentTab(context, historyEntry, pageTitle, true));
        }
    }

    @Override // org.wikipedia.page.LinkHandler
    public final void onPageLinkClicked(String str, String str2) {
        str2.getClass();
    }

    @Override // org.wikipedia.page.LinkHandler
    public final void onMediaLinkClicked(PageTitle pageTitle) {
    }
}
