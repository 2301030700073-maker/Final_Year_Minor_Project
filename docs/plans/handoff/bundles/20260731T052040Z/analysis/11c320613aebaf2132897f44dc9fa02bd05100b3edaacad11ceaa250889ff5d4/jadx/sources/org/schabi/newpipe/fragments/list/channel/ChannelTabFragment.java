package org.schabi.newpipe.fragments.list.channel;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.List;
import java.util.function.Supplier;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.channel.tabs.ChannelTabInfo;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;
import org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.playqueue.ChannelTabPlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ChannelTabFragment extends BaseListInfoFragment<InfoItem, ChannelTabInfo> implements PlaylistControlViewHolder {
    protected String channelName;
    public Dispatcher playlistControlBinding;
    protected ListLinkHandler tabHandler;

    public ChannelTabFragment() {
        super(UserAction.REQUESTED_CHANNEL);
    }

    public static ChannelTabFragment getInstance(int i, ListLinkHandler listLinkHandler, String str) {
        ChannelTabFragment channelTabFragment = new ChannelTabFragment();
        channelTabFragment.serviceId = i;
        channelTabFragment.tabHandler = listLinkHandler;
        channelTabFragment.channelName = str;
        return channelTabFragment;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final Supplier getListHeaderSupplier() {
        if (!MathKt.isStreamsTab(this.tabHandler)) {
            return null;
        }
        final Dispatcher bind = Dispatcher.bind(this.activity.getLayoutInflater().inflate(R.layout.playlist_control, (ViewGroup) this.itemsList, false));
        this.playlistControlBinding = bind;
        return new Supplier() { // from class: org.schabi.newpipe.fragments.list.channel.ChannelTabFragment$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return (LinearLayout) Dispatcher.this.executorServiceOrNull;
            }
        };
    }

    @Override // org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder
    public final PlayQueue getPlayQueue() {
        return new ChannelTabPlayQueue(((ChannelTabInfo) this.currentInfo).getServiceId(), this.tabHandler, ((ChannelTabInfo) this.currentInfo).getNextPage(), (List) Collection.EL.stream(this.infoListAdapter.infoItemList).filter(new Player$$ExternalSyntheticLambda48(4)).map(new Utils$$ExternalSyntheticLambda1(27)).collect(Collectors.toList()));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final void handleResult(ListInfo listInfo) {
        ChannelTabInfo channelTabInfo = (ChannelTabInfo) listInfo;
        super.handleResult(channelTabInfo);
        if (this.tabHandler instanceof ReadyChannelTabListLinkHandler) {
            try {
                this.tabHandler = channelTabInfo.getService().getChannelTabLHFactory().fromQuery(this.tabHandler.getId(), this.tabHandler.getSortFilter(), this.tabHandler.getContentFilters());
            } catch (ParsingException e) {
                Log.w(this.TAG, "Could not recreate channel tab handler", e);
            }
        }
        if (this.playlistControlBinding != null) {
            int itemCount = this.infoListAdapter.getItemCount();
            Dispatcher dispatcher = this.playlistControlBinding;
            if (itemCount > 1) {
                ((LinearLayout) dispatcher.executorServiceOrNull).setVisibility(0);
            } else {
                ((LinearLayout) dispatcher.executorServiceOrNull).setVisibility(8);
            }
            AppKt.initPlaylistControlClickListener(this.activity, this.playlistControlBinding, this);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final SingleAmb loadMoreItemsLogic() {
        int i = this.serviceId;
        ListLinkHandler listLinkHandler = this.tabHandler;
        Page page = this.currentNextPage;
        ExtractorHelper.checkServiceId(i);
        return new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda4(i, listLinkHandler, page, 0), 3);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final Single loadResult(boolean z) {
        return ExtractorHelper.getChannelTab(this.serviceId, this.tabHandler, z);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_channel_tab, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.playlistControlBinding = null;
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void setTitle(String str) {
        super.setTitle(this.channelName);
    }
}
