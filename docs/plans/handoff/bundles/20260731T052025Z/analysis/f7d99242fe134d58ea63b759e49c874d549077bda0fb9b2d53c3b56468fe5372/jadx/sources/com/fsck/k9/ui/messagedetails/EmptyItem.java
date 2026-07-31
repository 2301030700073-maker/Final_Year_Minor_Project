package com.fsck.k9.ui.messagedetails;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmptyItem extends AbstractItem {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ViewHolder extends FastAdapter.ViewHolder {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ViewHolder(View view, int i) {
            super(view);
            this.$r8$classId = i;
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void bindView(AbstractItem abstractItem, List list) {
            switch (this.$r8$classId) {
                case 0:
                    list.getClass();
                    break;
                default:
                    list.getClass();
                    break;
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void unbindView(AbstractItem abstractItem) {
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    break;
            }
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final View createView(Context context, ViewGroup viewGroup) {
        return new View(context);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return 0;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.message_details_empty;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new ViewHolder(view, 0);
    }
}
