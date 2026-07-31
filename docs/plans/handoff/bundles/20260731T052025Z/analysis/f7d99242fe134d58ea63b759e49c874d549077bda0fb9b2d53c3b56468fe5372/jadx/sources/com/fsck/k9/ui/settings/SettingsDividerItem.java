package com.fsck.k9.ui.settings;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagedetails.MessageDateItem;
import com.google.android.material.textview.MaterialTextView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsDividerItem extends AbstractItem {
    public long identifier;
    public final String text;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ViewHolder extends FastAdapter.ViewHolder {
        public final /* synthetic */ int $r8$classId;
        public final MaterialTextView text;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view, int i) {
            super(view);
            this.$r8$classId = i;
            view.getClass();
            switch (i) {
                case 1:
                    super(view);
                    this.text = (MaterialTextView) view.findViewById(R.id.date);
                    break;
                default:
                    View findViewById = view.findViewById(R.id.text);
                    findViewById.getClass();
                    this.text = (MaterialTextView) findViewById;
                    break;
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void bindView(AbstractItem abstractItem, List list) {
            int i = this.$r8$classId;
            MaterialTextView materialTextView = this.text;
            switch (i) {
                case 0:
                    list.getClass();
                    materialTextView.setText(((SettingsDividerItem) abstractItem).text);
                    break;
                default:
                    list.getClass();
                    materialTextView.setText(((MessageDateItem) abstractItem).date);
                    break;
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void unbindView(AbstractItem abstractItem) {
            int i = this.$r8$classId;
            MaterialTextView materialTextView = this.text;
            switch (i) {
                case 0:
                    materialTextView.setText((CharSequence) null);
                    break;
                default:
                    materialTextView.setText((CharSequence) null);
                    break;
            }
        }
    }

    public SettingsDividerItem(long j, String str) {
        this.identifier = j;
        this.text = str;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final long getIdentifier() {
        return this.identifier;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.text_divider_list_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.settings_list_header_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new ViewHolder(view, 0);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final void setIdentifier(long j) {
        this.identifier = j;
    }
}
