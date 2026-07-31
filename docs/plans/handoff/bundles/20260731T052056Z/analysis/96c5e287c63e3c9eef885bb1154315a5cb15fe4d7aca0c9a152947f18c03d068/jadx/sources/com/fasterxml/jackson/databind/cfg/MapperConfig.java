package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector$MixInResolver;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector$1;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapperConfig implements ClassIntrospector$MixInResolver, Serializable {
    public final BaseSettings _base;
    public final long _mapperFeatures;

    static {
        JsonInclude.Value value = JsonInclude.Value.EMPTY;
        JsonFormat.Value value2 = JsonFormat.Value.EMPTY;
    }

    public MapperConfig(MapperConfigBase mapperConfigBase, long j) {
        this._base = mapperConfigBase._base;
        this._mapperFeatures = j;
    }

    public static int collectFeatureDefaults(Class cls) {
        int i = 0;
        for (Object obj : (Enum[]) cls.getEnumConstants()) {
            ConfigFeature configFeature = (ConfigFeature) obj;
            if (configFeature.enabledByDefault()) {
                i |= configFeature.getMask();
            }
        }
        return i;
    }

    public final boolean canOverrideAccessModifiers() {
        return MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS.enabledIn(this._mapperFeatures);
    }

    public final TypeBase constructType(Class cls) {
        return this._base._typeFactory._fromAny(null, cls, TypeFactory.EMPTY_BINDINGS);
    }

    public final PropertyNamingStrategy getAnnotationIntrospector() {
        return MapperFeature.USE_ANNOTATIONS.enabledIn(this._mapperFeatures) ? this._base._annotationIntrospector : NopAnnotationIntrospector$1.instance;
    }

    public MapperConfig(BaseSettings baseSettings, long j) {
        this._base = baseSettings;
        this._mapperFeatures = j;
    }
}
