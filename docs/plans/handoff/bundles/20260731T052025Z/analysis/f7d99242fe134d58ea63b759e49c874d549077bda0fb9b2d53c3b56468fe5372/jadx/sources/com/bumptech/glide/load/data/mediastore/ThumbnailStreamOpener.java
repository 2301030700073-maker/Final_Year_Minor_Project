package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThumbnailStreamOpener {
    public final LruArrayPool byteArrayPool;
    public final ContentResolver contentResolver;
    public final ArrayList parsers;
    public final ThumbFetcher.ImageThumbnailQuery query;

    public ThumbnailStreamOpener(ArrayList arrayList, ThumbFetcher.ImageThumbnailQuery imageThumbnailQuery, LruArrayPool lruArrayPool, ContentResolver contentResolver) {
        this.query = imageThumbnailQuery;
        this.byteArrayPool = lruArrayPool;
        this.contentResolver = contentResolver;
        this.parsers = arrayList;
    }
}
