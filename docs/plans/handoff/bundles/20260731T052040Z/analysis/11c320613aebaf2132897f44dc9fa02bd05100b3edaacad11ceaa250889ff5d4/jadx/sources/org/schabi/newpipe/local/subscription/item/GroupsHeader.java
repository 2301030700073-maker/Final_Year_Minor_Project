package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.viewbinding.BindableItem;
import java.util.List;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.SubscriptionGroupsHeaderBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GroupsHeader extends BindableItem {
    public static final Companion Companion = new Companion();
    public boolean listViewMode;
    public final RoomDatabase$closeBarrier$1 onSortClicked;
    public final RoomDatabase$closeBarrier$1 onToggleListViewModeClicked;
    public boolean showSortButton = true;
    public final String title;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public GroupsHeader(String str, RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1, RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$12, boolean z) {
        this.title = str;
        this.onSortClicked = roomDatabase$closeBarrier$1;
        this.onToggleListViewModeClicked = roomDatabase$closeBarrier$12;
        this.listViewMode = z;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        SubscriptionGroupsHeaderBinding subscriptionGroupsHeaderBinding = (SubscriptionGroupsHeaderBinding) viewBinding;
        subscriptionGroupsHeaderBinding.getClass();
        subscriptionGroupsHeaderBinding.headerTitle.setText(this.title);
        final int i = 0;
        subscriptionGroupsHeaderBinding.headerSort.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.item.GroupsHeader$$ExternalSyntheticLambda0
            public final /* synthetic */ GroupsHeader f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                GroupsHeader groupsHeader = this.f$0;
                switch (i2) {
                    case 0:
                        groupsHeader.onSortClicked.invoke();
                        break;
                    default:
                        groupsHeader.onToggleListViewModeClicked.invoke();
                        break;
                }
            }
        });
        final int i2 = 1;
        subscriptionGroupsHeaderBinding.headerToggleViewMode.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.item.GroupsHeader$$ExternalSyntheticLambda0
            public final /* synthetic */ GroupsHeader f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i2;
                GroupsHeader groupsHeader = this.f$0;
                switch (i22) {
                    case 0:
                        groupsHeader.onSortClicked.invoke();
                        break;
                    default:
                        groupsHeader.onToggleListViewModeClicked.invoke();
                        break;
                }
            }
        });
        updateIcons(subscriptionGroupsHeaderBinding);
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.subscription_groups_header;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        int i = R.id.header_sort;
        ImageButton imageButton = (ImageButton) Options.Companion.findChildViewById(R.id.header_sort, view);
        if (imageButton != null) {
            i = R.id.header_title;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.header_title, view);
            if (newPipeTextView != null) {
                i = R.id.header_toggle_view_mode;
                ImageButton imageButton2 = (ImageButton) Options.Companion.findChildViewById(R.id.header_toggle_view_mode, view);
                if (imageButton2 != null) {
                    return new SubscriptionGroupsHeaderBinding((LinearLayout) view, imageButton, newPipeTextView, imageButton2);
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public final void updateIcons(SubscriptionGroupsHeaderBinding subscriptionGroupsHeaderBinding) {
        subscriptionGroupsHeaderBinding.headerToggleViewMode.setImageResource(this.listViewMode ? R.drawable.ic_apps : R.drawable.ic_list);
        subscriptionGroupsHeaderBinding.headerSort.setVisibility(this.showSortButton ? 0 : 8);
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding, int i, List list) {
        SubscriptionGroupsHeaderBinding subscriptionGroupsHeaderBinding = (SubscriptionGroupsHeaderBinding) viewBinding;
        subscriptionGroupsHeaderBinding.getClass();
        list.getClass();
        if (list.contains(1)) {
            updateIcons(subscriptionGroupsHeaderBinding);
        } else {
            bind(subscriptionGroupsHeaderBinding);
        }
    }
}
