package org.maplibre.android.location.engine;

import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import coil3.svg.internal.AndroidSvg;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationEngineRequest {
    public final long fastestInterval;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder implements StableIdStorage {
        public long fastestInterval;

        @Override // androidx.recyclerview.widget.StableIdStorage
        public StableIdStorage.StableIdLookup createStableIdLookup() {
            AndroidSvg androidSvg = new AndroidSvg();
            androidSvg.renderOptions = this;
            androidSvg.svg = new LongSparseArray((Object) null);
            return androidSvg;
        }
    }

    public LocationEngineRequest(Builder builder) {
        this.fastestInterval = builder.fastestInterval;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocationEngineRequest.class != obj.getClass()) {
            return false;
        }
        return Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && this.fastestInterval == ((LocationEngineRequest) obj).fastestInterval;
    }

    public final int hashCode() {
        long j = this.fastestInterval;
        return 923521000 + ((int) (j ^ (j >>> 32)));
    }
}
