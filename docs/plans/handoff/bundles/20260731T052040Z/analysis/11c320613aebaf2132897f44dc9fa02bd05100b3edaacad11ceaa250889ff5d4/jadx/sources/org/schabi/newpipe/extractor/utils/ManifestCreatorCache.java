package org.schabi.newpipe.extractor.utils;

import com.google.android.exoplayer2.util.Log;
import j$.lang.Iterable;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.util.ArrayList;
import org.schabi.newpipe.player.PlayQueueActivity$$ExternalSyntheticLambda4;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ManifestCreatorCache implements Serializable {
    private int maximumSize = Log.LOG_LEVEL_OFF;
    private double clearFactor = 0.75d;
    private final ConcurrentHashMap<Serializable, Pair> concurrentHashMap = new ConcurrentHashMap<>();

    public final boolean containsKey(String str) {
        return this.concurrentHashMap.containsKey(str);
    }

    public final Pair get(String str) {
        return this.concurrentHashMap.get(str);
    }

    public final void keepNewestEntries(int i) {
        int size = this.concurrentHashMap.size() - i;
        ArrayList arrayList = new ArrayList();
        Iterable.EL.forEach(this.concurrentHashMap.entrySet(), new PlayQueueActivity$$ExternalSyntheticLambda4(size, arrayList));
        Iterable.EL.forEach(arrayList, new Player$$ExternalSyntheticLambda1(this, 8));
    }

    public final void put(String str, String str2) {
        if (!this.concurrentHashMap.containsKey(str)) {
            int size = this.concurrentHashMap.size();
            int i = this.maximumSize;
            if (size == i) {
                int round = (int) Math.round(i * this.clearFactor);
                if (round == 0) {
                    round = 1;
                }
                keepNewestEntries(round);
            }
        }
        ConcurrentHashMap<Serializable, Pair> concurrentHashMap = this.concurrentHashMap;
        concurrentHashMap.put(str, new Pair(Integer.valueOf(concurrentHashMap.size()), str2));
    }

    public final void setMaximumSize() {
        if (500 < this.maximumSize && !this.concurrentHashMap.isEmpty()) {
            int round = (int) Math.round(500.0d * this.clearFactor);
            if (round == 0) {
                round = 1;
            }
            keepNewestEntries(round);
        }
        this.maximumSize = 500;
    }

    public final String toString() {
        return "ManifestCreatorCache[clearFactor=" + this.clearFactor + ", maximumSize=" + this.maximumSize + ", concurrentHashMap=" + this.concurrentHashMap + "]";
    }
}
