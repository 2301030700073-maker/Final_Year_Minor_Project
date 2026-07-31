package com.mikepenz.fastadapter.adapters;

import android.util.SparseArray;
import androidx.camera.core.impl.Config;
import androidx.collection.ArrayMap;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IIdDistributor;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.utils.InterceptorUtil$Companion$DEFAULT$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ItemAdapter {
    public final boolean active;
    public FastAdapter fastAdapter;
    public final ConnectionPool idDistributor;
    public final Function1 interceptor;
    public final boolean isUseIdDistributor;
    public final ItemFilter itemFilter;
    public final BinaryBitmap itemList;
    public int order;

    public ItemAdapter() {
        InterceptorUtil$Companion$DEFAULT$1 interceptorUtil$Companion$DEFAULT$1 = InterceptorUtil$Companion$DEFAULT$1.INSTANCE;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, interceptorUtil$Companion$DEFAULT$1);
        ArrayList arrayList = new ArrayList();
        BinaryBitmap binaryBitmap = new BinaryBitmap(21);
        binaryBitmap.matrix = arrayList;
        this.order = -1;
        this.itemList = binaryBitmap;
        this.interceptor = interceptorUtil$Companion$DEFAULT$1;
        this.active = true;
        ConnectionPool connectionPool = IIdDistributor.DEFAULT;
        connectionPool.getClass();
        this.idDistributor = connectionPool;
        this.isUseIdDistributor = true;
        this.itemFilter = new ItemFilter(this);
    }

    public final ArrayList intercept(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractItem abstractItem = (AbstractItem) this.interceptor.invoke(it.next());
            if (abstractItem != null) {
                arrayList.add(abstractItem);
            }
        }
        return arrayList;
    }

    public final void move(int i, int i2) {
        FastAdapter fastAdapter = this.fastAdapter;
        int i3 = 0;
        if (fastAdapter != null && fastAdapter.globalSize != 0) {
            SparseArray sparseArray = fastAdapter.adapterSizes;
            int indexOfKey = sparseArray.indexOfKey(i);
            if (indexOfKey < 0) {
                indexOfKey = (~indexOfKey) - 1;
            }
            i3 = sparseArray.keyAt(indexOfKey);
        }
        BinaryBitmap binaryBitmap = this.itemList;
        int i4 = i - i3;
        AbstractItem abstractItem = (AbstractItem) ((List) binaryBitmap.matrix).get(i4);
        ((List) binaryBitmap.matrix).remove(i4);
        ((List) binaryBitmap.matrix).add(i2 - i3, abstractItem);
        FastAdapter fastAdapter2 = (FastAdapter) binaryBitmap.binarizer;
        if (fastAdapter2 != null) {
            ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) fastAdapter2.extensionsCache.values()).iterator();
            if (!keyIterator.hasNext()) {
                fastAdapter2.mObservable.notifyItemMoved(i, i2);
            } else {
                keyIterator.next().getClass();
                DBUtil$$ExternalSyntheticBUOutline0.m();
            }
        }
    }

    public final void setInternal(List list, boolean z) {
        if (this.isUseIdDistributor) {
            this.idDistributor.checkIds(list);
        }
        if (z) {
            ItemFilter itemFilter = this.itemFilter;
            if (itemFilter.constraint != null) {
                itemFilter.performFiltering(null);
            }
        }
        FastAdapter fastAdapter = this.fastAdapter;
        if (fastAdapter != null) {
            Iterator it = ((ArrayMap.ValueCollection) fastAdapter.extensionsCache.values()).iterator();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
        }
        FastAdapter fastAdapter2 = this.fastAdapter;
        int i = 0;
        if (fastAdapter2 != null) {
            int i2 = this.order;
            ArrayList arrayList = fastAdapter2.adapters;
            if (fastAdapter2.globalSize != 0) {
                int min = Math.min(i2, arrayList.size());
                int i3 = 0;
                for (int i4 = 0; i4 < min; i4++) {
                    ItemAdapter itemAdapter = (ItemAdapter) arrayList.get(i4);
                    i3 += itemAdapter.active ? ((List) itemAdapter.itemList.matrix).size() : 0;
                }
                i = i3;
            }
        }
        BinaryBitmap binaryBitmap = this.itemList;
        binaryBitmap.getClass();
        int size = list.size();
        int size2 = ((List) binaryBitmap.matrix).size();
        List list2 = (List) binaryBitmap.matrix;
        if (list != list2) {
            if (!list2.isEmpty()) {
                ((List) binaryBitmap.matrix).clear();
            }
            ((List) binaryBitmap.matrix).addAll(list);
        }
        FastAdapter fastAdapter3 = (FastAdapter) binaryBitmap.binarizer;
        if (fastAdapter3 != null) {
            if (size <= size2) {
                if (size > 0) {
                    FastAdapter.notifyAdapterItemRangeChanged$default(fastAdapter3, i, size);
                    if (size < size2) {
                        fastAdapter3.notifyAdapterItemRangeRemoved(i + size, size2 - size);
                        return;
                    }
                    return;
                }
                if (size == 0) {
                    fastAdapter3.notifyAdapterItemRangeRemoved(i, size2);
                    return;
                } else {
                    fastAdapter3.notifyAdapterDataSetChanged();
                    return;
                }
            }
            if (size2 > 0) {
                FastAdapter.notifyAdapterItemRangeChanged$default(fastAdapter3, i, size2);
            }
            int i5 = i + size2;
            int i6 = size - size2;
            ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) fastAdapter3.extensionsCache.values()).iterator();
            if (keyIterator.hasNext()) {
                keyIterator.next().getClass();
                DBUtil$$ExternalSyntheticBUOutline0.m();
            } else {
                fastAdapter3.cacheSizes();
                fastAdapter3.mObservable.notifyItemRangeInserted(i5, i6);
            }
        }
    }
}
