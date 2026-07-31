package org.schabi.newpipe.extractor.utils;

import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Pair implements Serializable {
    private Serializable firstObject;
    private Serializable secondObject;

    public Pair(Serializable serializable, Serializable serializable2) {
        this.firstObject = serializable;
        this.secondObject = serializable2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Pair.class == obj.getClass()) {
            Pair pair = (Pair) obj;
            if (Objects.equals(this.firstObject, pair.firstObject) && Objects.equals(this.secondObject, pair.secondObject)) {
                return true;
            }
        }
        return false;
    }

    public final Serializable getFirst() {
        return this.firstObject;
    }

    public final Serializable getSecond() {
        return this.secondObject;
    }

    public final int hashCode() {
        return Objects.hash(this.firstObject, this.secondObject);
    }

    public final void setFirst(Integer num) {
        this.firstObject = num;
    }

    public final String toString() {
        return "{" + this.firstObject + ", " + this.secondObject + "}";
    }
}
