package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import androidx.room.Room;
import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CapturedTypeConstructorImpl implements CapturedTypeConstructor {
    public NewCapturedTypeConstructor newTypeConstructor;
    public final TypeProjectionBase projection;

    public CapturedTypeConstructorImpl(TypeProjectionBase typeProjectionBase) {
        typeProjectionBase.getClass();
        this.projection = typeProjectionBase;
        typeProjectionBase.getProjectionKind();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns getBuiltIns() {
        KotlinBuiltIns builtIns = this.projection.getType().getConstructor().getBuiltIns();
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

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor
    public final TypeProjectionBase getProjection() {
        return this.projection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Collection getSupertypes() {
        TypeProjectionBase typeProjectionBase = this.projection;
        KotlinType type = typeProjectionBase.getProjectionKind() == Variance.OUT_VARIANCE ? typeProjectionBase.getType() : getBuiltIns().getNullableAnyType();
        type.getClass();
        return Room.listOf(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    public final String toString() {
        return "CapturedTypeConstructor(" + this.projection + ')';
    }
}
