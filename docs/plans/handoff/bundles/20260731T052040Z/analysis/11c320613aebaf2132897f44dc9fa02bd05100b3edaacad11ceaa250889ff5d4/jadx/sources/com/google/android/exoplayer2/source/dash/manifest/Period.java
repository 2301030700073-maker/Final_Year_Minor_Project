package com.google.android.exoplayer2.source.dash.manifest;

import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public class Period {
    public final List<AdaptationSet> adaptationSets;
    public final Descriptor assetIdentifier;
    public final List<EventStream> eventStreams;
    public final String id;
    public final long startMs;

    public Period(String str, long j, List<AdaptationSet> list, List<EventStream> list2, Descriptor descriptor) {
        this.id = str;
        this.startMs = j;
        this.adaptationSets = DesugarCollections.unmodifiableList(list);
        this.eventStreams = DesugarCollections.unmodifiableList(list2);
        this.assetIdentifier = descriptor;
    }

    public int getAdaptationSetIndex(int i) {
        int size = this.adaptationSets.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.adaptationSets.get(i2).type == i) {
                return i2;
            }
        }
        return -1;
    }

    public Period(String str, long j, List<AdaptationSet> list, List<EventStream> list2) {
        this(str, j, list, list2, null);
    }

    public Period(String str, long j, List<AdaptationSet> list) {
        this(str, j, list, Collections.EMPTY_LIST, null);
    }
}
