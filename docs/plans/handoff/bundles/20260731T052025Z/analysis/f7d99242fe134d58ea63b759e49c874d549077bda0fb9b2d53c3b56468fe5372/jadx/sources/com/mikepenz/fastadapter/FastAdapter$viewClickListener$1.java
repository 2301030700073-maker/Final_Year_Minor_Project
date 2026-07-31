package com.mikepenz.fastadapter;

import android.util.SparseArray;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FastAdapter$viewClickListener$1 extends ClickEventHook {
    @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
    public final void onClick(View view, int i, FastAdapter fastAdapter, AbstractItem abstractItem) {
        ItemAdapter itemAdapter;
        if (abstractItem.isEnabled) {
            if (i < 0 || i >= fastAdapter.globalSize) {
                itemAdapter = null;
            } else {
                fastAdapter.logger.getClass();
                SparseArray sparseArray = fastAdapter.adapterSizes;
                int indexOfKey = sparseArray.indexOfKey(i);
                if (indexOfKey < 0) {
                    indexOfKey = (~indexOfKey) - 1;
                }
                itemAdapter = (ItemAdapter) sparseArray.valueAt(indexOfKey);
            }
            if (itemAdapter == null) {
                return;
            }
            ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) fastAdapter.extensionsCache.values()).iterator();
            if (keyIterator.hasNext()) {
                keyIterator.next().getClass();
                DBUtil$$ExternalSyntheticBUOutline0.m();
            } else {
                Function4 function4 = fastAdapter.onClickListener;
                if (function4 != null) {
                    ((Boolean) function4.invoke(view, itemAdapter, abstractItem, Integer.valueOf(i))).getClass();
                }
            }
        }
    }
}
