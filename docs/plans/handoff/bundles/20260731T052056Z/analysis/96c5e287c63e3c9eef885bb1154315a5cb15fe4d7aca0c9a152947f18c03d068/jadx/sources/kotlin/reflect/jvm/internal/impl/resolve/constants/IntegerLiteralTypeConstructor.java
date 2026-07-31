package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntegerLiteralTypeConstructor implements TypeConstructor {
    public final Set possibleTypes;
    public final SynchronizedLazyImpl supertypes$delegate;

    public IntegerLiteralTypeConstructor(Set set) {
        TypeAttributes.Companion.getClass();
        TypeAttributes typeAttributes = TypeAttributes.Empty;
        typeAttributes.getClass();
        KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(EmptyList.INSTANCE, ErrorUtils.createErrorScope(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"), typeAttributes, this, false);
        this.supertypes$delegate = new SynchronizedLazyImpl(new IntegerLiteralTypeConstructor$supertypes$2(0));
        this.possibleTypes = set;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns getBuiltIns() {
        throw null;
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
        return (List) this.supertypes$delegate.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    public final String toString() {
        return "IntegerLiteralType".concat("[" + CollectionsKt.joinToString$default(this.possibleTypes, ",", null, null, IntegerLiteralTypeConstructor$valueToString$1.INSTANCE, 30) + ']');
    }
}
