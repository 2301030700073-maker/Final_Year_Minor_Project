package com.google.common.collect;

import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Sets$FilteredSet extends Collections2$FilteredCollection implements Set, j$.util.Set {
    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return Maps.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return Maps.hashCodeImpl(this);
    }
}
