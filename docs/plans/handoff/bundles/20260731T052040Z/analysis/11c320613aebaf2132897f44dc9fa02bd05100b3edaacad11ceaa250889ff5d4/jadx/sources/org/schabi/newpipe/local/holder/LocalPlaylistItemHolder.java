package org.schabi.newpipe.local.holder;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import j$.time.format.DateTimeFormatter;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistDuplicatesEntry;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LocalPlaylistItemHolder extends LocalItemHolder {
    public final /* synthetic */ int $r8$classId;
    public final TextView itemStreamCountView;
    public final ImageView itemThumbnailView;
    public final TextView itemTitleView;
    public final TextView itemUploaderView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalPlaylistItemHolder(TokenData tokenData, int i, ViewGroup viewGroup, int i2) {
        super(tokenData, i, viewGroup);
        this.$r8$classId = i2;
        this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
        this.itemTitleView = (TextView) this.itemView.findViewById(R.id.itemTitleView);
        this.itemStreamCountView = (TextView) this.itemView.findViewById(R.id.itemStreamCountView);
        this.itemUploaderView = (TextView) this.itemView.findViewById(R.id.itemUploaderView);
    }

    @Override // org.schabi.newpipe.local.holder.LocalItemHolder
    public void updateFromItem(LocalItem localItem, PlaylistHeaderBinding playlistHeaderBinding, DateTimeFormatter dateTimeFormatter) {
        int i = this.$r8$classId;
        int i2 = 0;
        int i3 = 11;
        ImageView imageView = this.itemThumbnailView;
        TextView textView = this.itemUploaderView;
        TextView textView2 = this.itemStreamCountView;
        TextView textView3 = this.itemTitleView;
        switch (i) {
            case 0:
                if (localItem instanceof PlaylistMetadataEntry) {
                    PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) localItem;
                    textView3.setText(playlistMetadataEntry.getOrderingName());
                    textView2.setText(Localization.localizeStreamCountMini(textView2.getContext(), playlistMetadataEntry.getStreamCount()));
                    textView.setVisibility(4);
                    String thumbnailUrl = playlistMetadataEntry.getThumbnailUrl();
                    imageView.getClass();
                    Cookie.Companion.loadImageDefault(imageView, thumbnailUrl, R.drawable.placeholder_thumbnail_playlist, true);
                    if (!(playlistMetadataEntry instanceof PlaylistDuplicatesEntry) || ((PlaylistDuplicatesEntry) playlistMetadataEntry).timesStreamIsContained <= 0) {
                        this.itemView.setAlpha(1.0f);
                    } else {
                        this.itemView.setAlpha(0.6f);
                    }
                    this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, localItem, i3));
                    this.itemView.setLongClickable(true);
                    this.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, localItem, i2));
                    break;
                }
                break;
            default:
                if (localItem instanceof PlaylistRemoteEntity) {
                    PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) localItem;
                    int i4 = playlistRemoteEntity.serviceId;
                    String str = playlistRemoteEntity.uploader;
                    textView3.setText(playlistRemoteEntity.orderingName);
                    textView2.setText(Localization.localizeStreamCountMini(textView2.getContext(), playlistRemoteEntity.streamCount.longValue()));
                    if (TextUtils.isEmpty(str)) {
                        textView.setText(ServiceHelper.getNameOfServiceById(i4));
                    } else {
                        textView.setText(Localization.concatenateStrings(str, ServiceHelper.getNameOfServiceById(i4)));
                    }
                    String str2 = playlistRemoteEntity.thumbnailUrl;
                    imageView.getClass();
                    Cookie.Companion.loadImageDefault(imageView, str2, R.drawable.placeholder_thumbnail_playlist, true);
                    this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, localItem, i3));
                    this.itemView.setLongClickable(true);
                    this.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, localItem, i2));
                    break;
                }
                break;
        }
    }
}
