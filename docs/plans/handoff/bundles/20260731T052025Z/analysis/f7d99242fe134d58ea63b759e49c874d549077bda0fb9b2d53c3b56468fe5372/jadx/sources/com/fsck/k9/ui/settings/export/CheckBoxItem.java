package com.fsck.k9.ui.settings.export;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CheckBoxItem extends AbstractItem {
    public long identifier;

    public CheckBoxItem(long j) {
        this.identifier = j;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public void bindView(CheckBoxViewHolder checkBoxViewHolder, List list) {
        list.getClass();
        super.bindView((RecyclerView.ViewHolder) checkBoxViewHolder, list);
        MaterialCheckBox materialCheckBox = checkBoxViewHolder.checkBox;
        materialCheckBox.setChecked(this.isSelected);
        checkBoxViewHolder.itemView.setEnabled(this.isEnabled);
        materialCheckBox.setEnabled(this.isEnabled);
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
