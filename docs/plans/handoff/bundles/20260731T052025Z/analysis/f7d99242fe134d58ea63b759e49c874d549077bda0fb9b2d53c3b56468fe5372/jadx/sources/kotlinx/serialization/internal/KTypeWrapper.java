package kotlinx.serialization.internal;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KTypeWrapper implements KType {
    public final KType origin;

    public KTypeWrapper(KType kType) {
        kType.getClass();
        this.origin = kType;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        KTypeWrapper kTypeWrapper = obj instanceof KTypeWrapper ? (KTypeWrapper) obj : null;
        if (!Intrinsics.areEqual(this.origin, kTypeWrapper != null ? kTypeWrapper.origin : null)) {
            return false;
        }
        KClass classifier = getClassifier();
        if (classifier instanceof KClass) {
            KType kType = obj instanceof KType ? (KType) obj : null;
            KClass classifier2 = kType != null ? ((KTypeWrapper) kType).getClassifier() : null;
            if (classifier2 != null && (classifier2 instanceof KClass)) {
                return Handshake.Companion.getJavaClass(classifier).equals(Handshake.Companion.getJavaClass(classifier2));
            }
        }
        return false;
    }

    public final List getArguments() {
        return ((KTypeWrapper) this.origin).getArguments();
    }

    public final KClass getClassifier() {
        return ((KTypeWrapper) this.origin).getClassifier();
    }

    public final int hashCode() {
        return this.origin.hashCode();
    }

    public final boolean isMarkedNullable() {
        return ((KTypeWrapper) this.origin).isMarkedNullable();
    }

    public final String toString() {
        return "KTypeWrapper: " + this.origin;
    }
}
