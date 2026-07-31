package org.wikipedia.commons;

import android.content.Context;
import android.net.Uri;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import com.google.android.material.internal.CheckableGroup;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FilePageView$$ExternalSyntheticLambda1 implements SupportSQLiteOpenHelper.Factory, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ Context f$0;

    public /* synthetic */ FilePageView$$ExternalSyntheticLambda1(Context context) {
        this.f$0 = context;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(CheckableGroup checkableGroup) {
        String str = (String) checkableGroup.checkedIds;
        PriorityQueue priorityQueue = (PriorityQueue) checkableGroup.onCheckedStateChangeListener;
        priorityQueue.getClass();
        if (str != null && str.length() != 0) {
            return new FrameworkSQLiteOpenHelper(this.f$0, str, priorityQueue, true, true);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Must set a non-null database name to a configuration that uses the no backup directory.");
        return null;
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = FilePageView.$r8$clinit;
        Uri parse = Uri.parse(UriUtil.resolveProtocolRelativeUrl(str));
        parse.getClass();
        boolean isValidPageLink = UriUtil.isValidPageLink(parse);
        Context context = this.f$0;
        if (!isValidPageLink) {
            Uri parse2 = Uri.parse(UriUtil.resolveProtocolRelativeUrl(str));
            parse2.getClass();
            UriUtil.visitInExternalBrowser(context, parse2);
        } else {
            PageTitle.Companion companion = PageTitle.Companion;
            WikiSite wikiSite = new WikiSite(parse);
            companion.getClass();
            HistoryEntry historyEntry = new HistoryEntry(39, PageTitle.Companion.titleForUri(parse, wikiSite));
            int i2 = PageActivity.$r8$clinit;
            context.startActivity(LoginClient.newIntentForNewTab(context, historyEntry, historyEntry.getTitle()));
        }
    }
}
