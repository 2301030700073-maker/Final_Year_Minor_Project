package org.wikipedia.activitytab;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.activitytab.timeline.ActivitySource;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.categories.db.Category;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabFragment$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabFragment f$0;

    public /* synthetic */ ActivityTabFragment$$ExternalSyntheticLambda4(ActivityTabFragment activityTabFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = activityTabFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ActivityTabFragment activityTabFragment = this.f$0;
        switch (i) {
            case 0:
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                HistoryEntry historyEntry = new HistoryEntry(45, pageTitle);
                AppCompatActivity requireActivity = activityTabFragment.requireActivity();
                int i2 = PageActivity.$r8$clinit;
                requireActivity.startActivity(LoginClient.newIntentForNewTab(activityTabFragment.requireActivity(), historyEntry, pageTitle));
                break;
            case 1:
                Category category = (Category) obj;
                category.getClass();
                activityTabFragment.getViewModel();
                String str = category.title;
                WikiSite.Companion companion = WikiSite.Companion;
                String str2 = category.lang;
                companion.getClass();
                PageTitle pageTitle2 = new PageTitle(str, WikiSite.Companion.forLanguageCode(str2), (String) null);
                int i3 = CategoryActivity.$r8$clinit;
                activityTabFragment.startActivity(ReadingListFragment.MultiSelectCallback.newIntent(activityTabFragment.requireActivity(), pageTitle2), null);
                break;
            default:
                TimelineItem timelineItem = (TimelineItem) obj;
                timelineItem.getClass();
                activityTabFragment.getViewModel().shouldRefreshTimelineSilently = true;
                ActivitySource activitySource = timelineItem.activitySource;
                if ((activitySource == null ? -1 : ActivityTabFragment.WhenMappings.$EnumSwitchMapping$0[activitySource.ordinal()]) != 1) {
                    PageTitle pageTitle3 = new PageTitle(timelineItem.namespace, timelineItem.apiTitle, timelineItem.wiki);
                    pageTitle3.setDisplayText(timelineItem.displayTitle);
                    pageTitle3.thumbUrl = timelineItem.thumbnailUrl;
                    pageTitle3.description = timelineItem.description;
                    int i4 = PageActivity.$r8$clinit;
                    activityTabFragment.startActivity(LoginClient.newIntentForCurrentTab(activityTabFragment.requireContext(), new HistoryEntry(45, pageTitle3), pageTitle3, true), null);
                    break;
                } else {
                    ByteString.Companion companion2 = ArticleEditDetailsActivity.Companion;
                    Context requireContext = activityTabFragment.requireContext();
                    String str3 = timelineItem.apiTitle;
                    activityTabFragment.getViewModel();
                    activityTabFragment.startActivity(ByteString.Companion.newIntent$default(companion2, requireContext, new PageTitle(str3, ActivityTabViewModel.getWikiSiteForTimeline(), timelineItem.thumbnailUrl, timelineItem.description, timelineItem.displayTitle), timelineItem.pageId, 0L, timelineItem.id, null, 40), null);
                    break;
                }
        }
        return unit;
    }
}
