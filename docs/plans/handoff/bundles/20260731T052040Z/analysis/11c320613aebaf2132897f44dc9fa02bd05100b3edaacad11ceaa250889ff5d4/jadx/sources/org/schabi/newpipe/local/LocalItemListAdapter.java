package org.schabi.newpipe.local;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import j$.time.format.DateTimeFormatter;
import j$.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.local.holder.LocalBookmarkPlaylistItemHolder;
import org.schabi.newpipe.local.holder.LocalItemHolder;
import org.schabi.newpipe.local.holder.LocalPlaylistCardItemHolder;
import org.schabi.newpipe.local.holder.LocalPlaylistItemHolder;
import org.schabi.newpipe.local.holder.LocalPlaylistStreamCardItemHolder;
import org.schabi.newpipe.local.holder.LocalPlaylistStreamItemHolder;
import org.schabi.newpipe.local.holder.LocalStatisticStreamCardItemHolder;
import org.schabi.newpipe.local.holder.RemoteBookmarkPlaylistItemHolder;
import org.schabi.newpipe.local.holder.RemotePlaylistCardItemHolder;
import org.schabi.newpipe.util.FallbackViewHolder;
import org.schabi.newpipe.util.Localization;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LocalItemListAdapter extends RecyclerView.Adapter {
    public final DateTimeFormatter dateTimeFormatter;
    public final TokenData localItemBuilder;
    public final PlaylistHeaderBinding recordManager;
    public Supplier headerSupplier = null;
    public View footer = null;
    public ItemViewMode itemViewMode = ItemViewMode.LIST;
    public boolean useItemHandle = false;
    public final ArrayList localItems = new ArrayList();

    public LocalItemListAdapter(Context context) {
        this.recordManager = new PlaylistHeaderBinding(context);
        this.localItemBuilder = new TokenData(context);
        this.dateTimeFormatter = DateTimeFormatter.ofLocalizedDate(FormatStyle.SHORT).withLocale(Localization.getPreferredLocale(context));
    }

    public final void addItems(List list) {
        if (list == null) {
            return;
        }
        int sizeConsideringHeader = sizeConsideringHeader();
        this.localItems.addAll(list);
        notifyItemRangeInserted(sizeConsideringHeader, list.size());
    }

    public final void clearStreamItemList() {
        ArrayList arrayList = this.localItems;
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        int size = this.localItems.size();
        return hasHeader() ? size + 1 : size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        if (hasHeader() && i == 0) {
            return 0;
        }
        if (hasHeader()) {
            i--;
        }
        View view = this.footer;
        ArrayList arrayList = this.localItems;
        if (view != null) {
            arrayList.size();
        }
        LocalItem localItem = (LocalItem) arrayList.get(i);
        int ordinal = localItem.getLocalItemType().ordinal();
        ItemViewMode itemViewMode = ItemViewMode.GRID;
        ItemViewMode itemViewMode2 = ItemViewMode.CARD;
        if (ordinal == 0) {
            if (this.useItemHandle) {
                return 8195;
            }
            ItemViewMode itemViewMode3 = this.itemViewMode;
            if (itemViewMode3 == itemViewMode2) {
                return 8194;
            }
            return itemViewMode3 == itemViewMode ? 8193 : 8192;
        }
        if (ordinal == 1) {
            if (this.useItemHandle) {
                return 12291;
            }
            ItemViewMode itemViewMode4 = this.itemViewMode;
            if (itemViewMode4 == itemViewMode2) {
                return 12290;
            }
            return itemViewMode4 == itemViewMode ? 12289 : 12288;
        }
        if (ordinal == 2) {
            ItemViewMode itemViewMode5 = this.itemViewMode;
            if (itemViewMode5 == itemViewMode2) {
                return 4101;
            }
            return itemViewMode5 == itemViewMode ? 4100 : 4097;
        }
        if (ordinal == 3) {
            ItemViewMode itemViewMode6 = this.itemViewMode;
            if (itemViewMode6 == itemViewMode2) {
                return 4099;
            }
            return itemViewMode6 == itemViewMode ? 4098 : 4096;
        }
        Log.e("LocalItemListAdapter", "No holder type has been considered for item: [" + localItem.getLocalItemType() + "]");
        return -1;
    }

    public final boolean hasHeader() {
        return this.headerSupplier != null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        if (list.isEmpty() || !(viewHolder instanceof LocalItemHolder)) {
            onBindViewHolder(viewHolder, i);
            return;
        }
        for (Object obj : list) {
            boolean z = obj instanceof StreamStateEntity;
            ArrayList arrayList = this.localItems;
            if (z) {
                ((LocalItemHolder) viewHolder).updateState((LocalItem) arrayList.get(hasHeader() ? i - 1 : i));
            } else if (obj instanceof Boolean) {
                ((LocalItemHolder) viewHolder).updateState((LocalItem) arrayList.get(hasHeader() ? i - 1 : i));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new HeaderFooterHolder((View) this.headerSupplier.get());
        }
        if (i == 1) {
            return new HeaderFooterHolder(this.footer);
        }
        TokenData tokenData = this.localItemBuilder;
        switch (i) {
            case 4096:
                return new LocalPlaylistStreamItemHolder(tokenData, R.layout.list_stream_item, viewGroup, 1);
            case 4097:
                return new LocalPlaylistStreamItemHolder(tokenData, R.layout.list_stream_playlist_item, viewGroup, 0);
            case 4098:
                return new LocalStatisticStreamCardItemHolder(tokenData, R.layout.list_stream_grid_item, viewGroup, 1);
            case 4099:
                return new LocalStatisticStreamCardItemHolder(tokenData, R.layout.list_stream_card_item, viewGroup, 1);
            case 4100:
                return new LocalPlaylistStreamCardItemHolder(tokenData, R.layout.list_stream_playlist_grid_item, viewGroup, 0);
            case 4101:
                return new LocalPlaylistStreamCardItemHolder(tokenData, R.layout.list_stream_playlist_card_item, viewGroup, 0);
            default:
                switch (i) {
                    case 8192:
                        return new LocalPlaylistItemHolder(tokenData, R.layout.list_playlist_mini_item, viewGroup, 0);
                    case 8193:
                        return new LocalPlaylistCardItemHolder(tokenData, R.layout.list_playlist_grid_item, viewGroup, 0);
                    case 8194:
                        return new LocalPlaylistCardItemHolder(tokenData, R.layout.list_playlist_card_item, viewGroup, 0);
                    case 8195:
                        return new LocalBookmarkPlaylistItemHolder(tokenData, viewGroup);
                    default:
                        switch (i) {
                            case 12288:
                                return new LocalPlaylistItemHolder(tokenData, R.layout.list_playlist_mini_item, viewGroup, 1);
                            case 12289:
                                return new RemotePlaylistCardItemHolder(tokenData, R.layout.list_playlist_grid_item, viewGroup, 1);
                            case 12290:
                                return new RemotePlaylistCardItemHolder(tokenData, R.layout.list_playlist_card_item, viewGroup, 1);
                            case 12291:
                                return new RemoteBookmarkPlaylistItemHolder(tokenData, viewGroup);
                            default:
                                Log.e("LocalItemListAdapter", "No view type has been considered for holder: [" + i + "]");
                                return new FallbackViewHolder(new View(viewGroup.getContext()));
                        }
                }
        }
    }

    public final int sizeConsideringHeader() {
        return (hasHeader() ? 1 : 0) + this.localItems.size();
    }

    public final boolean swapItems(int i, int i2) {
        int i3 = i - (hasHeader() ? 1 : 0);
        int i4 = i2 - (hasHeader() ? 1 : 0);
        if (i3 < 0 || i4 < 0) {
            return false;
        }
        ArrayList arrayList = this.localItems;
        if (i3 >= arrayList.size() || i4 >= arrayList.size()) {
            return false;
        }
        arrayList.add(i4, (LocalItem) arrayList.remove(i3));
        notifyItemMoved(i, i2);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof LocalItemHolder) {
            if (hasHeader()) {
                i--;
            }
            ((LocalItemHolder) viewHolder).updateFromItem((LocalItem) this.localItems.get(i), this.recordManager, this.dateTimeFormatter);
            return;
        }
        boolean z = viewHolder instanceof HeaderFooterHolder;
        if (z && i == 0 && hasHeader()) {
            ((HeaderFooterHolder) viewHolder).view = (View) this.headerSupplier.get();
        } else if (z) {
            sizeConsideringHeader();
        }
    }
}
