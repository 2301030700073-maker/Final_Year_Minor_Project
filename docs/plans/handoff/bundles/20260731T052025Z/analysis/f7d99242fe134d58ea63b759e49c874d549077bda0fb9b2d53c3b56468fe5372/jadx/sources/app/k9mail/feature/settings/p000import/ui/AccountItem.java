package app.k9mail.feature.settings.p000import.ui;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.feature.settings.p000import.ui.SettingsListItem;
import com.fsck.k9.R;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountItem extends ImportListItem {
    public final String displayName;
    public final int layoutRes;
    public final int type;

    public AccountItem(SettingsListItem.Account account) {
        super(account.accountIndex + 1, account.importStatus);
        this.displayName = account.displayName;
        this.type = R.id.settings_import_list_account_item;
        this.layoutRes = R.layout.settings_import_account_list_item;
    }

    @Override // app.k9mail.feature.settings.p000import.ui.ImportListItem, com.mikepenz.fastadapter.items.AbstractItem
    public final void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        AccountViewHolder accountViewHolder = (AccountViewHolder) viewHolder;
        list.getClass();
        super.bindView((ImportCheckBoxViewHolder) accountViewHolder, list);
        accountViewHolder.accountDisplayName.setText(this.displayName);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return this.layoutRes;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return this.type;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new AccountViewHolder(view);
    }

    @Override // app.k9mail.feature.settings.p000import.ui.ImportListItem
    public final void bindView(ImportCheckBoxViewHolder importCheckBoxViewHolder, List list) {
        AccountViewHolder accountViewHolder = (AccountViewHolder) importCheckBoxViewHolder;
        list.getClass();
        super.bindView((ImportCheckBoxViewHolder) accountViewHolder, list);
        accountViewHolder.accountDisplayName.setText(this.displayName);
    }
}
