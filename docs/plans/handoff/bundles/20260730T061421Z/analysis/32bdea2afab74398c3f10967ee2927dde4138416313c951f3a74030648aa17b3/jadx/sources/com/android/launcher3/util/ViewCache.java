package com.android.launcher3.util;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class ViewCache {
    public final SparseArray mCache = new SparseArray();

    public class CacheEntry {
        public int mCurrentSize = 0;
        public final int mMaxSize;
        public final View[] mViews;

        public CacheEntry(int i) {
            this.mMaxSize = i;
            this.mViews = new View[i];
        }
    }

    public View getView(int i, Context context, ViewGroup viewGroup) {
        CacheEntry cacheEntry = (CacheEntry) this.mCache.get(i);
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry(1);
            this.mCache.put(i, cacheEntry);
        }
        int i2 = cacheEntry.mCurrentSize;
        if (i2 <= 0) {
            return LayoutInflater.from(context).inflate(i, viewGroup, false);
        }
        int i3 = i2 - 1;
        cacheEntry.mCurrentSize = i3;
        View[] viewArr = cacheEntry.mViews;
        View view = viewArr[i3];
        viewArr[i3] = null;
        return view;
    }

    public void recycleView(int i, View view) {
        int i2;
        CacheEntry cacheEntry = (CacheEntry) this.mCache.get(i);
        if (cacheEntry == null || (i2 = cacheEntry.mCurrentSize) >= cacheEntry.mMaxSize) {
            return;
        }
        cacheEntry.mViews[i2] = view;
        cacheEntry.mCurrentSize = i2 + 1;
    }

    public void setCacheSize(int i, int i2) {
        this.mCache.put(i, new CacheEntry(i2));
    }
}
