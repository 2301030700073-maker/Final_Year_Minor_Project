package com.google.common.base;

import j$.util.function.Predicate$CC;
import java.io.Serializable;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Predicates$AndPredicate implements Predicate, Serializable {
    private static final long serialVersionUID = 0;
    private final List<? extends Predicate> components;

    public Predicates$AndPredicate(List list) {
        this.components = list;
    }

    public /* synthetic */ java.util.function.Predicate and(java.util.function.Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        for (int i = 0; i < this.components.size(); i++) {
            if (!this.components.get(i).apply(obj)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Predicates$AndPredicate) {
            return this.components.equals(((Predicates$AndPredicate) obj).components);
        }
        return false;
    }

    public final int hashCode() {
        return this.components.hashCode() + 306654252;
    }

    public /* synthetic */ java.util.function.Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ java.util.function.Predicate or(java.util.function.Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return apply(obj);
    }

    public final String toString() {
        List<? extends Predicate> list = this.components;
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (Object obj : list) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
