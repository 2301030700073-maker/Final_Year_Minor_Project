package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DataFetcher {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface DataCallback {
        void onDataReady(Object obj);

        void onLoadFailed(Exception exc);
    }

    void cancel();

    void cleanup();

    Class getDataClass();

    int getDataSource();

    void loadData(Priority priority, DataCallback dataCallback);
}
