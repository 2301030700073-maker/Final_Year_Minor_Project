package org.schabi.newpipe.local.subscription.item;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.xwray.groupie.GroupieViewHolder;
import com.xwray.groupie.Item;
import java.util.List;
import okhttp3.Cookie;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.local.holder.PlaylistItemHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.OnClickGesture;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChannelItem extends Item {
    public final ChannelInfoItem infoItem;
    public final long subscriptionId;
    public ItemVersion itemVersion = ItemVersion.MINI;
    public OnClickGesture gesturesListener = null;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ItemVersion {
        public static final /* synthetic */ ItemVersion[] $VALUES;
        public static final ItemVersion GRID;
        public static final ItemVersion MINI;
        public static final ItemVersion NORMAL;

        static {
            ItemVersion itemVersion = new ItemVersion("NORMAL", 0);
            NORMAL = itemVersion;
            ItemVersion itemVersion2 = new ItemVersion("MINI", 1);
            MINI = itemVersion2;
            ItemVersion itemVersion3 = new ItemVersion("GRID", 2);
            GRID = itemVersion3;
            $VALUES = new ItemVersion[]{itemVersion, itemVersion2, itemVersion3};
        }

        public static ItemVersion valueOf(String str) {
            return (ItemVersion) Enum.valueOf(ItemVersion.class, str);
        }

        public static ItemVersion[] values() {
            return (ItemVersion[]) $VALUES.clone();
        }
    }

    public ChannelItem(ChannelInfoItem channelInfoItem, long j) {
        this.infoItem = channelInfoItem;
        this.subscriptionId = j;
    }

    @Override // com.xwray.groupie.Item
    public final void bind(GroupieViewHolder groupieViewHolder) {
        groupieViewHolder.getClass();
        TextView textView = (TextView) groupieViewHolder.itemView.findViewById(R.id.itemTitleView);
        TextView textView2 = (TextView) groupieViewHolder.itemView.findViewById(R.id.itemAdditionalDetails);
        TextView textView3 = (TextView) groupieViewHolder.itemView.findViewById(R.id.itemChannelDescriptionView);
        ImageView imageView = (ImageView) groupieViewHolder.itemView.findViewById(R.id.itemThumbnailView);
        ChannelInfoItem channelInfoItem = this.infoItem;
        textView.setText(channelInfoItem.getName());
        Context context = groupieViewHolder.itemView.getContext();
        context.getClass();
        String shortSubscriberCount = channelInfoItem.getSubscriberCount() >= 0 ? Localization.shortSubscriberCount(context, channelInfoItem.getSubscriberCount()) : context.getString(R.string.subscribers_count_not_available);
        ItemVersion itemVersion = this.itemVersion;
        ItemVersion itemVersion2 = ItemVersion.NORMAL;
        if (itemVersion == itemVersion2 && channelInfoItem.getStreamCount() >= 0) {
            shortSubscriberCount = Localization.concatenateStrings(shortSubscriberCount, Localization.localizeStreamCount(context, channelInfoItem.getStreamCount()));
        }
        shortSubscriberCount.getClass();
        textView2.setText(shortSubscriberCount);
        if (this.itemVersion == itemVersion2) {
            textView3.setText(channelInfoItem.getDescription());
        }
        imageView.getClass();
        List thumbnails = channelInfoItem.getThumbnails();
        thumbnails.getClass();
        Cookie.Companion.loadImageDefault(imageView, ImageStrategy.choosePreferredImage(thumbnails), R.drawable.placeholder_person, true);
        OnClickGesture onClickGesture = this.gesturesListener;
        if (onClickGesture != null) {
            groupieViewHolder.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(onClickGesture, this, 12));
            groupieViewHolder.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(onClickGesture, this, 7));
        }
    }

    @Override // com.xwray.groupie.Item
    public final long getId() {
        long j = this.subscriptionId;
        return j == -1 ? this.id : j;
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        int ordinal = this.itemVersion.ordinal();
        if (ordinal == 0) {
            return R.layout.list_channel_item;
        }
        if (ordinal == 1) {
            return R.layout.list_channel_mini_item;
        }
        if (ordinal == 2) {
            return R.layout.list_channel_grid_item;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m();
        return 0;
    }

    @Override // com.xwray.groupie.Item
    public final int getSpanSize(int i) {
        if (this.itemVersion == ItemVersion.GRID) {
            return 1;
        }
        return i;
    }
}
