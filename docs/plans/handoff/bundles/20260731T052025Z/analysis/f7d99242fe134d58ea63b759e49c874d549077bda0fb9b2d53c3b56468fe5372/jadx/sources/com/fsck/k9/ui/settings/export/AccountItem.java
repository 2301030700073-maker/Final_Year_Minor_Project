package com.fsck.k9.ui.settings.export;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.export.SettingsListItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountItem extends CheckBoxItem {
    public final String displayName;
    public final String email;

    public AccountItem(SettingsListItem.Account account) {
        super(account.accountNumber + 1);
        this.displayName = account.displayName;
        this.email = account.email;
    }

    @Override // com.fsck.k9.ui.settings.export.CheckBoxItem, com.mikepenz.fastadapter.items.AbstractItem
    public final void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        AccountViewHolder accountViewHolder = (AccountViewHolder) viewHolder;
        list.getClass();
        super.bindView((CheckBoxViewHolder) accountViewHolder, list);
        accountViewHolder.accountDisplayName.setText(this.displayName);
        accountViewHolder.accountEmail.setText(this.email);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.settings_export_account_list_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.settings_export_list_account_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new AccountViewHolder(view);
    }

    @Override // com.fsck.k9.ui.settings.export.CheckBoxItem
    public final void bindView(CheckBoxViewHolder checkBoxViewHolder, List list) {
        AccountViewHolder accountViewHolder = (AccountViewHolder) checkBoxViewHolder;
        list.getClass();
        super.bindView((CheckBoxViewHolder) accountViewHolder, list);
        accountViewHolder.accountDisplayName.setText(this.displayName);
        accountViewHolder.accountEmail.setText(this.email);
    }
}
