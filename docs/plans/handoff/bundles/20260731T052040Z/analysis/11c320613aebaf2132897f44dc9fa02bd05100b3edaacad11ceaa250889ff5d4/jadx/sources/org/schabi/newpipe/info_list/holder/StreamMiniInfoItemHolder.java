package org.schabi.newpipe.info_list.holder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import okhttp3.Cookie;
import okio.Okio;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.local.holder.PlaylistItemHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.views.AnimatedProgressBar;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class StreamMiniInfoItemHolder extends InfoItemHolder {
    public final TextView itemDurationView;
    public final AnimatedProgressBar itemProgressView;
    public final ImageView itemThumbnailView;
    public final TextView itemUploaderView;
    public final TextView itemVideoTitleView;

    public StreamMiniInfoItemHolder(ComponentRegistry.Builder builder, int i, ViewGroup viewGroup) {
        super(builder, i, viewGroup);
        this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
        this.itemVideoTitleView = (TextView) this.itemView.findViewById(R.id.itemVideoTitleView);
        this.itemUploaderView = (TextView) this.itemView.findViewById(R.id.itemUploaderView);
        this.itemDurationView = (TextView) this.itemView.findViewById(R.id.itemDurationView);
        this.itemProgressView = (AnimatedProgressBar) this.itemView.findViewById(R.id.itemProgressView);
    }

    @Override // org.schabi.newpipe.info_list.holder.InfoItemHolder
    public void updateFromItem(InfoItem infoItem, PlaylistHeaderBinding playlistHeaderBinding) {
        StreamStateEntity streamStateEntity;
        if (infoItem instanceof StreamInfoItem) {
            StreamInfoItem streamInfoItem = (StreamInfoItem) infoItem;
            this.itemVideoTitleView.setText(streamInfoItem.getName());
            this.itemUploaderView.setText(streamInfoItem.getUploaderName());
            long duration = streamInfoItem.getDuration();
            ComponentRegistry.Builder builder = this.itemBuilder;
            int i = 8;
            AnimatedProgressBar animatedProgressBar = this.itemProgressView;
            TextView textView = this.itemDurationView;
            if (duration > 0) {
                textView.setText(Localization.getDurationString(streamInfoItem.getDuration()));
                textView.setBackgroundColor(((Context) builder.interceptors).getColor(R.color.duration_background_color));
                textView.setVisibility(0);
                if (BundleKt.getPositionsInListsEnabled(animatedProgressBar.getContext())) {
                    playlistHeaderBinding.getClass();
                    streamStateEntity = ((StreamStateEntity[]) new SingleAmb(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(playlistHeaderBinding, infoItem, 6), 3).subscribeOn(Schedulers.IO).blockingGet())[0];
                } else {
                    streamStateEntity = null;
                }
                if (streamStateEntity != null) {
                    animatedProgressBar.setVisibility(0);
                    animatedProgressBar.setMax((int) streamInfoItem.getDuration());
                    animatedProgressBar.setProgress((int) (streamStateEntity.progressMillis / 1000));
                } else {
                    animatedProgressBar.setVisibility(8);
                }
            } else if (Okio.isLiveStream(streamInfoItem.getStreamType())) {
                textView.setText(R.string.duration_live);
                textView.setBackgroundColor(((Context) builder.interceptors).getColor(R.color.live_duration_background_color));
                textView.setVisibility(0);
                animatedProgressBar.setVisibility(8);
            } else {
                textView.setVisibility(8);
                animatedProgressBar.setVisibility(8);
            }
            List thumbnails = streamInfoItem.getThumbnails();
            ImageView imageView = this.itemThumbnailView;
            imageView.getClass();
            thumbnails.getClass();
            Cookie.Companion.loadImageDefault(imageView, ImageStrategy.choosePreferredImage(thumbnails), R.drawable.placeholder_thumbnail_video, true);
            this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, streamInfoItem, i));
            int ordinal = streamInfoItem.getStreamType().ordinal();
            View view = this.itemView;
            switch (ordinal) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    view.setLongClickable(true);
                    this.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, streamInfoItem, 4));
                    break;
                default:
                    view.setLongClickable(false);
                    this.itemView.setOnLongClickListener(null);
                    break;
            }
        }
    }
}
