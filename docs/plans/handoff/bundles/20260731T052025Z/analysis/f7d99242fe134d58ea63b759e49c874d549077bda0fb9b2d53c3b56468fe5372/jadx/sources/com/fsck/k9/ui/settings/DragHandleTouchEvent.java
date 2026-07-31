package com.fsck.k9.ui.settings;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.settings.AccountItem;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.TouchEventHook;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DragHandleTouchEvent extends TouchEventHook {
    public final DI$$ExternalSyntheticLambda0 action;

    public DragHandleTouchEvent(DI$$ExternalSyntheticLambda0 dI$$ExternalSyntheticLambda0) {
        this.action = dI$$ExternalSyntheticLambda0;
    }

    @Override // com.mikepenz.fastadapter.listeners.TouchEventHook, com.mikepenz.fastadapter.listeners.EventHook
    public final View onBind(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof AccountItem.ViewHolder) {
            return ((AccountItem.ViewHolder) viewHolder).dragHandle;
        }
        return null;
    }

    @Override // com.mikepenz.fastadapter.listeners.TouchEventHook
    public final boolean onTouch(View view, MotionEvent motionEvent, int i, FastAdapter fastAdapter, AbstractItem abstractItem) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        this.action.invoke(Integer.valueOf(i));
        return true;
    }
}
