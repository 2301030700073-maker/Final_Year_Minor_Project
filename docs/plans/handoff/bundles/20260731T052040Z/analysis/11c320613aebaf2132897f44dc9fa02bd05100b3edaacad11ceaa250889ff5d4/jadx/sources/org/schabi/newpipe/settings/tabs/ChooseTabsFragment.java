package org.schabi.newpipe.settings.tabs;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ComponentRegistry;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.xwray.groupie.GroupieViewHolder;
import java.util.ArrayList;
import java.util.Collections;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder$$ExternalSyntheticLambda2;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda40;
import org.schabi.newpipe.settings.PeertubeInstanceListFragment;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.util.ServiceHelper;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class ChooseTabsFragment extends Fragment {
    public SelectedTabsAdapter selectedTabsAdapter;
    public final ArrayList tabList = new ArrayList();
    public ComponentRegistry.Builder tabsManager;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SelectedTabsAdapter extends RecyclerView.Adapter {
        public final LayoutInflater inflater;
        public final ItemTouchHelper itemTouchHelper;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class TabViewHolder extends RecyclerView.ViewHolder {
            public final ImageView handle;
            public final AppCompatImageView tabIconView;
            public final TextView tabNameView;

            public TabViewHolder(View view) {
                super(view);
                this.tabNameView = (TextView) view.findViewById(R.id.tabName);
                this.tabIconView = (AppCompatImageView) view.findViewById(R.id.tabIcon);
                this.handle = (ImageView) view.findViewById(R.id.handle);
            }
        }

        public SelectedTabsAdapter(Context context, ItemTouchHelper itemTouchHelper) {
            this.itemTouchHelper = itemTouchHelper;
            this.inflater = LayoutInflater.from(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return ChooseTabsFragment.this.tabList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            TabViewHolder tabViewHolder = (TabViewHolder) viewHolder;
            tabViewHolder.handle.setOnTouchListener(new PlayQueueItemBuilder$$ExternalSyntheticLambda2(tabViewHolder, tabViewHolder, 5));
            ChooseTabsFragment chooseTabsFragment = ChooseTabsFragment.this;
            Tab tab = (Tab) chooseTabsFragment.tabList.get(i);
            Tab.Type typeFrom = Tab.typeFrom(tab.getTabId());
            if (typeFrom == null) {
                return;
            }
            TextView textView = tabViewHolder.tabNameView;
            int ordinal = typeFrom.ordinal();
            if (ordinal == 0) {
                string = chooseTabsFragment.getString(R.string.blank_page_summary);
            } else if (ordinal != 1) {
                switch (ordinal) {
                    case 6:
                        string = ServiceHelper.getNameOfServiceById(((Tab.KioskTab) tab).kioskServiceId) + "/" + tab.getTabName(chooseTabsFragment.requireContext());
                        break;
                    case 7:
                        string = ServiceHelper.getNameOfServiceById(((Tab.ChannelTab) tab).channelServiceId) + "/" + tab.getTabName(chooseTabsFragment.requireContext());
                        break;
                    case 8:
                        int i2 = ((Tab.PlaylistTab) tab).playlistServiceId;
                        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(i2 == -1 ? chooseTabsFragment.getString(R.string.local) : ServiceHelper.getNameOfServiceById(i2), "/");
                        m.append(tab.getTabName(chooseTabsFragment.requireContext()));
                        string = m.toString();
                        break;
                    case 9:
                        string = chooseTabsFragment.getString(R.string.feed_groups_header_title) + "/" + ((Tab.FeedGroupTab) tab).feedGroupName;
                        break;
                    default:
                        string = tab.getTabName(chooseTabsFragment.requireContext());
                        break;
                }
            } else {
                string = chooseTabsFragment.getString(R.string.default_kiosk_page_summary);
            }
            textView.setText(string);
            tabViewHolder.tabIconView.setImageResource(tab.getTabIconRes(chooseTabsFragment.requireContext()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new TabViewHolder(this.inflater.inflate(R.layout.list_choose_tabs, viewGroup, false));
        }
    }

    public final void addTab(Tab tab) {
        this.tabList.add(tab);
        this.selectedTabsAdapter.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.tabsManager = new ComponentRegistry.Builder(requireContext(), 18);
        ArrayList arrayList = this.tabList;
        arrayList.clear();
        arrayList.addAll(this.tabsManager.getTabs());
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_chooser_fragment, menu);
        menu.findItem(R.id.menu_item_restore_default).setOnMenuItemClickListener(new VideoPlayerUi$$ExternalSyntheticLambda40(this, 1));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_choose_tabs, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.tabsManager.saveTabs(this.tabList);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        Options.Companion.setTitleToAppCompatActivity(getActivity(), getString(R.string.main_page_content));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        ((FloatingActionButton) view.findViewById(R.id.addTabsButton)).setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, 9));
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.selectedTabs);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new AnonymousClass2(this, 0));
        itemTouchHelper.attachToRecyclerView(recyclerView);
        SelectedTabsAdapter selectedTabsAdapter = new SelectedTabsAdapter(requireContext(), itemTouchHelper);
        this.selectedTabsAdapter = selectedTabsAdapter;
        recyclerView.setAdapter(selectedTabsAdapter);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.settings.tabs.ChooseTabsFragment$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends ItemTouchHelper.SimpleCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Fragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(Fragment fragment, int i) {
            super(3, 48);
            this.$r8$classId = i;
            this.this$0 = fragment;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            switch (this.$r8$classId) {
                case 1:
                    super.clearView(recyclerView, viewHolder);
                    ((LocalPlaylistFragment) this.this$0).saveImmediate();
                    break;
                default:
                    super.clearView(recyclerView, viewHolder);
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
        public int getDragDirs(RecyclerView.ViewHolder viewHolder) {
            switch (this.$r8$classId) {
                case 2:
                    return ((GroupieViewHolder) viewHolder).item.getDragDirs();
                default:
                    return super.getDragDirs(viewHolder);
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
        public int getSwipeDirs(RecyclerView.ViewHolder viewHolder) {
            switch (this.$r8$classId) {
                case 2:
                    ((GroupieViewHolder) viewHolder).item.getClass();
                    return 0;
                default:
                    return super.getSwipeDirs(viewHolder);
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, int i3, long j) {
            int max;
            float signum;
            switch (this.$r8$classId) {
                case 0:
                    max = Math.max(12, Math.abs(super.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j)));
                    signum = Math.signum(i2);
                    break;
                case 1:
                    max = Math.max(12, Math.abs(super.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j)));
                    signum = Math.signum(i2);
                    break;
                case 2:
                default:
                    return super.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j);
                case 3:
                    max = Math.max(12, Math.abs(super.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j)));
                    signum = Math.signum(i2);
                    break;
            }
            return max * ((int) signum);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean isItemViewSwipeEnabled() {
            switch (this.$r8$classId) {
                case 0:
                    return true;
                case 1:
                    return false;
                case 2:
                    return false;
                default:
                    return true;
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean isLongPressDragEnabled() {
            switch (this.$r8$classId) {
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            int i = this.$r8$classId;
            boolean z = false;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) fragment;
                    if (viewHolder.getItemViewType() == viewHolder2.getItemViewType() && chooseTabsFragment.selectedTabsAdapter != null) {
                        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                        int bindingAdapterPosition2 = viewHolder2.getBindingAdapterPosition();
                        SelectedTabsAdapter selectedTabsAdapter = chooseTabsFragment.selectedTabsAdapter;
                        Collections.swap(ChooseTabsFragment.this.tabList, bindingAdapterPosition, bindingAdapterPosition2);
                        selectedTabsAdapter.notifyItemMoved(bindingAdapterPosition, bindingAdapterPosition2);
                        break;
                    }
                    break;
                case 1:
                    LocalPlaylistFragment localPlaylistFragment = (LocalPlaylistFragment) fragment;
                    if (viewHolder.getItemViewType() == viewHolder2.getItemViewType()) {
                        int i2 = LocalPlaylistFragment.$r8$clinit;
                        if (localPlaylistFragment.itemListAdapter != null) {
                            z = localPlaylistFragment.itemListAdapter.swapItems(viewHolder.getBindingAdapterPosition(), viewHolder2.getBindingAdapterPosition());
                            if (z) {
                                localPlaylistFragment.debounceSaver.setHasChangesToSave();
                                break;
                            }
                        }
                    }
                    break;
                case 2:
                    recyclerView.getClass();
                    viewHolder.getClass();
                    int bindingAdapterPosition3 = viewHolder.getBindingAdapterPosition();
                    int bindingAdapterPosition4 = viewHolder2.getBindingAdapterPosition();
                    FeedGroupReorderDialog feedGroupReorderDialog = (FeedGroupReorderDialog) fragment;
                    feedGroupReorderDialog.groupAdapter.notifyItemMoved(bindingAdapterPosition3, bindingAdapterPosition4);
                    Collections.swap(feedGroupReorderDialog.groupOrderedIdList, bindingAdapterPosition3, bindingAdapterPosition4);
                    break;
                default:
                    PeertubeInstanceListFragment peertubeInstanceListFragment = (PeertubeInstanceListFragment) fragment;
                    if (viewHolder.getItemViewType() == viewHolder2.getItemViewType() && peertubeInstanceListFragment.instanceListAdapter != null) {
                        int bindingAdapterPosition5 = viewHolder.getBindingAdapterPosition();
                        int bindingAdapterPosition6 = viewHolder2.getBindingAdapterPosition();
                        PeertubeInstanceListFragment.InstanceListAdapter instanceListAdapter = peertubeInstanceListFragment.instanceListAdapter;
                        instanceListAdapter.getClass();
                        ArrayList arrayList = new ArrayList(instanceListAdapter.getCurrentList());
                        Collections.swap(arrayList, bindingAdapterPosition5, bindingAdapterPosition6);
                        instanceListAdapter.submitList(arrayList);
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                    ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) fragment;
                    ArrayList arrayList = chooseTabsFragment.tabList;
                    arrayList.remove(bindingAdapterPosition);
                    chooseTabsFragment.selectedTabsAdapter.notifyItemRemoved(bindingAdapterPosition);
                    if (arrayList.isEmpty()) {
                        arrayList.add(Tab.Type.BLANK.getTab());
                        chooseTabsFragment.selectedTabsAdapter.notifyItemInserted(0);
                        break;
                    }
                    break;
                case 1:
                    break;
                case 2:
                    viewHolder.getClass();
                    break;
                default:
                    int bindingAdapterPosition2 = viewHolder.getBindingAdapterPosition();
                    PeertubeInstanceListFragment peertubeInstanceListFragment = (PeertubeInstanceListFragment) fragment;
                    if (!((PeertubeInstance) peertubeInstanceListFragment.instanceListAdapter.getCurrentList().get(bindingAdapterPosition2)).url.equals(peertubeInstanceListFragment.selectedInstance.url)) {
                        ArrayList arrayList2 = new ArrayList(peertubeInstanceListFragment.instanceListAdapter.getCurrentList());
                        arrayList2.remove(bindingAdapterPosition2);
                        if (arrayList2.isEmpty()) {
                            arrayList2.add(peertubeInstanceListFragment.selectedInstance);
                        }
                        peertubeInstanceListFragment.instanceListAdapter.submitList(arrayList2);
                        break;
                    } else {
                        peertubeInstanceListFragment.instanceListAdapter.notifyItemChanged(bindingAdapterPosition2);
                        break;
                    }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(FeedGroupReorderDialog feedGroupReorderDialog) {
            super(0, 0);
            this.$r8$classId = 2;
            this.this$0 = feedGroupReorderDialog;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(LocalPlaylistFragment localPlaylistFragment, int i) {
            super(i, 0);
            this.$r8$classId = 1;
            this.this$0 = localPlaylistFragment;
        }

        private final void onSwiped$org$schabi$newpipe$local$playlist$LocalPlaylistFragment$3(RecyclerView.ViewHolder viewHolder) {
        }
    }
}
