package com.fsck.k9.ui.settings;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.google.android.material.textview.MaterialTextView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountItem extends AbstractItem {
    public final LegacyAccountDto account;
    public long identifier;
    public final boolean isDraggable;
    public final int type = R.id.settings_list_account_item;
    public final int layoutRes = R.layout.account_list_item;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ViewHolder extends FastAdapter.ViewHolder {
        public final ImageView dragHandle;
        public final MaterialTextView email;
        public final MaterialTextView name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            view.getClass();
            View findViewById = view.findViewById(R.id.name);
            findViewById.getClass();
            this.name = (MaterialTextView) findViewById;
            View findViewById2 = view.findViewById(R.id.email);
            findViewById2.getClass();
            this.email = (MaterialTextView) findViewById2;
            View findViewById3 = view.findViewById(R.id.drag_handle);
            findViewById3.getClass();
            this.dragHandle = (ImageView) findViewById3;
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void bindView(AbstractItem abstractItem, List list) {
            AccountItem accountItem = (AccountItem) abstractItem;
            list.getClass();
            LegacyAccountDto legacyAccountDto = accountItem.account;
            String name = legacyAccountDto.getName();
            MaterialTextView materialTextView = this.email;
            MaterialTextView materialTextView2 = this.name;
            if (name != null) {
                materialTextView2.setText(legacyAccountDto.getName());
                materialTextView.setText(legacyAccountDto.getEmail());
                materialTextView.setVisibility(0);
            } else {
                materialTextView2.setText(legacyAccountDto.getEmail());
                materialTextView.setVisibility(8);
            }
            this.dragHandle.setVisibility(accountItem.isDraggable ? 0 : 8);
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void unbindView(AbstractItem abstractItem) {
            this.name.setText((CharSequence) null);
            this.email.setText((CharSequence) null);
        }
    }

    public AccountItem(LegacyAccountDto legacyAccountDto, boolean z) {
        this.account = legacyAccountDto;
        this.isDraggable = z;
        this.identifier = legacyAccountDto.getAccountNumber() + 200;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final long getIdentifier() {
        return this.identifier;
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
        return new ViewHolder(view);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final void setIdentifier(long j) {
        this.identifier = j;
    }
}
