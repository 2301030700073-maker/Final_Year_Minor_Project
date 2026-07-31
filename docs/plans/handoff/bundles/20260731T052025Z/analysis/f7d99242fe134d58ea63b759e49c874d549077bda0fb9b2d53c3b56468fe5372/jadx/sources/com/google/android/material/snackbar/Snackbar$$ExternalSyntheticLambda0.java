package com.google.android.material.snackbar;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.mikepenz.fastadapter.listeners.EventHook;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Snackbar$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Snackbar$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int bindingAdapterPosition;
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((View.OnClickListener) obj).onClick(view);
                ((Snackbar) obj2).dispatchDismiss(1);
                break;
            default:
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) obj2;
                EventHook eventHook = (EventHook) obj;
                eventHook.getClass();
                View view2 = viewHolder.itemView;
                Object tag = view2.getTag(R.id.fastadapter_item_adapter);
                FastAdapter fastAdapter = tag instanceof FastAdapter ? (FastAdapter) tag : null;
                if (fastAdapter != null && (bindingAdapterPosition = viewHolder.getBindingAdapterPosition()) != -1) {
                    Object tag2 = view2.getTag(R.id.fastadapter_item);
                    AbstractItem abstractItem = tag2 instanceof AbstractItem ? (AbstractItem) tag2 : null;
                    if (abstractItem != null) {
                        view.getClass();
                        ((ClickEventHook) eventHook).onClick(view, bindingAdapterPosition, fastAdapter, abstractItem);
                        break;
                    }
                }
                break;
        }
    }
}
