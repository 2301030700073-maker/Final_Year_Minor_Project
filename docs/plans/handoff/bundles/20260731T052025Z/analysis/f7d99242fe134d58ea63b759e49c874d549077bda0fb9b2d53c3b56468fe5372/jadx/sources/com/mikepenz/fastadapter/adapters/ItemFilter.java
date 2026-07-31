package com.mikepenz.fastadapter.adapters;

import android.widget.Filter;
import androidx.camera.core.impl.Config;
import androidx.collection.ArrayMap;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ItemFilter extends Filter {
    public CharSequence constraint;
    public Function2 filterPredicate;
    public final ItemAdapter itemAdapter;
    public ArrayList originalItems;

    public ItemFilter(ItemAdapter itemAdapter) {
        this.itemAdapter = itemAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList] */
    @Override // android.widget.Filter
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        ?? r1;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (this.originalItems == null && (charSequence == null || charSequence.length() == 0)) {
            return filterResults;
        }
        ItemAdapter itemAdapter = this.itemAdapter;
        FastAdapter fastAdapter = itemAdapter.fastAdapter;
        BinaryBitmap binaryBitmap = itemAdapter.itemList;
        if (fastAdapter != null) {
            Iterator it = ((ArrayMap.ValueCollection) fastAdapter.extensionsCache.values()).iterator();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
        }
        this.constraint = charSequence;
        ArrayList arrayList = this.originalItems;
        if (arrayList == null) {
            arrayList = new ArrayList((List) binaryBitmap.matrix);
            this.originalItems = arrayList;
        }
        if (charSequence == null || charSequence.length() == 0) {
            filterResults.values = arrayList;
            filterResults.count = arrayList.size();
            this.originalItems = null;
            return filterResults;
        }
        Function2 function2 = this.filterPredicate;
        if (function2 != null) {
            r1 = new ArrayList();
            for (Object obj : arrayList) {
                if (((Boolean) function2.invoke((AbstractItem) obj, charSequence)).booleanValue()) {
                    r1.add(obj);
                }
            }
        } else {
            r1 = (List) binaryBitmap.matrix;
        }
        filterResults.values = r1;
        filterResults.count = r1.size();
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        filterResults.getClass();
        Object obj = filterResults.values;
        if (obj != null) {
            this.itemAdapter.setInternal((List) obj, false);
        }
    }
}
