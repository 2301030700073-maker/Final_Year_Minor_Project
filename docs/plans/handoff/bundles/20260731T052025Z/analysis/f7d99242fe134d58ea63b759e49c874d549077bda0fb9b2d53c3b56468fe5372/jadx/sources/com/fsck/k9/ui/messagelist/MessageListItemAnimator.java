package com.fsck.k9.ui.messagelist;

import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListItemAnimator extends DefaultItemAnimator {
    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    public final boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (!viewHolder.equals(viewHolder2) || !Intrinsics.areEqual(viewHolder2.itemView.getTag(R.id.message_list_swipe_tag), Boolean.TRUE)) {
            return super.animateChange(viewHolder, viewHolder2, i, i2, i3, i4);
        }
        dispatchAnimationFinished(viewHolder);
        dispatchAnimationFinished(viewHolder2);
        return false;
    }
}
