package com.google.common.collect;

import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReverseOrdering extends Ordering implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering forwardOrder;

    public ReverseOrdering(Ordering ordering) {
        this.forwardOrder = ordering;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.forwardOrder.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.forwardOrder.equals(((ReverseOrdering) obj).forwardOrder);
        }
        return false;
    }

    public final int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering reverse() {
        return this.forwardOrder;
    }

    public final String toString() {
        return this.forwardOrder + ".reverse()";
    }
}
