package org.schabi.newpipe.local.holder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import j$.time.format.DateTimeFormatter;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder$$ExternalSyntheticLambda2;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.views.AnimatedProgressBar;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LocalPlaylistStreamItemHolder extends LocalItemHolder {
    public final /* synthetic */ int $r8$classId;
    public final TextView itemAdditionalDetailsView;
    public final TextView itemDurationView;
    public final View itemHandleView;
    public final AnimatedProgressBar itemProgressView;
    public final ImageView itemThumbnailView;
    public final TextView itemVideoTitleView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalPlaylistStreamItemHolder(TokenData tokenData, int i, ViewGroup viewGroup, int i2) {
        super(tokenData, i, viewGroup);
        this.$r8$classId = i2;
        switch (i2) {
            case 1:
                super(tokenData, i, viewGroup);
                this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
                this.itemVideoTitleView = (TextView) this.itemView.findViewById(R.id.itemVideoTitleView);
                this.itemAdditionalDetailsView = (TextView) this.itemView.findViewById(R.id.itemUploaderView);
                this.itemDurationView = (TextView) this.itemView.findViewById(R.id.itemDurationView);
                this.itemHandleView = (TextView) this.itemView.findViewById(R.id.itemAdditionalDetails);
                this.itemProgressView = (AnimatedProgressBar) this.itemView.findViewById(R.id.itemProgressView);
                break;
            default:
                this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
                this.itemVideoTitleView = (TextView) this.itemView.findViewById(R.id.itemVideoTitleView);
                this.itemAdditionalDetailsView = (TextView) this.itemView.findViewById(R.id.itemAdditionalDetails);
                this.itemDurationView = (TextView) this.itemView.findViewById(R.id.itemDurationView);
                this.itemHandleView = this.itemView.findViewById(R.id.itemHandle);
                this.itemProgressView = (AnimatedProgressBar) this.itemView.findViewById(R.id.itemProgressView);
                break;
        }
    }

    @Override // org.schabi.newpipe.local.holder.LocalItemHolder
    public final void updateFromItem(LocalItem localItem, PlaylistHeaderBinding playlistHeaderBinding, DateTimeFormatter dateTimeFormatter) {
        int i = this.$r8$classId;
        ImageView imageView = this.itemThumbnailView;
        View view = this.itemHandleView;
        TextView textView = this.itemAdditionalDetailsView;
        TextView textView2 = this.itemVideoTitleView;
        AnimatedProgressBar animatedProgressBar = this.itemProgressView;
        TextView textView3 = this.itemDurationView;
        TokenData tokenData = this.itemBuilder;
        switch (i) {
            case 0:
                if (localItem instanceof PlaylistStreamEntry) {
                    PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) localItem;
                    long j = playlistStreamEntry.progressMillis;
                    StreamEntity streamEntity = playlistStreamEntry.streamEntity;
                    textView2.setText(streamEntity.getTitle());
                    textView.setText(Localization.concatenateStrings(streamEntity.getUploader(), ServiceHelper.getNameOfServiceById(streamEntity.getServiceId())));
                    if (streamEntity.getDuration() > 0) {
                        textView3.setText(Localization.getDurationString(streamEntity.getDuration()));
                        textView3.setBackgroundColor(((Context) tokenData.value).getColor(R.color.duration_background_color));
                        textView3.setVisibility(0);
                        if (!BundleKt.getPositionsInListsEnabled(animatedProgressBar.getContext()) || j <= 0) {
                            animatedProgressBar.setVisibility(8);
                        } else {
                            animatedProgressBar.setVisibility(0);
                            animatedProgressBar.setMax((int) streamEntity.getDuration());
                            animatedProgressBar.setProgress((int) (j / 1000));
                        }
                    } else {
                        textView3.setVisibility(8);
                    }
                    String thumbnailUrl = streamEntity.getThumbnailUrl();
                    imageView.getClass();
                    Cookie.Companion.loadImageDefault(imageView, thumbnailUrl, R.drawable.placeholder_thumbnail_video, true);
                    this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, playlistStreamEntry, 9));
                    this.itemView.setLongClickable(true);
                    this.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, playlistStreamEntry, 5));
                    view.setOnTouchListener(new PlayQueueItemBuilder$$ExternalSyntheticLambda2(this, playlistStreamEntry, 2));
                    break;
                }
                break;
            default:
                if (localItem instanceof StreamStatisticsEntry) {
                    StreamStatisticsEntry streamStatisticsEntry = (StreamStatisticsEntry) localItem;
                    long j2 = streamStatisticsEntry.progressMillis;
                    StreamEntity streamEntity2 = streamStatisticsEntry.streamEntity;
                    textView2.setText(streamEntity2.getTitle());
                    textView.setText(streamEntity2.getUploader());
                    if (streamEntity2.getDuration() > 0) {
                        textView3.setText(Localization.getDurationString(streamEntity2.getDuration()));
                        textView3.setBackgroundColor(((Context) tokenData.value).getColor(R.color.duration_background_color));
                        textView3.setVisibility(0);
                        if (!BundleKt.getPositionsInListsEnabled(animatedProgressBar.getContext()) || j2 <= 0) {
                            animatedProgressBar.setVisibility(8);
                        } else {
                            animatedProgressBar.setVisibility(0);
                            animatedProgressBar.setMax((int) streamEntity2.getDuration());
                            animatedProgressBar.setProgress((int) (j2 / 1000));
                        }
                    } else {
                        textView3.setVisibility(8);
                        animatedProgressBar.setVisibility(8);
                    }
                    TextView textView4 = (TextView) view;
                    if (textView4 != null) {
                        Context context = (Context) tokenData.value;
                        long j3 = streamStatisticsEntry.watchCount;
                        textView4.setText(Localization.concatenateStrings(Localization.getQuantity(context, R.plurals.views, R.string.no_views, j3, Localization.shortCount(context, j3)), dateTimeFormatter.format(streamStatisticsEntry.latestAccessDate), ServiceHelper.getNameOfServiceById(streamEntity2.getServiceId())));
                    }
                    String thumbnailUrl2 = streamEntity2.getThumbnailUrl();
                    imageView.getClass();
                    Cookie.Companion.loadImageDefault(imageView, thumbnailUrl2, R.drawable.placeholder_thumbnail_video, true);
                    this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, streamStatisticsEntry, 10));
                    this.itemView.setLongClickable(true);
                    this.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, streamStatisticsEntry, 6));
                    break;
                }
                break;
        }
    }

    @Override // org.schabi.newpipe.local.holder.LocalItemHolder
    public final void updateState(LocalItem localItem) {
        switch (this.$r8$classId) {
            case 0:
                if (localItem instanceof PlaylistStreamEntry) {
                    PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) localItem;
                    StreamEntity streamEntity = playlistStreamEntry.streamEntity;
                    long j = playlistStreamEntry.progressMillis;
                    AnimatedProgressBar animatedProgressBar = this.itemProgressView;
                    if (BundleKt.getPositionsInListsEnabled(animatedProgressBar.getContext()) && j > 0 && streamEntity.getDuration() > 0) {
                        animatedProgressBar.setMax((int) streamEntity.getDuration());
                        if (animatedProgressBar.getVisibility() != 0) {
                            animatedProgressBar.setProgress((int) (j / 1000));
                            AppKt.animate$default(animatedProgressBar, true, 500L, null, 0L, null, 28);
                            break;
                        } else {
                            animatedProgressBar.setProgressAnimated((int) (j / 1000));
                            break;
                        }
                    } else if (animatedProgressBar.getVisibility() == 0) {
                        AppKt.animate$default(animatedProgressBar, false, 500L, null, 0L, null, 28);
                        break;
                    }
                }
                break;
            default:
                if (localItem instanceof StreamStatisticsEntry) {
                    StreamStatisticsEntry streamStatisticsEntry = (StreamStatisticsEntry) localItem;
                    StreamEntity streamEntity2 = streamStatisticsEntry.streamEntity;
                    long j2 = streamStatisticsEntry.progressMillis;
                    AnimatedProgressBar animatedProgressBar2 = this.itemProgressView;
                    if (BundleKt.getPositionsInListsEnabled(animatedProgressBar2.getContext()) && j2 > 0 && streamEntity2.getDuration() > 0) {
                        animatedProgressBar2.setMax((int) streamEntity2.getDuration());
                        if (animatedProgressBar2.getVisibility() != 0) {
                            animatedProgressBar2.setProgress((int) (j2 / 1000));
                            AppKt.animate$default(animatedProgressBar2, true, 500L, null, 0L, null, 28);
                            break;
                        } else {
                            animatedProgressBar2.setProgressAnimated((int) (j2 / 1000));
                            break;
                        }
                    } else if (animatedProgressBar2.getVisibility() == 0) {
                        AppKt.animate$default(animatedProgressBar2, false, 500L, null, 0L, null, 28);
                        break;
                    }
                }
                break;
        }
    }
}
