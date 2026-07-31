package org.schabi.newpipe.info_list;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat$Style;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ComponentRegistry;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.info_list.holder.ChannelInfoItemHolder;
import org.schabi.newpipe.info_list.holder.ChannelMiniInfoItemHolder;
import org.schabi.newpipe.info_list.holder.CommentInfoItemHolder;
import org.schabi.newpipe.info_list.holder.InfoItemHolder;
import org.schabi.newpipe.info_list.holder.PlaylistInfoItemHolder;
import org.schabi.newpipe.info_list.holder.StreamCardInfoItemHolder;
import org.schabi.newpipe.info_list.holder.StreamInfoItemHolder;
import org.schabi.newpipe.info_list.holder.StreamMiniInfoItemHolder;
import org.schabi.newpipe.local.LocalItemListAdapter;
import org.schabi.newpipe.util.FallbackViewHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InfoListAdapter extends RecyclerView.Adapter {
    public final ComponentRegistry.Builder infoItemBuilder;
    public final LayoutInflater layoutInflater;
    public final PlaylistHeaderBinding recordManager;
    public boolean useMiniVariant = false;
    public boolean showFooter = false;
    public ItemViewMode itemMode = ItemViewMode.LIST;
    public Supplier headerSupplier = null;
    public final ArrayList infoItemList = new ArrayList();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.info_list.InfoListAdapter$1, reason: invalid class name */
    public final class AnonymousClass1 extends NotificationCompat$Style {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ RecyclerView.Adapter this$0;
        public final /* synthetic */ int val$spanCount;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(RecyclerView.Adapter adapter, int i, int i2) {
            super(4);
            this.$r8$classId = i2;
            this.this$0 = adapter;
            this.val$spanCount = i;
        }

        @Override // androidx.core.app.NotificationCompat$Style
        public final int getSpanSize(int i) {
            switch (this.$r8$classId) {
                case 0:
                    int itemViewType = ((InfoListAdapter) this.this$0).getItemViewType(i);
                    if (itemViewType == 0 || itemViewType == 1) {
                        break;
                    }
                    break;
                default:
                    int itemViewType2 = ((LocalItemListAdapter) this.this$0).getItemViewType(i);
                    if (itemViewType2 == 0 || itemViewType2 == 1) {
                        break;
                    }
                    break;
            }
            return this.val$spanCount;
        }
    }

    public InfoListAdapter(Context context) {
        this.layoutInflater = LayoutInflater.from(context);
        this.recordManager = new PlaylistHeaderBinding(context);
        this.infoItemBuilder = new ComponentRegistry.Builder(context, 16);
    }

    public final void addInfoItemList(List list) {
        if (list == null) {
            return;
        }
        int sizeConsideringHeaderOffset = sizeConsideringHeaderOffset();
        this.infoItemList.addAll(list);
        notifyItemRangeInserted(sizeConsideringHeaderOffset, list.size());
        if (this.showFooter) {
            notifyItemMoved(sizeConsideringHeaderOffset, sizeConsideringHeaderOffset());
        }
    }

    public final void clearStreamItemList() {
        ArrayList arrayList = this.infoItemList;
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        int size = this.infoItemList.size();
        if (this.headerSupplier != null) {
            size++;
        }
        return this.showFooter ? size + 1 : size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        Supplier supplier = this.headerSupplier;
        if (supplier != null && i == 0) {
            return 0;
        }
        if (supplier != null) {
            i--;
        }
        ArrayList arrayList = this.infoItemList;
        if (i == arrayList.size() && this.showFooter) {
            return 1;
        }
        int ordinal = ((InfoItem) arrayList.get(i)).getInfoType().ordinal();
        ItemViewMode itemViewMode = ItemViewMode.GRID;
        ItemViewMode itemViewMode2 = ItemViewMode.CARD;
        if (ordinal == 0) {
            ItemViewMode itemViewMode3 = this.itemMode;
            if (itemViewMode3 == itemViewMode2) {
                return 259;
            }
            if (itemViewMode3 == itemViewMode) {
                return 258;
            }
            if (this.useMiniVariant) {
                return 256;
            }
            return TsExtractor.TS_STREAM_TYPE_AIT;
        }
        if (ordinal == 1) {
            ItemViewMode itemViewMode4 = this.itemMode;
            if (itemViewMode4 == itemViewMode2) {
                return 771;
            }
            if (itemViewMode4 == itemViewMode) {
                return 770;
            }
            return this.useMiniVariant ? 768 : 769;
        }
        if (ordinal != 2) {
            return ordinal != 3 ? -1 : 1024;
        }
        ItemViewMode itemViewMode5 = this.itemMode;
        if (itemViewMode5 == itemViewMode2) {
            return 515;
        }
        if (itemViewMode5 == itemViewMode) {
            return 514;
        }
        return this.useMiniVariant ? 512 : 513;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof InfoItemHolder) {
            InfoItemHolder infoItemHolder = (InfoItemHolder) viewHolder;
            if (this.headerSupplier != null) {
                i--;
            }
            infoItemHolder.updateFromItem((InfoItem) this.infoItemList.get(i), this.recordManager);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new FallbackViewHolder((View) this.headerSupplier.get());
        }
        int i2 = 0;
        int i3 = 1;
        if (i == 1) {
            View inflate = this.layoutInflater.inflate(R.layout.pignate_footer, viewGroup, false);
            if (inflate != null) {
                return new FallbackViewHolder((LinearLayout) inflate);
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
            return null;
        }
        ComponentRegistry.Builder builder = this.infoItemBuilder;
        if (i == 1024) {
            return new CommentInfoItemHolder(builder, viewGroup);
        }
        switch (i) {
            case 256:
                return new StreamMiniInfoItemHolder(builder, R.layout.list_stream_mini_item, viewGroup);
            case TsExtractor.TS_STREAM_TYPE_AIT /* 257 */:
                return new StreamInfoItemHolder(builder, R.layout.list_stream_item, viewGroup);
            case 258:
                return new StreamCardInfoItemHolder(builder, R.layout.list_stream_grid_item, viewGroup);
            case 259:
                return new StreamCardInfoItemHolder(builder, R.layout.list_stream_card_item, viewGroup);
            default:
                switch (i) {
                    case 512:
                        return new ChannelMiniInfoItemHolder(builder, R.layout.list_channel_mini_item, viewGroup, 0);
                    case 513:
                        return new ChannelInfoItemHolder(builder, R.layout.list_channel_item, viewGroup, i2);
                    case 514:
                        return new ChannelInfoItemHolder(builder, R.layout.list_channel_grid_item, viewGroup, 2);
                    case 515:
                        return new ChannelInfoItemHolder(builder, R.layout.list_channel_card_item, viewGroup, i3);
                    default:
                        switch (i) {
                            case 768:
                                return new ChannelMiniInfoItemHolder(builder, R.layout.list_playlist_mini_item, viewGroup, 1);
                            case 769:
                                return new PlaylistInfoItemHolder(builder, R.layout.list_playlist_item, viewGroup, 1);
                            case 770:
                                return new PlaylistInfoItemHolder(builder, R.layout.list_playlist_grid_item, viewGroup, 1);
                            case 771:
                                return new PlaylistInfoItemHolder(builder, R.layout.list_playlist_card_item, viewGroup, 1);
                            default:
                                return new FallbackViewHolder(new View(viewGroup.getContext()));
                        }
                }
        }
    }

    public final int sizeConsideringHeaderOffset() {
        return (this.headerSupplier != null ? 1 : 0) + this.infoItemList.size();
    }
}
