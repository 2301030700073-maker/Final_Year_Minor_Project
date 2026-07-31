package com.fasterxml.jackson.databind.introspect;

import androidx.compose.animation.core.Animation;
import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Member;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VirtualAnnotatedMember extends AnnotatedMember {
    public final Class _declaringClass;
    public final String _name;
    public final TypeBase _type;

    public VirtualAnnotatedMember(TypeResolutionContext typeResolutionContext, Class cls, String str, TypeBase typeBase) {
        super(typeResolutionContext, null);
        this._declaringClass = cls;
        this._type = typeBase;
        this._name = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!ClassUtil.hasClass(obj, VirtualAnnotatedMember.class)) {
            return false;
        }
        VirtualAnnotatedMember virtualAnnotatedMember = (VirtualAnnotatedMember) obj;
        return virtualAnnotatedMember._declaringClass == this._declaringClass && virtualAnnotatedMember._name.equals(this._name);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Class getDeclaringClass() {
        return this._declaringClass;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Member getMember() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return this._name;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class getRawType() {
        return this._type._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final TypeBase getType() {
        return this._type;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Object getValue(Object obj) {
        throw new IllegalArgumentException(Animation.CC.m(new StringBuilder("Cannot get virtual property '"), this._name, "'"));
    }

    public final int hashCode() {
        return this._name.hashCode();
    }

    public final String toString() {
        return "[virtual " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Annotated withAnnotations(MemoryCacheService memoryCacheService) {
        return this;
    }
}
