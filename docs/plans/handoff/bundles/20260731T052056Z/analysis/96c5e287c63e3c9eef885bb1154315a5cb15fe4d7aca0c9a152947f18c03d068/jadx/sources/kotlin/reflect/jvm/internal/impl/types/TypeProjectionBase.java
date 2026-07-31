package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeProjectionBase {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeProjectionBase)) {
            return false;
        }
        TypeProjectionBase typeProjectionBase = (TypeProjectionBase) obj;
        return isStarProjection() == typeProjectionBase.isStarProjection() && getProjectionKind() == typeProjectionBase.getProjectionKind() && getType().equals(typeProjectionBase.getType());
    }

    public abstract Variance getProjectionKind();

    public abstract KotlinType getType();

    public final int hashCode() {
        int hashCode = getProjectionKind().hashCode();
        if (TypeUtils.noExpectedType(getType())) {
            return (hashCode * 31) + 19;
        }
        return (hashCode * 31) + (isStarProjection() ? 17 : getType().hashCode());
    }

    public abstract boolean isStarProjection();

    public abstract TypeProjectionBase refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default);

    public final String toString() {
        if (isStarProjection()) {
            return "*";
        }
        if (getProjectionKind() == Variance.INVARIANT) {
            return getType().toString();
        }
        return getProjectionKind() + " " + getType();
    }
}
