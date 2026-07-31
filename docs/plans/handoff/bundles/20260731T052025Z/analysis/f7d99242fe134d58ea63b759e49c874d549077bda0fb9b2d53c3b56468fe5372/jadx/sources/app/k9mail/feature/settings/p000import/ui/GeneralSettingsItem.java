package app.k9mail.feature.settings.p000import.ui;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsItem extends ImportListItem {
    public final int layoutRes;
    public final int type;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralSettingsItem(ImportStatus importStatus) {
        super(0L, importStatus);
        importStatus.getClass();
        this.type = R.id.settings_import_list_general_item;
        this.layoutRes = R.layout.settings_import_general_list_item;
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
        return new ImportCheckBoxViewHolder(view);
    }
}
