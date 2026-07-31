package com.mikepenz.fastadapter.listeners;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TouchEventHook implements EventHook {
    @Override // com.mikepenz.fastadapter.listeners.EventHook
    public View onBind(RecyclerView.ViewHolder viewHolder) {
        return null;
    }

    public abstract boolean onTouch(View view, MotionEvent motionEvent, int i, FastAdapter fastAdapter, AbstractItem abstractItem);

    @Override // com.mikepenz.fastadapter.listeners.EventHook
    public final void onBindMany(RecyclerView.ViewHolder viewHolder) {
    }
}
