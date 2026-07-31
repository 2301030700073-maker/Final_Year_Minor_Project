package com.fsck.k9.ui.choosefolder;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderListItem extends AbstractItem {
    public final long databaseId;
    public final String displayName;
    public final int folderIconResource;
    public long identifier;

    public FolderListItem(int i, long j, String str) {
        this.databaseId = j;
        this.folderIconResource = i;
        this.displayName = str;
        this.identifier = j;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        FolderListViewHolder folderListViewHolder = (FolderListViewHolder) viewHolder;
        list.getClass();
        super.bindView(folderListViewHolder, list);
        folderListViewHolder.icon.setImageResource(this.folderIconResource);
        folderListViewHolder.name.setText(this.displayName);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final long getIdentifier() {
        return this.identifier;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.folder_list_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return 1;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new FolderListViewHolder(view);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final void setIdentifier(long j) {
        this.identifier = j;
    }
}
