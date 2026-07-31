package com.google.android.exoplayer2.source.dash.manifest;

import j$.util.DesugarCollections;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public class AdaptationSet {
    public static final long ID_UNSET = -1;
    public final List<Descriptor> accessibilityDescriptors;
    public final List<Descriptor> essentialProperties;
    public final long id;
    public final List<Representation> representations;
    public final List<Descriptor> supplementalProperties;
    public final int type;

    public AdaptationSet(long j, int i, List<Representation> list, List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4) {
        this.id = j;
        this.type = i;
        this.representations = DesugarCollections.unmodifiableList(list);
        this.accessibilityDescriptors = DesugarCollections.unmodifiableList(list2);
        this.essentialProperties = DesugarCollections.unmodifiableList(list3);
        this.supplementalProperties = DesugarCollections.unmodifiableList(list4);
    }
}
