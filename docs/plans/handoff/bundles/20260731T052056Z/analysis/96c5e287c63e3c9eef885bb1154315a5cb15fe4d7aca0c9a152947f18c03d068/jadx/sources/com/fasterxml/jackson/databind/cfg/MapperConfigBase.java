package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.ser.PropertyBuilder;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import kotlin.ExceptionsKt;
import kotlin.InitializedLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapperConfigBase extends MapperConfig {
    public final ExceptionsKt _attributes;
    public final InitializedLazyImpl _configOverrides;
    public final SimpleMixInResolver _mixIns;
    public final RootNameLookup _rootNames;
    public final StdSubtypeResolver _subtypeResolver;
    public static final long DEFAULT_MAPPER_FEATURES = MapperFeature.collectLongDefaults();
    public static final long AUTO_DETECT_MASK = (((MapperFeature.AUTO_DETECT_FIELDS.getLongMask() | MapperFeature.AUTO_DETECT_GETTERS.getLongMask()) | MapperFeature.AUTO_DETECT_IS_GETTERS.getLongMask()) | MapperFeature.AUTO_DETECT_SETTERS.getLongMask()) | MapperFeature.AUTO_DETECT_CREATORS.getLongMask();

    public MapperConfigBase(MapperConfigBase mapperConfigBase, long j) {
        super(mapperConfigBase, j);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public abstract MapperConfigBase _withMapperFeatures(long j);

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector$MixInResolver
    public final Class findMixInClassFor(Class cls) {
        return null;
    }

    public final PropertyName findRootName(Class cls) {
        RootNameLookup rootNameLookup = this._rootNames;
        ClassKey classKey = new ClassKey();
        classKey._class = cls;
        String name = cls.getName();
        classKey._className = name;
        classKey._hashCode = name.hashCode();
        PropertyName propertyName = (PropertyName) rootNameLookup._rootNames._map.get(classKey);
        if (propertyName != null) {
            return propertyName;
        }
        TypeBase constructType = constructType(cls);
        ((BasicClassIntrospector) this._base._classIntrospector).getClass();
        BasicBeanDescription _findStdTypeDesc = BasicClassIntrospector._findStdTypeDesc(this, constructType);
        if (_findStdTypeDesc == null) {
            _findStdTypeDesc = BasicBeanDescription.forOtherUse(this, constructType, PropertyBuilder.resolve(this, constructType, this));
        }
        PropertyName findRootName = getAnnotationIntrospector().findRootName(_findStdTypeDesc._classInfo);
        if (findRootName == null || findRootName._simpleName.isEmpty()) {
            findRootName = PropertyName.construct(cls.getSimpleName());
        }
        LRUMap lRUMap = rootNameLookup._rootNames;
        if (lRUMap._map.size() >= lRUMap._maxEntries) {
            synchronized (lRUMap) {
                if (lRUMap._map.size() >= lRUMap._maxEntries) {
                    lRUMap._map.clear();
                }
            }
        }
        lRUMap._map.put(classKey, findRootName);
        return findRootName;
    }

    public final MapperConfigBase without(MapperFeature... mapperFeatureArr) {
        long j = this._mapperFeatures;
        long j2 = j;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            j2 &= ~mapperFeature.getLongMask();
        }
        return j2 == j ? this : _withMapperFeatures(j2);
    }

    public MapperConfigBase(BaseSettings baseSettings, StdSubtypeResolver stdSubtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, InitializedLazyImpl initializedLazyImpl) {
        super(baseSettings, DEFAULT_MAPPER_FEATURES);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = stdSubtypeResolver;
        this._rootNames = rootNameLookup;
        this._attributes = ContextAttributes$Impl.EMPTY;
        this._configOverrides = initializedLazyImpl;
    }
}
