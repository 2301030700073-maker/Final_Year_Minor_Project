package org.schabi.newpipe.player.ui;

import android.view.View;
import androidx.transition.Transition;
import j$.util.Optional;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.info_list.StreamSegmentItem;
import org.schabi.newpipe.info_list.holder.ChannelMiniInfoItemHolder;
import org.schabi.newpipe.info_list.holder.InfoItemHolder;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import us.shandian.giga.ui.adapter.MissionAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MainPlayerUi$$ExternalSyntheticLambda11 implements View.OnLongClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MainPlayerUi$$ExternalSyntheticLambda11(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        PlayQueueItem playQueueItem;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                MainPlayerUi mainPlayerUi = (MainPlayerUi) obj;
                Optional.ofNullable(mainPlayerUi.player.fragmentListener).ifPresent(new Player$$ExternalSyntheticLambda3(10));
                mainPlayerUi.hideControls(0L, 0L);
                mainPlayerUi.hideSystemUIIfNeeded();
                break;
            case 1:
                StreamSegmentItem streamSegmentItem = (StreamSegmentItem) obj;
                MainPlayerUi.AnonymousClass3 anonymousClass3 = streamSegmentItem.onClick;
                int startTimeSeconds = streamSegmentItem.item.getStartTimeSeconds();
                MainPlayerUi mainPlayerUi2 = MainPlayerUi.this;
                Player player = mainPlayerUi2.player;
                MediaItemTag mediaItemTag = player.currentMetadata;
                if (mediaItemTag != null && mediaItemTag.getServiceId() == ServiceList.YouTube.serviceId && (playQueueItem = player.currentItem) != null) {
                    MediaItemTag mediaItemTag2 = player.currentMetadata;
                    Transition.Impl26.shareText(mainPlayerUi2.context, playQueueItem.getTitle(), (mediaItemTag2 == null ? player.context.getString(R.string.unknown_content) : mediaItemTag2.getStreamUrl()) + "&t=" + startTimeSeconds, playQueueItem.getThumbnails());
                    break;
                }
                break;
            case 2:
                Object obj2 = ((ChannelMiniInfoItemHolder) obj).itemBuilder.keyers;
                break;
            case 3:
                Object obj3 = ((ChannelMiniInfoItemHolder) obj).itemBuilder.lazyFetcherFactories;
                break;
            case 4:
                VideoPlayerUi videoPlayerUi = (VideoPlayerUi) obj;
                Transition.Impl26.copyToClipboard(videoPlayerUi.context, videoPlayerUi.player.getVideoUrlAtCurrentTime());
                break;
            default:
                view.performHapticFeedback(0);
                ((MissionAdapter.ViewHolderItem) obj).showPopupMenu();
                break;
        }
        return true;
    }

    public /* synthetic */ MainPlayerUi$$ExternalSyntheticLambda11(InfoItemHolder infoItemHolder, InfoItem infoItem, int i) {
        this.$r8$classId = i;
        this.f$0 = infoItemHolder;
    }
}
