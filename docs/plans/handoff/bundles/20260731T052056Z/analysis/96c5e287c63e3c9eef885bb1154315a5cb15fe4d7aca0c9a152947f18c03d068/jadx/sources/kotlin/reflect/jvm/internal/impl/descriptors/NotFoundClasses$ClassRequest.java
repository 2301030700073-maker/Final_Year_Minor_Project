package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotFoundClasses$ClassRequest {
    public final ClassId classId;
    public final List typeParametersCount;

    public NotFoundClasses$ClassRequest(ClassId classId, List list) {
        classId.getClass();
        this.classId = classId;
        this.typeParametersCount = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotFoundClasses$ClassRequest)) {
            return false;
        }
        NotFoundClasses$ClassRequest notFoundClasses$ClassRequest = (NotFoundClasses$ClassRequest) obj;
        return Intrinsics.areEqual(this.classId, notFoundClasses$ClassRequest.classId) && this.typeParametersCount.equals(notFoundClasses$ClassRequest.typeParametersCount);
    }

    public final int hashCode() {
        return this.typeParametersCount.hashCode() + (this.classId.hashCode() * 31);
    }

    public final String toString() {
        return "ClassRequest(classId=" + this.classId + ", typeParametersCount=" + this.typeParametersCount + ')';
    }
}
