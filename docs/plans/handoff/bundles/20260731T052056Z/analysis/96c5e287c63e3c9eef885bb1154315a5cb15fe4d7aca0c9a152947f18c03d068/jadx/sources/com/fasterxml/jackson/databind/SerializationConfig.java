package com.fasterxml.jackson.databind;

import androidx.room.RoomOpenDelegate;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.jdk14.JDK14Util$RecordAccessor;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.ser.PropertyBuilder;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import kotlin.InitializedLazyImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SerializationConfig extends MapperConfigBase {
    public static final DefaultPrettyPrinter DEFAULT_PRETTY_PRINTER = new DefaultPrettyPrinter();
    public static final int SER_FEATURE_DEFAULTS = MapperConfig.collectFeatureDefaults(SerializationFeature.class);
    public final PrettyPrinter _defaultPrettyPrinter;
    public final int _serFeatures;

    public SerializationConfig(BaseSettings baseSettings, StdSubtypeResolver stdSubtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, InitializedLazyImpl initializedLazyImpl) {
        super(baseSettings, stdSubtypeResolver, simpleMixInResolver, rootNameLookup, initializedLazyImpl);
        this._serFeatures = SER_FEATURE_DEFAULTS;
        this._defaultPrettyPrinter = DEFAULT_PRETTY_PRINTER;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public final MapperConfigBase _withMapperFeatures(long j) {
        return new SerializationConfig(this, j, this._serFeatures);
    }

    public final BasicBeanDescription introspect(TypeBase typeBase) {
        ((BasicClassIntrospector) this._base._classIntrospector).getClass();
        BasicBeanDescription _findStdTypeDesc = BasicClassIntrospector._findStdTypeDesc(this, typeBase);
        Class cls = typeBase._class;
        if (_findStdTypeDesc == null) {
            _findStdTypeDesc = (typeBase.isContainerType() && !(typeBase instanceof ArrayType) && ClassUtil.isJDKClass(cls) && (Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls))) ? BasicBeanDescription.forOtherUse(this, typeBase, PropertyBuilder.resolve(this, typeBase, this)) : null;
            if (_findStdTypeDesc == null) {
                final AnnotatedClass resolve = PropertyBuilder.resolve(this, typeBase, this);
                Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
                Class superclass = cls.getSuperclass();
                return new BasicBeanDescription(new POJOPropertiesCollector(this, typeBase, resolve, (superclass == null || !"java.lang.Record".equals(superclass.getName())) ? new RoomOpenDelegate.ValidationResult(this, "set") : new RoomOpenDelegate.ValidationResult(this, resolve) { // from class: com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy$RecordNaming
                    public final HashSet _fieldNames;

                    {
                        super(this, (String) null);
                        this._fieldNames = new HashSet();
                        Class cls2 = resolve._class;
                        RuntimeException runtimeException = JDK14Util$RecordAccessor.PROBLEM;
                        if (runtimeException != null) {
                            throw runtimeException;
                        }
                        JDK14Util$RecordAccessor jDK14Util$RecordAccessor = JDK14Util$RecordAccessor.INSTANCE;
                        jDK14Util$RecordAccessor.getClass();
                        try {
                            Object[] objArr = (Object[]) jDK14Util$RecordAccessor.RECORD_GET_RECORD_COMPONENTS.invoke(cls2, null);
                            int length = objArr.length;
                            String[] strArr = new String[length];
                            for (int i = 0; i < objArr.length; i++) {
                                try {
                                    strArr[i] = (String) jDK14Util$RecordAccessor.RECORD_COMPONENT_GET_NAME.invoke(objArr[i], null);
                                } catch (Exception e) {
                                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(objArr.length), ClassUtil.nameOf(cls2)), e);
                                }
                            }
                            for (int i2 = 0; i2 < length; i2++) {
                                this._fieldNames.add(strArr[i2]);
                            }
                        } catch (Exception unused) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed to access RecordComponents of type ".concat(ClassUtil.nameOf(cls2)));
                            throw null;
                        }
                    }

                    @Override // androidx.room.RoomOpenDelegate.ValidationResult
                    public final String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
                        return this._fieldNames.contains(str) ? str : super.findNameForRegularGetter(annotatedMethod, str);
                    }
                }));
            }
        }
        return _findStdTypeDesc;
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return (this._serFeatures & serializationFeature.getMask()) != 0;
    }

    public SerializationConfig(SerializationConfig serializationConfig, long j, int i) {
        super(serializationConfig, j);
        this._serFeatures = i;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
    }
}
