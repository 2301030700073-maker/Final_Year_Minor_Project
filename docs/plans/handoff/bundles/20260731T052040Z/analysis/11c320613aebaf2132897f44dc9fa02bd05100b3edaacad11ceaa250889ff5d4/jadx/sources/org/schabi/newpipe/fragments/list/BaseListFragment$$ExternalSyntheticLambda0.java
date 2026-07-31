package org.schabi.newpipe.fragments.list;

import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItem;
import org.schabi.newpipe.util.OnClickGesture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseListFragment$$ExternalSyntheticLambda0 implements OnClickGesture {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BaseListFragment f$0;

    public /* synthetic */ BaseListFragment$$ExternalSyntheticLambda0(BaseListFragment baseListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = baseListFragment;
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public final /* synthetic */ void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
        int i = this.$r8$classId;
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public final /* synthetic */ void held(Object obj) {
        int i = this.$r8$classId;
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public final void selected(Object obj) {
        int i = this.$r8$classId;
        BaseListFragment baseListFragment = this.f$0;
        switch (i) {
            case 0:
                ChannelInfoItem channelInfoItem = (ChannelInfoItem) obj;
                int i2 = BaseListFragment.$r8$clinit;
                try {
                    baseListFragment.onItemSelected();
                    SQLite.openChannelFragment(baseListFragment.getFM(), channelInfoItem.getServiceId(), channelInfoItem.getUrl(), channelInfoItem.getName());
                    break;
                } catch (Exception e) {
                    ErrorUtil.showUiErrorSnackbar(baseListFragment, "Opening channel fragment", e);
                    return;
                }
            case 1:
                PlaylistInfoItem playlistInfoItem = (PlaylistInfoItem) obj;
                int i3 = BaseListFragment.$r8$clinit;
                try {
                    baseListFragment.onItemSelected();
                    SQLite.openPlaylistFragment(baseListFragment.getFM(), playlistInfoItem.getServiceId(), playlistInfoItem.getUrl(), playlistInfoItem.getName());
                    break;
                } catch (Exception e2) {
                    ErrorUtil.showUiErrorSnackbar(baseListFragment, "Opening playlist fragment", e2);
                    return;
                }
            default:
                baseListFragment.onItemSelected();
                break;
        }
    }

    private final /* synthetic */ void held$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda0(Object obj) {
    }

    private final /* synthetic */ void held$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda1(Object obj) {
    }

    private final /* synthetic */ void held$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda2(Object obj) {
    }

    private final /* synthetic */ void drag$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda0(Object obj, RecyclerView.ViewHolder viewHolder) {
    }

    private final /* synthetic */ void drag$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda1(Object obj, RecyclerView.ViewHolder viewHolder) {
    }

    private final /* synthetic */ void drag$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda2(Object obj, RecyclerView.ViewHolder viewHolder) {
    }
}
