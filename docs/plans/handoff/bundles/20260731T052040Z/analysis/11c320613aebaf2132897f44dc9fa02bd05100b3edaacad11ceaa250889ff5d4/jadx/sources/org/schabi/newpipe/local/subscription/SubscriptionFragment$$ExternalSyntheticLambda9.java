package org.schabi.newpipe.local.subscription;

import android.graphics.drawable.Drawable;
import androidx.preference.Preference;
import com.xwray.groupie.GroupAdapter;
import com.xwray.groupie.GroupDataObserver;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.item.FeedGroupAddNewGridItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupAddNewItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupCardGridItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupCardItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupCarouselItem;
import org.schabi.newpipe.local.subscription.item.GroupsHeader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionFragment$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ SubscriptionFragment$$ExternalSyntheticLambda9(Preference preference, Drawable drawable, boolean z) {
        this.f$0 = preference;
        this.f$2 = drawable;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        boolean z = this.f$1;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                SubscriptionFragment subscriptionFragment = (SubscriptionFragment) obj2;
                List list = (List) obj;
                SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                if (subscriptionFragment.getContext() == null) {
                    return;
                }
                FeedGroupCarouselItem feedGroupCarouselItem = subscriptionFragment.feedGroupsCarousel;
                if (feedGroupCarouselItem == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("feedGroupsCarousel");
                    throw null;
                }
                feedGroupCarouselItem.listViewMode = z;
                GroupsHeader groupsHeader = subscriptionFragment.feedGroupsSortMenuItem;
                if (groupsHeader == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("feedGroupsSortMenuItem");
                    throw null;
                }
                groupsHeader.showSortButton = list.size() > 1;
                GroupsHeader groupsHeader2 = subscriptionFragment.feedGroupsSortMenuItem;
                if (groupsHeader2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("feedGroupsSortMenuItem");
                    throw null;
                }
                groupsHeader2.listViewMode = z;
                FeedGroupCarouselItem feedGroupCarouselItem2 = subscriptionFragment.feedGroupsCarousel;
                if (feedGroupCarouselItem2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("feedGroupsCarousel");
                    throw null;
                }
                GroupDataObserver groupDataObserver = feedGroupCarouselItem2.parentDataObserver;
                if (groupDataObserver != null) {
                    groupDataObserver.onItemChanged(feedGroupCarouselItem2, 0, 2);
                }
                GroupsHeader groupsHeader3 = subscriptionFragment.feedGroupsSortMenuItem;
                if (groupsHeader3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("feedGroupsSortMenuItem");
                    throw null;
                }
                GroupDataObserver groupDataObserver2 = groupsHeader3.parentDataObserver;
                if (groupDataObserver2 != null) {
                    groupDataObserver2.onItemChanged(groupsHeader3, 0, 1);
                }
                GroupAdapter groupAdapter = subscriptionFragment.carouselAdapter;
                if (groupAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("carouselAdapter");
                    throw null;
                }
                groupAdapter.clear();
                FeedGroupIcon feedGroupIcon = FeedGroupIcon.WHATS_NEW;
                if (z) {
                    groupAdapter.add(new FeedGroupAddNewItem());
                    String string = subscriptionFragment.getString(R.string.all);
                    string.getClass();
                    groupAdapter.add(new FeedGroupCardItem(-1L, string, feedGroupIcon));
                } else {
                    groupAdapter.add(new FeedGroupAddNewGridItem());
                    String string2 = subscriptionFragment.getString(R.string.all);
                    string2.getClass();
                    groupAdapter.add(new FeedGroupCardGridItem(-1L, string2, feedGroupIcon));
                }
                groupAdapter.addAll(list);
                return;
            default:
                Preference preference = (Preference) obj2;
                Drawable drawable = (Drawable) obj;
                if (preference.mIcon != drawable) {
                    preference.mIcon = drawable;
                    preference.mIconResId = 0;
                    preference.notifyChanged();
                }
                if (preference.mIconSpaceReserved != z) {
                    preference.mIconSpaceReserved = z;
                    preference.notifyChanged();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ SubscriptionFragment$$ExternalSyntheticLambda9(SubscriptionFragment subscriptionFragment, boolean z, List list) {
        this.f$0 = subscriptionFragment;
        this.f$1 = z;
        this.f$2 = list;
    }
}
