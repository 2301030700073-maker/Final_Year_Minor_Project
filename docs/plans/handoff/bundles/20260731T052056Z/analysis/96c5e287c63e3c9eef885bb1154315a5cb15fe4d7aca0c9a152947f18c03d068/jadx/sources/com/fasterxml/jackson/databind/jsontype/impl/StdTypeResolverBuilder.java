package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StdTypeResolverBuilder {
    public TypeIdResolverBase _customIdResolver;
    public JsonTypeInfo.Id _idType;
    public JsonTypeInfo.As _includeAs;
    public String _typeProperty;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As;
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id;

        static {
            int[] iArr = new int[JsonTypeInfo.Id.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id = iArr;
            try {
                iArr[JsonTypeInfo.Id.DEDUCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.Id.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.Id.MINIMAL_CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.Id.NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.Id.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.Id.CUSTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[JsonTypeInfo.As.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As = iArr2;
            try {
                iArr2[JsonTypeInfo.As.WRAPPER_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.As.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.As.WRAPPER_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.As.EXTERNAL_PROPERTY.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.As.EXISTING_PROPERTY.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public final TypeSerializerBase buildTypeSerializer(SerializationConfig serializationConfig, TypeBase typeBase, ArrayList arrayList) {
        int lastIndexOf;
        BeanProperty beanProperty = null;
        if (this._idType == JsonTypeInfo.Id.NONE || typeBase._class.isPrimitive()) {
            return null;
        }
        TypeFactory typeFactory = serializationConfig._base._typeFactory;
        long j = serializationConfig._mapperFeatures;
        MapperFeature.BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES.getClass();
        TypeIdResolverBase typeIdResolverBase = this._customIdResolver;
        int i = 1;
        if (typeIdResolverBase == null) {
            JsonTypeInfo.Id id = this._idType;
            if (id == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot build, 'init()' not yet called");
                return null;
            }
            int i2 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[id.ordinal()];
            if (i2 == 1 || i2 == 2) {
                typeIdResolverBase = new ClassNameIdResolver(typeBase, typeFactory);
            } else if (i2 == 3) {
                typeIdResolverBase = new MinimalClassNameIdResolver(typeBase, typeFactory);
            } else if (i2 == 4) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                MapperFeature.ACCEPT_CASE_INSENSITIVE_VALUES.getClass();
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        NamedType namedType = (NamedType) it.next();
                        Class cls = namedType._class;
                        String str = namedType._name;
                        if (str == null && (lastIndexOf = (str = cls.getName()).lastIndexOf(46)) >= 0) {
                            str = str.substring(lastIndexOf + 1);
                        }
                        concurrentHashMap.put(cls.getName(), str);
                    }
                }
                typeIdResolverBase = new TypeNameIdResolver(serializationConfig, typeBase, concurrentHashMap, null);
            } else {
                if (i2 != 5) {
                    Gson$$ExternalSyntheticBUOutline0.m$3("Do not know how to construct standard type id resolver for idType: ", this._idType);
                    return null;
                }
                typeIdResolverBase = null;
            }
        }
        if (this._idType == JsonTypeInfo.Id.DEDUCTION) {
            return new AsExistingPropertyTypeSerializer(typeIdResolverBase, null, this._typeProperty);
        }
        int i3 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()];
        if (i3 == 1) {
            return new AsArrayTypeSerializer(typeIdResolverBase, beanProperty, 0);
        }
        if (i3 == 2) {
            return new AsPropertyTypeSerializer(typeIdResolverBase, null, this._typeProperty);
        }
        if (i3 == 3) {
            return new AsArrayTypeSerializer(typeIdResolverBase, beanProperty, i);
        }
        if (i3 == 4) {
            return new AsExternalTypeSerializer(typeIdResolverBase, null, this._typeProperty);
        }
        if (i3 == 5) {
            return new AsExistingPropertyTypeSerializer(typeIdResolverBase, null, this._typeProperty);
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("Do not know how to construct standard type serializer for inclusion type: ", this._includeAs);
        return null;
    }
}
