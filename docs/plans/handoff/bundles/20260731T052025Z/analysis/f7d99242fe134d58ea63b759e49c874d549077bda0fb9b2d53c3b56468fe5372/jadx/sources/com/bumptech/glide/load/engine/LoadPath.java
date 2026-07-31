package com.bumptech.glide.load.engine;

import androidx.core.util.Pools$Pool;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoadPath {
    public final List decodePaths;
    public final String failureMessage;
    public final Pools$Pool listPool;

    public LoadPath(Class cls, Class cls2, Class cls3, List list, Pools$Pool pools$Pool) {
        this.listPool = pools$Pool;
        if (list.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Must not be empty.");
            throw null;
        }
        this.decodePaths = list;
        this.failureMessage = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final Resource load(int i, int i2, Options options, DataRewinder dataRewinder, PriorityQueue priorityQueue) {
        Pools$Pool pools$Pool = this.listPool;
        Object acquire = pools$Pool.acquire();
        Util.checkNotNull(acquire, "Argument must not be null");
        List list = (List) acquire;
        try {
            List list2 = this.decodePaths;
            int size = list2.size();
            Resource resource = null;
            for (int i3 = 0; i3 < size; i3++) {
                try {
                    resource = ((DecodePath) list2.get(i3)).decode(i, i2, options, dataRewinder, priorityQueue);
                } catch (GlideException e) {
                    list.add(e);
                }
                if (resource != null) {
                    break;
                }
            }
            if (resource != null) {
                return resource;
            }
            throw new GlideException(this.failureMessage, new ArrayList(list));
        } finally {
            pools$Pool.release(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.decodePaths.toArray()) + '}';
    }
}
