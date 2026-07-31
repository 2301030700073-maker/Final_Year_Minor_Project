package org.schabi.newpipe.info_list.holder;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import coil3.ComponentRegistry;
import java.util.List;
import okhttp3.Cookie;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItem;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.player.ui.MainPlayerUi$$ExternalSyntheticLambda11;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ChannelMiniInfoItemHolder extends InfoItemHolder {
    public final /* synthetic */ int $r8$classId;
    public final TextView itemAdditionalDetailView;
    public final TextView itemChannelDescriptionView;
    public final ImageView itemThumbnailView;
    public final TextView itemTitleView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelMiniInfoItemHolder(ComponentRegistry.Builder builder, int i, ViewGroup viewGroup, int i2) {
        super(builder, i, viewGroup);
        this.$r8$classId = i2;
        switch (i2) {
            case 1:
                super(builder, i, viewGroup);
                this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
                this.itemAdditionalDetailView = (TextView) this.itemView.findViewById(R.id.itemTitleView);
                this.itemTitleView = (TextView) this.itemView.findViewById(R.id.itemStreamCountView);
                this.itemChannelDescriptionView = (TextView) this.itemView.findViewById(R.id.itemUploaderView);
                break;
            default:
                this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
                this.itemTitleView = (TextView) this.itemView.findViewById(R.id.itemTitleView);
                this.itemAdditionalDetailView = (TextView) this.itemView.findViewById(R.id.itemAdditionalDetails);
                this.itemChannelDescriptionView = (TextView) this.itemView.findViewById(R.id.itemChannelDescriptionView);
                break;
        }
    }

    public int getDescriptionMaxLineCount(String str) {
        return str == null ? 3 : 2;
    }

    public String getDetailLine(ChannelInfoItem channelInfoItem) {
        long streamCount = channelInfoItem.getStreamCount();
        ComponentRegistry.Builder builder = this.itemBuilder;
        if (streamCount >= 0 && channelInfoItem.getSubscriberCount() >= 0) {
            return Localization.concatenateStrings(Localization.shortSubscriberCount((Context) builder.interceptors, channelInfoItem.getSubscriberCount()), Localization.localizeStreamCount((Context) builder.interceptors, channelInfoItem.getStreamCount()));
        }
        if (channelInfoItem.getStreamCount() >= 0) {
            return Localization.localizeStreamCount((Context) builder.interceptors, channelInfoItem.getStreamCount());
        }
        if (channelInfoItem.getSubscriberCount() >= 0) {
            return Localization.shortSubscriberCount((Context) builder.interceptors, channelInfoItem.getSubscriberCount());
        }
        return null;
    }

    @Override // org.schabi.newpipe.info_list.holder.InfoItemHolder
    public final void updateFromItem(InfoItem infoItem, PlaylistHeaderBinding playlistHeaderBinding) {
        int i = this.$r8$classId;
        ImageView imageView = this.itemThumbnailView;
        TextView textView = this.itemChannelDescriptionView;
        TextView textView2 = this.itemTitleView;
        TextView textView3 = this.itemAdditionalDetailView;
        switch (i) {
            case 0:
                if (infoItem instanceof ChannelInfoItem) {
                    ChannelInfoItem channelInfoItem = (ChannelInfoItem) infoItem;
                    textView2.setText(channelInfoItem.getName());
                    textView2.setSelected(true);
                    String detailLine = getDetailLine(channelInfoItem);
                    if (detailLine == null) {
                        textView3.setVisibility(8);
                    } else {
                        textView3.setVisibility(0);
                        textView3.setText(getDetailLine(channelInfoItem));
                    }
                    Cookie.Companion.loadAvatar(imageView, channelInfoItem.getThumbnails());
                    this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, channelInfoItem, 6));
                    this.itemView.setOnLongClickListener(new MainPlayerUi$$ExternalSyntheticLambda11(this, channelInfoItem, 2));
                    if (textView != null) {
                        if (!Utils.isBlank(channelInfoItem.getDescription())) {
                            textView.setVisibility(0);
                            textView.setText(channelInfoItem.getDescription());
                            textView.setMaxLines(getDescriptionMaxLineCount(detailLine));
                            break;
                        } else {
                            textView.setVisibility(8);
                            break;
                        }
                    }
                }
                break;
            default:
                if (infoItem instanceof PlaylistInfoItem) {
                    PlaylistInfoItem playlistInfoItem = (PlaylistInfoItem) infoItem;
                    textView3.setText(playlistInfoItem.getName());
                    textView2.setText(Localization.localizeStreamCountMini(textView2.getContext(), playlistInfoItem.getStreamCount()));
                    textView.setText(playlistInfoItem.getUploaderName());
                    List thumbnails = playlistInfoItem.getThumbnails();
                    imageView.getClass();
                    thumbnails.getClass();
                    Cookie.Companion.loadImageDefault(imageView, ImageStrategy.choosePreferredImage(thumbnails), R.drawable.placeholder_thumbnail_playlist, true);
                    this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, playlistInfoItem, 7));
                    this.itemView.setLongClickable(true);
                    this.itemView.setOnLongClickListener(new MainPlayerUi$$ExternalSyntheticLambda11(this, playlistInfoItem, 3));
                    break;
                }
                break;
        }
    }
}
