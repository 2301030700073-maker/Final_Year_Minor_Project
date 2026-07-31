package org.wikipedia.feed.didyouknow;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.R;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DidYouKnowActivity$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DidYouKnowActivity f$0;

    public /* synthetic */ DidYouKnowActivity$$ExternalSyntheticLambda3(DidYouKnowActivity didYouKnowActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = didYouKnowActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DidYouKnowActivity didYouKnowActivity = this.f$0;
        switch (i) {
            case 0:
                PageTitle pageTitle = (PageTitle) obj;
                int i2 = DidYouKnowActivity.$r8$clinit;
                pageTitle.getClass();
                HistoryEntry historyEntry = new HistoryEntry(50, pageTitle);
                Intent putExtra = new Intent("org.wikipedia.load_in_new_tab").setClass(didYouKnowActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", historyEntry.getTitle());
                putExtra.getClass();
                didYouKnowActivity.startActivity(putExtra);
                break;
            case 1:
                HistoryEntry historyEntry2 = (HistoryEntry) obj;
                int i3 = DidYouKnowActivity.$r8$clinit;
                historyEntry2.getClass();
                ShareUtil.shareText(didYouKnowActivity, historyEntry2.getTitle().getDisplayText(), historyEntry2.getTitle().getUri());
                break;
            case 2:
                HistoryEntry historyEntry3 = (HistoryEntry) obj;
                int i4 = DidYouKnowActivity.$r8$clinit;
                historyEntry3.getClass();
                String uri = historyEntry3.getTitle().getUri();
                ClipboardManager clipboardManager = (ClipboardManager) didYouKnowActivity.getSystemService(ClipboardManager.class);
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                }
                ShareUtil.showMessage(didYouKnowActivity, R.string.address_copied);
                break;
            case 3:
                HistoryEntry historyEntry4 = (HistoryEntry) obj;
                int i5 = DidYouKnowActivity.$r8$clinit;
                historyEntry4.getClass();
                Intent putExtra2 = new Intent("org.wikipedia.load_in_current_tab_squash").setClass(didYouKnowActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry4).putExtra("title", historyEntry4.getTitle());
                putExtra2.getClass();
                didYouKnowActivity.startActivity(putExtra2);
                break;
            default:
                HistoryEntry historyEntry5 = (HistoryEntry) obj;
                int i6 = DidYouKnowActivity.$r8$clinit;
                historyEntry5.getClass();
                Intent putExtra3 = new Intent("org.wikipedia.load_in_new_tab").setClass(didYouKnowActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry5).putExtra("title", historyEntry5.getTitle());
                putExtra3.getClass();
                didYouKnowActivity.startActivity(putExtra3);
                break;
        }
        return unit;
    }
}
