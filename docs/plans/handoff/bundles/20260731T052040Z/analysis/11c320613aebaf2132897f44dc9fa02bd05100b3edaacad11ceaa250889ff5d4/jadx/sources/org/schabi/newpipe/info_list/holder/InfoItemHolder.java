package org.schabi.newpipe.info_list.holder;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ComponentRegistry;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InfoItemHolder extends RecyclerView.ViewHolder {
    public final ComponentRegistry.Builder itemBuilder;

    public InfoItemHolder(ComponentRegistry.Builder builder, int i, ViewGroup viewGroup) {
        super(LayoutInflater.from((Context) builder.interceptors).inflate(i, viewGroup, false));
        this.itemBuilder = builder;
    }

    public abstract void updateFromItem(InfoItem infoItem, PlaylistHeaderBinding playlistHeaderBinding);
}
