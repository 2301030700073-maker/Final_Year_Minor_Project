package org.schabi.newpipe.player.playqueue;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayQueueItemHolder extends RecyclerView.ViewHolder {
    public final TextView itemAdditionalDetailsView;
    public final TextView itemDurationView;
    public final ImageView itemHandle;
    public final View itemRoot;
    public final ImageView itemThumbnailView;
    public final TextView itemVideoTitleView;

    public PlayQueueItemHolder(View view) {
        super(view);
        this.itemRoot = view.findViewById(R.id.itemRoot);
        this.itemVideoTitleView = (TextView) view.findViewById(R.id.itemVideoTitleView);
        this.itemDurationView = (TextView) view.findViewById(R.id.itemDurationView);
        this.itemAdditionalDetailsView = (TextView) view.findViewById(R.id.itemAdditionalDetails);
        this.itemThumbnailView = (ImageView) view.findViewById(R.id.itemThumbnailView);
        this.itemHandle = (ImageView) view.findViewById(R.id.itemHandle);
    }
}
