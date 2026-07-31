package kotlin.reflect.jvm.internal.impl.types;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.text.RegexKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import org.wikipedia.feed.HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntersectionTypeConstructor implements TypeConstructor, TypeConstructorMarker {
    public KotlinType alternative;
    public final int hashCode;
    public final LinkedHashSet intersectedTypes;

    public IntersectionTypeConstructor(AbstractCollection abstractCollection) {
        abstractCollection.isEmpty();
        LinkedHashSet linkedHashSet = new LinkedHashSet(abstractCollection);
        this.intersectedTypes = linkedHashSet;
        this.hashCode = linkedHashSet.hashCode();
    }

    public final SimpleType createType() {
        TypeAttributes.Companion.getClass();
        return KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(TypeAttributes.Empty, this, EmptyList.INSTANCE, false, RegexKt.create("member scope for intersection type", this.intersectedTypes), new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(23, this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntersectionTypeConstructor)) {
            return false;
        }
        return this.intersectedTypes.equals(((IntersectionTypeConstructor) obj).intersectedTypes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns getBuiltIns() {
        KotlinBuiltIns builtIns = ((KotlinType) this.intersectedTypes.iterator().next()).getConstructor().getBuiltIns();
        builtIns.getClass();
        return builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final ClassifierDescriptor getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getParameters() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Collection getSupertypes() {
        return this.intersectedTypes;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    public final String makeDebugNameForIntersectionType(Function1 function1) {
        function1.getClass();
        return CollectionsKt.joinToString$default(CollectionsKt.sortedWith(this.intersectedTypes, new HomeViewModel$getPlacesCards$$inlined$sortedBy$1(4, function1)), " & ", "{", "}", new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(24, function1), 24);
    }

    public final String toString() {
        return makeDebugNameForIntersectionType(IntersectionTypeConstructor$makeDebugNameForIntersectionType$1.INSTANCE);
    }
}
