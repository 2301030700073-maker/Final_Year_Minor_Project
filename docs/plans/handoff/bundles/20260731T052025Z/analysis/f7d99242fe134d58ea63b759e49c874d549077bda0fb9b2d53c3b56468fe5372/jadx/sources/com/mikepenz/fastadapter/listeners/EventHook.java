package com.mikepenz.fastadapter.listeners;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface EventHook {
    View onBind(RecyclerView.ViewHolder viewHolder);

    void onBindMany(RecyclerView.ViewHolder viewHolder);
}
