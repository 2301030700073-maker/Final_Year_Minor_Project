package com.fsck.k9.ui.settings;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagedetails.FolderNameItem;
import com.fsck.k9.ui.messagedetails.SectionHeaderItem;
import com.google.android.material.textview.MaterialTextView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UrlActionItem extends AbstractItem {
    public long identifier;
    public final String text;
    public final String url;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ViewHolder extends FastAdapter.ViewHolder {
        public final /* synthetic */ int $r8$classId;
        public final View icon;
        public final MaterialTextView text;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view, int i) {
            super(view);
            this.$r8$classId = i;
            view.getClass();
            switch (i) {
                case 1:
                    super(view);
                    View findViewById = view.findViewById(R.id.folder_icon);
                    findViewById.getClass();
                    this.icon = (ImageView) findViewById;
                    this.text = (MaterialTextView) view.findViewById(R.id.folder_name);
                    break;
                case 2:
                    super(view);
                    View findViewById2 = view.findViewById(R.id.text);
                    findViewById2.getClass();
                    this.text = (MaterialTextView) findViewById2;
                    View findViewById3 = view.findViewById(R.id.icon);
                    findViewById3.getClass();
                    this.icon = (ImageView) findViewById3;
                    break;
                case 3:
                    super(view);
                    this.text = (MaterialTextView) view.findViewById(R.id.title);
                    this.icon = (MaterialTextView) view.findViewById(R.id.extra);
                    break;
                default:
                    View findViewById4 = view.findViewById(R.id.text);
                    findViewById4.getClass();
                    this.text = (MaterialTextView) findViewById4;
                    View findViewById5 = view.findViewById(R.id.icon);
                    findViewById5.getClass();
                    this.icon = (ImageView) findViewById5;
                    break;
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void bindView(AbstractItem abstractItem, List list) {
            int i = this.$r8$classId;
            View view = this.icon;
            MaterialTextView materialTextView = this.text;
            switch (i) {
                case 0:
                    list.getClass();
                    materialTextView.setText(((UrlActionItem) abstractItem).text);
                    ((ImageView) view).setImageResource(R.drawable.ic_help);
                    break;
                case 1:
                    FolderNameItem folderNameItem = (FolderNameItem) abstractItem;
                    list.getClass();
                    materialTextView.setText(folderNameItem.displayName);
                    ((ImageView) view).setImageResource(folderNameItem.iconResourceId);
                    break;
                case 2:
                    SettingsActionItem settingsActionItem = (SettingsActionItem) abstractItem;
                    list.getClass();
                    materialTextView.setText(settingsActionItem.text);
                    ((ImageView) view).setImageResource(settingsActionItem.icon);
                    break;
                default:
                    SectionHeaderItem sectionHeaderItem = (SectionHeaderItem) abstractItem;
                    list.getClass();
                    materialTextView.setText(sectionHeaderItem.title);
                    ((MaterialTextView) view).setText(sectionHeaderItem.extra);
                    break;
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void unbindView(AbstractItem abstractItem) {
            int i = this.$r8$classId;
            View view = this.icon;
            MaterialTextView materialTextView = this.text;
            switch (i) {
                case 0:
                    materialTextView.setText((CharSequence) null);
                    ((ImageView) view).setImageDrawable(null);
                    break;
                case 1:
                    materialTextView.setText((CharSequence) null);
                    ((ImageView) view).setImageDrawable(null);
                    break;
                case 2:
                    materialTextView.setText((CharSequence) null);
                    ((ImageView) view).setImageDrawable(null);
                    break;
                default:
                    materialTextView.setText((CharSequence) null);
                    ((MaterialTextView) view).setText((CharSequence) null);
                    break;
            }
        }
    }

    public UrlActionItem(long j, String str, String str2) {
        this.identifier = j;
        this.text = str;
        this.url = str2;
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
        return R.id.settings_list_url_item;
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
