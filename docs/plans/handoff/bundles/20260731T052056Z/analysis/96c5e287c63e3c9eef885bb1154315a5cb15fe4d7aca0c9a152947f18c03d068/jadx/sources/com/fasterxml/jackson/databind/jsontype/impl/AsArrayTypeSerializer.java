package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class AsArrayTypeSerializer extends TypeSerializerBase {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsArrayTypeSerializer(TypeIdResolverBase typeIdResolverBase, BeanProperty beanProperty, int i) {
        super(typeIdResolverBase, beanProperty);
        this.$r8$classId = i;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public TypeSerializer forProperty(BeanProperty beanProperty) {
        switch (this.$r8$classId) {
            case 0:
                return forProperty(beanProperty);
            default:
                return this._property == beanProperty ? this : new AsArrayTypeSerializer(this._idResolver, beanProperty, 1);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public JsonTypeInfo.As getTypeInclusion() {
        switch (this.$r8$classId) {
            case 0:
                return JsonTypeInfo.As.WRAPPER_ARRAY;
            default:
                return JsonTypeInfo.As.WRAPPER_OBJECT;
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public AsArrayTypeSerializer forProperty(BeanProperty beanProperty) {
        return this._property == beanProperty ? this : new AsArrayTypeSerializer(this._idResolver, beanProperty, 0);
    }
}
