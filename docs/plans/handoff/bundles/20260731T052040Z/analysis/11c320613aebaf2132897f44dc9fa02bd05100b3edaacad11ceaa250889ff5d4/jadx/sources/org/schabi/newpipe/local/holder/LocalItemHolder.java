package org.schabi.newpipe.local.holder;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import j$.time.format.DateTimeFormatter;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LocalItemHolder extends RecyclerView.ViewHolder {
    public final TokenData itemBuilder;

    public LocalItemHolder(TokenData tokenData, int i, ViewGroup viewGroup) {
        super(LayoutInflater.from((Context) tokenData.value).inflate(i, viewGroup, false));
        this.itemBuilder = tokenData;
    }

    public abstract void updateFromItem(LocalItem localItem, PlaylistHeaderBinding playlistHeaderBinding, DateTimeFormatter dateTimeFormatter);

    public void updateState(LocalItem localItem) {
    }
}
