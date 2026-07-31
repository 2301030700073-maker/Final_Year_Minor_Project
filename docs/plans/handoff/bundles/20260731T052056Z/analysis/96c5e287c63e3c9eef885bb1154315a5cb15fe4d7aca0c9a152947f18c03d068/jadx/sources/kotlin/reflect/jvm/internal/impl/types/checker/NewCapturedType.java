package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NewCapturedType extends SimpleType implements CapturedTypeMarker {
    public final TypeAttributes attributes;
    public final CaptureStatus captureStatus;
    public final NewCapturedTypeConstructor constructor;
    public final boolean isMarkedNullable;
    public final boolean isProjectionNotNull;
    public final UnwrappedType lowerType;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NewCapturedType(kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus r8, kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor r9, kotlin.reflect.jvm.internal.impl.types.UnwrappedType r10, kotlin.reflect.jvm.internal.impl.types.TypeAttributes r11, boolean r12, int r13) {
        /*
            r7 = this;
            r0 = r13 & 8
            if (r0 == 0) goto Lb
            okhttp3.FormBody$Builder r11 = kotlin.reflect.jvm.internal.impl.types.TypeAttributes.Companion
            r11.getClass()
            kotlin.reflect.jvm.internal.impl.types.TypeAttributes r11 = kotlin.reflect.jvm.internal.impl.types.TypeAttributes.Empty
        Lb:
            r4 = r11
            r11 = r13 & 16
            if (r11 == 0) goto L11
            r12 = 0
        L11:
            r5 = r12
            r6 = 0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType.<init>(kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus, kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.TypeAttributes, boolean, int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final List getArguments() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeAttributes getAttributes() {
        return this.attributes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final MemberScope getMemberScope() {
        return ErrorUtils.createErrorScope(ErrorScopeKind.CAPTURED_TYPE_SCOPE, true, new String[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        return new NewCapturedType(this.captureStatus, this.constructor, this.lowerType, this.attributes, z, 32);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final NewCapturedType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.constructor;
        TypeProjectionBase refine = newCapturedTypeConstructor.projection.refine(kotlinTypeRefiner$Default);
        KTypeImpl$arguments$2 kTypeImpl$arguments$2 = newCapturedTypeConstructor.supertypesComputation != null ? new KTypeImpl$arguments$2(25, newCapturedTypeConstructor, kotlinTypeRefiner$Default) : null;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = newCapturedTypeConstructor.original;
        if (newCapturedTypeConstructor2 == null) {
            newCapturedTypeConstructor2 = newCapturedTypeConstructor;
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor3 = new NewCapturedTypeConstructor(refine, kTypeImpl$arguments$2, newCapturedTypeConstructor2, newCapturedTypeConstructor.typeParameter);
        UnwrappedType unwrappedType = this.lowerType;
        return new NewCapturedType(this.captureStatus, newCapturedTypeConstructor3, unwrappedType != null ? unwrappedType : null, this.attributes, this.isMarkedNullable, 32);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new NewCapturedType(this.captureStatus, this.constructor, this.lowerType, typeAttributes, this.isMarkedNullable, this.isProjectionNotNull);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        return new NewCapturedType(this.captureStatus, this.constructor, this.lowerType, this.attributes, z, 32);
    }

    public NewCapturedType(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, UnwrappedType unwrappedType, TypeAttributes typeAttributes, boolean z, boolean z2) {
        captureStatus.getClass();
        newCapturedTypeConstructor.getClass();
        typeAttributes.getClass();
        this.captureStatus = captureStatus;
        this.constructor = newCapturedTypeConstructor;
        this.lowerType = unwrappedType;
        this.attributes = typeAttributes;
        this.isMarkedNullable = z;
        this.isProjectionNotNull = z2;
    }
}
