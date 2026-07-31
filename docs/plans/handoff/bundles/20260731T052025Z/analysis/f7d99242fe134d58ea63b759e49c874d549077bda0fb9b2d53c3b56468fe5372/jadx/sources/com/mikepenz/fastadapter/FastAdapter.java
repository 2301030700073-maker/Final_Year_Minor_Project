package com.mikepenz.fastadapter;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import com.bumptech.glide.GlideBuilder$1;
import com.bumptech.glide.load.Option;
import com.fsck.k9.R;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.EventHook;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.jvm.functions.Function4;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FastAdapter extends RecyclerView.Adapter {
    public LinkedList _eventHooks;
    public int globalSize;
    public Function4 onClickListener;
    public final ArrayList adapters = new ArrayList();
    public final ConnectionPool itemVHFactoryCache = new ConnectionPool(19);
    public final SparseArray adapterSizes = new SparseArray();
    public final ArrayMap extensionsCache = new ArrayMap(0);
    public final boolean attachDefaultListeners = true;
    public final VerboseLogger logger = new VerboseLogger();
    public final Option.AnonymousClass1 onCreateViewHolderListener = new Option.AnonymousClass1();
    public final GlideBuilder$1 onBindViewHolderListener = new GlideBuilder$1();
    public final FastAdapter$viewClickListener$1 viewClickListener = new FastAdapter$viewClickListener$1();
    public final FastAdapter$viewLongClickListener$1 viewLongClickListener = new FastAdapter$viewLongClickListener$1();
    public final FastAdapter$viewTouchListener$1 viewTouchListener = new FastAdapter$viewTouchListener$1();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class ViewHolder extends RecyclerView.ViewHolder {
        public abstract void bindView(AbstractItem abstractItem, List list);

        public abstract void unbindView(AbstractItem abstractItem);
    }

    public FastAdapter() {
        setHasStableIds(true);
    }

    public static void notifyAdapterItemRangeChanged$default(FastAdapter fastAdapter, int i, int i2) {
        ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) fastAdapter.extensionsCache.values()).iterator();
        if (!keyIterator.hasNext()) {
            fastAdapter.mObservable.notifyItemRangeChanged(i, i2, null);
        } else {
            keyIterator.next().getClass();
            DBUtil$$ExternalSyntheticBUOutline0.m();
        }
    }

    public final void addEventHook(EventHook eventHook) {
        eventHook.getClass();
        LinkedList linkedList = this._eventHooks;
        if (linkedList == null) {
            linkedList = new LinkedList();
            this._eventHooks = linkedList;
        }
        linkedList.add(eventHook);
    }

    public final void cacheSizes() {
        SparseArray sparseArray = this.adapterSizes;
        sparseArray.clear();
        ArrayList arrayList = this.adapters;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            ItemAdapter itemAdapter = (ItemAdapter) it.next();
            boolean z = itemAdapter.active;
            BinaryBitmap binaryBitmap = itemAdapter.itemList;
            if ((z ? ((List) binaryBitmap.matrix).size() : 0) > 0) {
                sparseArray.append(i, itemAdapter);
                i += itemAdapter.active ? ((List) binaryBitmap.matrix).size() : 0;
            }
        }
        if (i == 0 && arrayList.size() > 0) {
            sparseArray.append(0, arrayList.get(0));
        }
        this.globalSize = i;
    }

    public final AbstractItem getItem(int i) {
        if (i >= 0 && i < this.globalSize) {
            SparseArray sparseArray = this.adapterSizes;
            int indexOfKey = sparseArray.indexOfKey(i);
            if (indexOfKey < 0) {
                indexOfKey = (~indexOfKey) - 1;
            }
            AbstractItem abstractItem = (AbstractItem) ((List) ((ItemAdapter) sparseArray.valueAt(indexOfKey)).itemList.matrix).get(i - sparseArray.keyAt(indexOfKey));
            if (abstractItem != null) {
                return abstractItem;
            }
            DBUtil$$ExternalSyntheticBUOutline0.m("A normal ModelAdapter does not allow null items.");
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.globalSize;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        AbstractItem item = getItem(i);
        if (item != null) {
            return item.getIdentifier();
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        AbstractItem item = getItem(i);
        if (item == null) {
            return 0;
        }
        int type = item.getType();
        ConnectionPool connectionPool = this.itemVHFactoryCache;
        if (((SparseArray) connectionPool.delegate).indexOfKey(type) < 0 && (item instanceof AbstractItem)) {
            int type2 = item.getType();
            connectionPool.getClass();
            SparseArray sparseArray = (SparseArray) connectionPool.delegate;
            if (sparseArray.indexOfKey(type2) < 0) {
                sparseArray.put(type2, item);
            }
        }
        return item.getType();
    }

    public final void notifyAdapterDataSetChanged() {
        ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) this.extensionsCache.values()).iterator();
        if (keyIterator.hasNext()) {
            keyIterator.next().getClass();
            DBUtil$$ExternalSyntheticBUOutline0.m();
        } else {
            cacheSizes();
            this.mObservable.notifyChanged();
        }
    }

    public final void notifyAdapterItemRangeRemoved(int i, int i2) {
        ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) this.extensionsCache.values()).iterator();
        if (keyIterator.hasNext()) {
            keyIterator.next().getClass();
            DBUtil$$ExternalSyntheticBUOutline0.m();
        } else {
            cacheSizes();
            this.mObservable.notifyItemRangeRemoved(i, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.logger.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        AbstractItem item;
        list.getClass();
        this.logger.getClass();
        View view = viewHolder.itemView;
        view.setTag(R.id.fastadapter_item_adapter, this);
        this.onBindViewHolderListener.getClass();
        Object tag = view.getTag(R.id.fastadapter_item_adapter);
        FastAdapter fastAdapter = tag instanceof FastAdapter ? (FastAdapter) tag : null;
        if (fastAdapter == null || (item = fastAdapter.getItem(i)) == null) {
            return;
        }
        item.bindView(viewHolder, list);
        ViewHolder viewHolder2 = viewHolder instanceof ViewHolder ? (ViewHolder) viewHolder : null;
        if (viewHolder2 != null) {
            viewHolder2.bindView(item, list);
        }
        view.setTag(R.id.fastadapter_item, item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.logger.getClass();
        Object obj = ((SparseArray) this.itemVHFactoryCache.delegate).get(i);
        obj.getClass();
        AbstractItem abstractItem = (AbstractItem) obj;
        this.onCreateViewHolderListener.getClass();
        Context context = viewGroup.getContext();
        context.getClass();
        RecyclerView.ViewHolder viewHolder = abstractItem.getViewHolder(abstractItem.createView(context, viewGroup));
        View view = viewHolder.itemView;
        view.setTag(R.id.fastadapter_item_adapter, this);
        if (this.attachDefaultListeners) {
            view.getClass();
            RelationUtil.attachToView(this.viewClickListener, viewHolder, view);
            RelationUtil.attachToView(this.viewLongClickListener, viewHolder, view);
            RelationUtil.attachToView(this.viewTouchListener, viewHolder, view);
        }
        LinkedList<EventHook> linkedList = this._eventHooks;
        if (linkedList == null) {
            linkedList = new LinkedList();
            this._eventHooks = linkedList;
        }
        for (EventHook eventHook : linkedList) {
            View onBind = eventHook.onBind(viewHolder);
            if (onBind != null) {
                RelationUtil.attachToView(eventHook, viewHolder, onBind);
            }
            eventHook.onBindMany(viewHolder);
        }
        return viewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.logger.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        this.logger.getClass();
        viewHolder.getBindingAdapterPosition();
        this.onBindViewHolderListener.getClass();
        View view = viewHolder.itemView;
        if (view == null) {
            return false;
        }
        view.getTag(R.id.fastadapter_item);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        this.logger.getClass();
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        this.onBindViewHolderListener.getClass();
        View view = viewHolder.itemView;
        Object tag = view != null ? view.getTag(R.id.fastadapter_item_adapter) : null;
        FastAdapter fastAdapter = tag instanceof FastAdapter ? (FastAdapter) tag : null;
        if (fastAdapter != null) {
            fastAdapter.getItem(bindingAdapterPosition);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        this.logger.getClass();
        viewHolder.getBindingAdapterPosition();
        this.onBindViewHolderListener.getClass();
        View view = viewHolder.itemView;
        if (view != null) {
            view.getTag(R.id.fastadapter_item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        this.logger.getClass();
        viewHolder.getBindingAdapterPosition();
        this.onBindViewHolderListener.getClass();
        View view = viewHolder.itemView;
        Object tag = view != null ? view.getTag(R.id.fastadapter_item) : null;
        AbstractItem abstractItem = tag instanceof AbstractItem ? (AbstractItem) tag : null;
        if (abstractItem == null) {
            Log.e("FastAdapter", "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.kt#L22)");
            return;
        }
        ViewHolder viewHolder2 = viewHolder instanceof ViewHolder ? (ViewHolder) viewHolder : null;
        if (viewHolder2 != null) {
            viewHolder2.unbindView(abstractItem);
        }
        view.setTag(R.id.fastadapter_item, null);
        view.setTag(R.id.fastadapter_item_adapter, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
    }
}
