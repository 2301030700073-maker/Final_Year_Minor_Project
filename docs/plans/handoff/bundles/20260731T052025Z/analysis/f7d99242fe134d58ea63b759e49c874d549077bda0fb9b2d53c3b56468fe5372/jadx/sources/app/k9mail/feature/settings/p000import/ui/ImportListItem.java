package app.k9mail.feature.settings.p000import.ui;

import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ImportListItem extends AbstractItem {
    public long identifier;
    public final ImportStatus importStatus;

    public ImportListItem(long j, ImportStatus importStatus) {
        importStatus.getClass();
        this.identifier = j;
        this.importStatus = importStatus;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public void bindView(ImportCheckBoxViewHolder importCheckBoxViewHolder, List list) {
        int i;
        ImageView imageView = importCheckBoxViewHolder.statusIcon;
        list.getClass();
        super.bindView((RecyclerView.ViewHolder) importCheckBoxViewHolder, list);
        MaterialCheckBox materialCheckBox = importCheckBoxViewHolder.checkBox;
        materialCheckBox.setChecked(this.isSelected);
        importCheckBoxViewHolder.itemView.setEnabled(this.isEnabled);
        materialCheckBox.setEnabled(this.isEnabled);
        int i2 = 0;
        ImportStatus importStatus = this.importStatus;
        ImportStatus importStatus2 = ImportStatus.NOT_AVAILABLE;
        materialCheckBox.setVisibility(importStatus == importStatus2 ? 0 : 8);
        imageView.setVisibility(importStatus != importStatus2 ? 0 : 8);
        if (importStatus != importStatus2) {
            int ordinal = importStatus.ordinal();
            if (ordinal == 1) {
                i2 = 3;
            } else if (ordinal != 2) {
                if (ordinal == 3) {
                    i2 = 1;
                } else if (ordinal == 4) {
                    i2 = 2;
                } else {
                    if (ordinal != 5) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return;
                    }
                    i2 = 4;
                }
            }
            imageView.setImageLevel(i2);
            int ordinal2 = importStatus.ordinal();
            if (ordinal2 == 1) {
                i = R.string.settings_import_status_not_imported;
            } else if (ordinal2 == 2) {
                i = R.string.settings_import_status_success;
            } else if (ordinal2 == 3) {
                i = R.string.settings_import_status_password_required;
            } else if (ordinal2 == 4) {
                i = R.string.settings_import_status_log_in_required;
            } else {
                if (ordinal2 != 5) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                i = R.string.settings_import_status_error;
            }
            imageView.setContentDescription(imageView.getContext().getString(i));
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final long getIdentifier() {
        return this.identifier;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final void setIdentifier(long j) {
        this.identifier = j;
    }
}
