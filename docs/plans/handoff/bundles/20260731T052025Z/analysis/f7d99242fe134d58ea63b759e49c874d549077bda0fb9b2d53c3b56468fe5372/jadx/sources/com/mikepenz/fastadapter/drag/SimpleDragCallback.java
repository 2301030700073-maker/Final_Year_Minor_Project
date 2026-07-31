package com.mikepenz.fastadapter.drag;

import android.view.View;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.settings.AccountItem;
import com.fsck.k9.ui.settings.SettingsListFragment;
import com.fsck.k9.ui.settings.SettingsViewModel;
import com.fsck.k9.ui.settings.SettingsViewModel$moveAccount$1;
import com.fsck.k9.view.DraggableFrameLayout;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SimpleDragCallback extends ItemTouchHelper.SimpleCallback {
    public SettingsListFragment callbackItemTouch;
    public int from;
    public boolean isDragEnabled;
    public int to;

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public final void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        recyclerView.getClass();
        viewHolder.getClass();
        super.clearView(recyclerView, viewHolder);
        if (this.callbackItemTouch != null) {
            View view = viewHolder.itemView;
            view.getClass();
            ((DraggableFrameLayout) view).setDragged(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getDragDirs(androidx.recyclerview.widget.RecyclerView r4, androidx.recyclerview.widget.RecyclerView.ViewHolder r5) {
        /*
            r3 = this;
            r4.getClass()
            r5.getClass()
            android.view.View r4 = r5.itemView
            r0 = 0
            if (r4 == 0) goto L13
            r1 = 2131296734(0x7f0901de, float:1.8211393E38)
            java.lang.Object r4 = r4.getTag(r1)
            goto L14
        L13:
            r4 = r0
        L14:
            boolean r1 = r4 instanceof com.mikepenz.fastadapter.FastAdapter
            if (r1 == 0) goto L1b
            com.mikepenz.fastadapter.FastAdapter r4 = (com.mikepenz.fastadapter.FastAdapter) r4
            goto L1c
        L1b:
            r4 = r0
        L1c:
            if (r4 != 0) goto L20
        L1e:
            r4 = r0
            goto L37
        L20:
            int r5 = r5.getBindingAdapterPosition()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r5)
            r2 = -1
            if (r5 == r2) goto L2c
            goto L2d
        L2c:
            r1 = r0
        L2d:
            if (r1 == 0) goto L1e
            int r5 = r1.intValue()
            com.mikepenz.fastadapter.items.AbstractItem r4 = r4.getItem(r5)
        L37:
            boolean r5 = r4 instanceof com.fsck.k9.ui.settings.AccountItem
            if (r5 == 0) goto L3e
            r0 = r4
            com.fsck.k9.ui.settings.AccountItem r0 = (com.fsck.k9.ui.settings.AccountItem) r0
        L3e:
            if (r0 == 0) goto L48
            boolean r4 = r0.isDraggable
            r5 = 1
            if (r4 != r5) goto L48
            int r3 = r3.mDefaultDragDirs
            return r3
        L48:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.fastadapter.drag.SimpleDragCallback.getDragDirs(androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$ViewHolder):int");
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public final boolean isLongPressDragEnabled() {
        return this.isDragEnabled;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x003e  */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onMove(androidx.recyclerview.widget.RecyclerView r8, androidx.recyclerview.widget.RecyclerView.ViewHolder r9, androidx.recyclerview.widget.RecyclerView.ViewHolder r10) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.fastadapter.drag.SimpleDragCallback.onMove(androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$ViewHolder, androidx.recyclerview.widget.RecyclerView$ViewHolder):boolean");
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public final void onMoved(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, int i, RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
        recyclerView.getClass();
        viewHolder.getClass();
        super.onMoved(recyclerView, viewHolder, i, viewHolder2, i2, i3, i4);
        this.to = i2;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public final void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        int i3;
        SettingsListFragment settingsListFragment = this.callbackItemTouch;
        if (2 == i && viewHolder != null) {
            this.from = viewHolder.getBindingAdapterPosition();
            if (settingsListFragment != null) {
                View view = viewHolder.itemView;
                view.getClass();
                ((DraggableFrameLayout) view).setDragged(true);
                return;
            }
            return;
        }
        if (i == 0) {
            int i4 = this.from;
            if (i4 != -1 && (i2 = this.to) != -1) {
                if (i4 != -1 && i2 == -1) {
                    this.to = i4;
                }
                if (settingsListFragment != null && i4 != (i3 = this.to)) {
                    ItemAdapter itemAdapter = settingsListFragment.itemAdapter;
                    if (itemAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                        throw null;
                    }
                    AbstractItem abstractItem = (AbstractItem) ((List) itemAdapter.itemList.matrix).get(i3);
                    if (abstractItem == null) {
                        DBUtil$$ExternalSyntheticBUOutline0.m("A normal ModelAdapter does not allow null items.");
                        return;
                    }
                    LegacyAccountDto legacyAccountDto = ((AccountItem) abstractItem).account;
                    ItemAdapter itemAdapter2 = settingsListFragment.itemAdapter;
                    if (itemAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                        throw null;
                    }
                    Iterator it = ((List) itemAdapter2.itemList.matrix).iterator();
                    int i5 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i5 = -1;
                            break;
                        } else if (((AbstractItem) it.next()) instanceof AccountItem) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    SettingsViewModel settingsViewModel = (SettingsViewModel) settingsListFragment.viewModel$delegate.getValue();
                    settingsViewModel.getClass();
                    JobKt.launch$default(ViewModelKt.getViewModelScope(settingsViewModel), settingsViewModel.coroutineDispatcher, null, new SettingsViewModel$moveAccount$1(settingsViewModel, legacyAccountDto, i3 - i5, (Continuation) null), 2);
                }
            }
            this.to = -1;
            this.from = -1;
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public final void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.getClass();
    }
}
