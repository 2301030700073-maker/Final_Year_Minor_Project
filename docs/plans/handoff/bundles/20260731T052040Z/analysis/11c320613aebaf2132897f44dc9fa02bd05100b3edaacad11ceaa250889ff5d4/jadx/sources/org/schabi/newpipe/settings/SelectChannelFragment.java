package org.schabi.newpipe.settings;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import java.util.Vector;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.settings.SelectChannelFragment;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment$$ExternalSyntheticLambda4;
import org.schabi.newpipe.settings.tabs.Tab;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class SelectChannelFragment extends DialogFragment {
    public TextView emptyView;
    public ProgressBar progressBar;
    public RecyclerView recyclerView;
    public ChooseTabsFragment$$ExternalSyntheticLambda4 onSelectedListener = null;
    public List subscriptions = new Vector();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SelectChannelAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ DialogFragment this$0;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class SelectChannelItemHolder extends RecyclerView.ViewHolder {
            public final ImageView thumbnailView;
            public final TextView titleView;
            public final View view;

            public SelectChannelItemHolder(View view) {
                super(view);
                this.view = view;
                this.thumbnailView = (ImageView) view.findViewById(R.id.itemThumbnailView);
                this.titleView = (TextView) view.findViewById(R.id.itemTitleView);
            }
        }

        public /* synthetic */ SelectChannelAdapter(DialogFragment dialogFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = dialogFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            int i = this.$r8$classId;
            DialogFragment dialogFragment = this.this$0;
            switch (i) {
                case 0:
                    return ((SelectChannelFragment) dialogFragment).subscriptions.size();
                case 1:
                    return ((SelectFeedGroupFragment) dialogFragment).feedGroups.size();
                default:
                    return ((SelectPlaylistFragment) dialogFragment).playlists.size();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
            int i2 = this.$r8$classId;
            final int i3 = 0;
            DialogFragment dialogFragment = this.this$0;
            final int i4 = 1;
            switch (i2) {
                case 0:
                    SelectChannelItemHolder selectChannelItemHolder = (SelectChannelItemHolder) viewHolder;
                    SubscriptionEntity subscriptionEntity = (SubscriptionEntity) ((SelectChannelFragment) dialogFragment).subscriptions.get(i);
                    selectChannelItemHolder.titleView.setText(subscriptionEntity.name);
                    selectChannelItemHolder.view.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.settings.SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i5 = i3;
                            int i6 = i;
                            SelectChannelFragment.SelectChannelAdapter selectChannelAdapter = (SelectChannelFragment.SelectChannelAdapter) this;
                            switch (i5) {
                                case 0:
                                    SelectChannelFragment selectChannelFragment = (SelectChannelFragment) selectChannelAdapter.this$0;
                                    if (selectChannelFragment.onSelectedListener != null) {
                                        SubscriptionEntity subscriptionEntity2 = (SubscriptionEntity) selectChannelFragment.subscriptions.get(i6);
                                        ChooseTabsFragment$$ExternalSyntheticLambda4 chooseTabsFragment$$ExternalSyntheticLambda4 = selectChannelFragment.onSelectedListener;
                                        int i7 = subscriptionEntity2.serviceId;
                                        chooseTabsFragment$$ExternalSyntheticLambda4.f$0.addTab(new Tab.ChannelTab(subscriptionEntity2.url, i7, subscriptionEntity2.name));
                                    }
                                    selectChannelFragment.dismissInternal(false, false);
                                    break;
                                default:
                                    SelectFeedGroupFragment selectFeedGroupFragment = (SelectFeedGroupFragment) selectChannelAdapter.this$0;
                                    if (selectFeedGroupFragment.onSelectedListener != null) {
                                        FeedGroupEntity feedGroupEntity = (FeedGroupEntity) selectFeedGroupFragment.feedGroups.get(i6);
                                        selectFeedGroupFragment.onSelectedListener.f$0.addTab(new Tab.FeedGroupTab(Long.valueOf(feedGroupEntity.uid), feedGroupEntity.name, feedGroupEntity.icon.getDrawableResource()));
                                    }
                                    selectFeedGroupFragment.dismissInternal(false, false);
                                    break;
                            }
                        }
                    });
                    ImageView imageView = selectChannelItemHolder.thumbnailView;
                    String str = subscriptionEntity.avatarUrl;
                    imageView.getClass();
                    Cookie.Companion.loadImageDefault(imageView, str, R.drawable.placeholder_person, true);
                    break;
                case 1:
                    SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder selectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder = (SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder) viewHolder;
                    FeedGroupEntity feedGroupEntity = (FeedGroupEntity) ((SelectFeedGroupFragment) dialogFragment).feedGroups.get(i);
                    selectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder.titleView.setText(feedGroupEntity.name);
                    selectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder.view.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.settings.SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i5 = i4;
                            int i6 = i;
                            SelectChannelFragment.SelectChannelAdapter selectChannelAdapter = (SelectChannelFragment.SelectChannelAdapter) this;
                            switch (i5) {
                                case 0:
                                    SelectChannelFragment selectChannelFragment = (SelectChannelFragment) selectChannelAdapter.this$0;
                                    if (selectChannelFragment.onSelectedListener != null) {
                                        SubscriptionEntity subscriptionEntity2 = (SubscriptionEntity) selectChannelFragment.subscriptions.get(i6);
                                        ChooseTabsFragment$$ExternalSyntheticLambda4 chooseTabsFragment$$ExternalSyntheticLambda4 = selectChannelFragment.onSelectedListener;
                                        int i7 = subscriptionEntity2.serviceId;
                                        chooseTabsFragment$$ExternalSyntheticLambda4.f$0.addTab(new Tab.ChannelTab(subscriptionEntity2.url, i7, subscriptionEntity2.name));
                                    }
                                    selectChannelFragment.dismissInternal(false, false);
                                    break;
                                default:
                                    SelectFeedGroupFragment selectFeedGroupFragment = (SelectFeedGroupFragment) selectChannelAdapter.this$0;
                                    if (selectFeedGroupFragment.onSelectedListener != null) {
                                        FeedGroupEntity feedGroupEntity2 = (FeedGroupEntity) selectFeedGroupFragment.feedGroups.get(i6);
                                        selectFeedGroupFragment.onSelectedListener.f$0.addTab(new Tab.FeedGroupTab(Long.valueOf(feedGroupEntity2.uid), feedGroupEntity2.name, feedGroupEntity2.icon.getDrawableResource()));
                                    }
                                    selectFeedGroupFragment.dismissInternal(false, false);
                                    break;
                            }
                        }
                    });
                    selectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder.thumbnailView.setImageResource(feedGroupEntity.icon.getDrawableResource());
                    break;
                default:
                    SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder = (SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder) viewHolder;
                    PlaylistLocalItem playlistLocalItem = (PlaylistLocalItem) ((SelectPlaylistFragment) dialogFragment).playlists.get(i);
                    if (!(playlistLocalItem instanceof PlaylistMetadataEntry)) {
                        if (playlistLocalItem instanceof PlaylistRemoteEntity) {
                            PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) playlistLocalItem;
                            selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder.titleView.setText(playlistRemoteEntity.orderingName);
                            selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder.view.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.settings.SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0
                                public final /* synthetic */ SelectChannelFragment.SelectChannelAdapter f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i5 = i4;
                                    int i6 = i;
                                    SelectChannelFragment.SelectChannelAdapter selectChannelAdapter = this.f$0;
                                    switch (i5) {
                                        case 0:
                                            SelectPlaylistFragment.m876$$Nest$mclickedItem((SelectPlaylistFragment) selectChannelAdapter.this$0, i6);
                                            break;
                                        default:
                                            SelectPlaylistFragment.m876$$Nest$mclickedItem((SelectPlaylistFragment) selectChannelAdapter.this$0, i6);
                                            break;
                                    }
                                }
                            });
                            ImageView imageView2 = selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder.thumbnailView;
                            String str2 = playlistRemoteEntity.thumbnailUrl;
                            imageView2.getClass();
                            Cookie.Companion.loadImageDefault(imageView2, str2, R.drawable.placeholder_thumbnail_playlist, true);
                            break;
                        }
                    } else {
                        PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) playlistLocalItem;
                        selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder.titleView.setText(playlistMetadataEntry.getOrderingName());
                        selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder.view.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.settings.SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0
                            public final /* synthetic */ SelectChannelFragment.SelectChannelAdapter f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i5 = i3;
                                int i6 = i;
                                SelectChannelFragment.SelectChannelAdapter selectChannelAdapter = this.f$0;
                                switch (i5) {
                                    case 0:
                                        SelectPlaylistFragment.m876$$Nest$mclickedItem((SelectPlaylistFragment) selectChannelAdapter.this$0, i6);
                                        break;
                                    default:
                                        SelectPlaylistFragment.m876$$Nest$mclickedItem((SelectPlaylistFragment) selectChannelAdapter.this$0, i6);
                                        break;
                                }
                            }
                        });
                        ImageView imageView3 = selectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder.thumbnailView;
                        String thumbnailUrl = playlistMetadataEntry.getThumbnailUrl();
                        imageView3.getClass();
                        Cookie.Companion.loadImageDefault(imageView3, thumbnailUrl, R.drawable.placeholder_thumbnail_playlist, true);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new SelectChannelItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.select_channel_item, viewGroup, false));
                case 1:
                    return new SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.select_feed_group_item, viewGroup, false));
                default:
                    return new SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_playlist_mini_item, viewGroup, false));
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(Options.Companion.isLightThemeSelected(requireContext()) ? R.style.LightDialogMinWidthTheme : R.style.DarkDialogMinWidthTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.select_channel_fragment, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.items_list);
        this.recyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.recyclerView.setAdapter(new SelectChannelAdapter(this, 0));
        this.progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        this.emptyView = (TextView) inflate.findViewById(R.id.empty_state_view);
        this.progressBar.setVisibility(0);
        this.recyclerView.setVisibility(8);
        this.emptyView.setVisibility(8);
        Context requireContext = requireContext();
        requireContext.getClass();
        SubscriptionDAO_Impl subscriptionDAO = AppKt.getInstance(requireContext).subscriptionDAO();
        new FeedDatabaseManager(requireContext);
        new ViewClickObservable(subscriptionDAO.getAll(), 4).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()).subscribe(new VideoPlayerUi.AnonymousClass1(this, 13));
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
    }
}
