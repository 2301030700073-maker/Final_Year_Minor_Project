package com.fsck.k9.ui.messagedetails;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.UrlActionItem;
import com.mikepenz.fastadapter.items.AbstractItem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderNameItem extends AbstractItem {
    public final String displayName;
    public final int iconResourceId;

    public FolderNameItem(String str, int i) {
        this.displayName = str;
        this.iconResourceId = i;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.message_details_folder_name_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.message_details_folder_name;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new UrlActionItem.ViewHolder(view, 1);
    }
}
