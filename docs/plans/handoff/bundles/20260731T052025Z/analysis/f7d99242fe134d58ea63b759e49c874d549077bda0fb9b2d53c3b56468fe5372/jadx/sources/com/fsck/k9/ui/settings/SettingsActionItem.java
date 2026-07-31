package com.fsck.k9.ui.settings;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.UrlActionItem;
import com.mikepenz.fastadapter.items.AbstractItem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsActionItem extends AbstractItem {
    public final int icon;
    public long identifier;
    public final int navigationAction;
    public final String text;

    public SettingsActionItem(int i, int i2, long j, String str) {
        this.identifier = j;
        this.text = str;
        this.navigationAction = i;
        this.icon = i2;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final long getIdentifier() {
        return this.identifier;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.text_icon_list_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.settings_list_action_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new UrlActionItem.ViewHolder(view, 2);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final void setIdentifier(long j) {
        this.identifier = j;
    }
}
