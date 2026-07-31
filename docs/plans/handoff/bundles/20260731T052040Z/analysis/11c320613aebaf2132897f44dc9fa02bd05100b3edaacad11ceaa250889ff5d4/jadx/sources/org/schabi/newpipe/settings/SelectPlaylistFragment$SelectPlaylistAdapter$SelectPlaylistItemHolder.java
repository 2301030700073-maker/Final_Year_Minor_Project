package org.schabi.newpipe.settings;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder extends RecyclerView.ViewHolder {
    public final ImageView thumbnailView;
    public final TextView titleView;
    public final View view;

    public SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder(View view) {
        super(view);
        this.view = view;
        this.thumbnailView = (ImageView) view.findViewById(R.id.itemThumbnailView);
        this.titleView = (TextView) view.findViewById(R.id.itemTitleView);
    }
}
