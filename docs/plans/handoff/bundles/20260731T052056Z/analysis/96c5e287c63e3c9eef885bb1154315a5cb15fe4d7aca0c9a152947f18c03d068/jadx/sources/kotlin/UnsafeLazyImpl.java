package kotlin;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UnsafeLazyImpl implements BeanProperty, Serializable, Annotations, Lazy {
    public final /* synthetic */ int $r8$classId = 0;
    public Object _value;
    public Object initializer;

    public UnsafeLazyImpl(Class cls, SerializedString[] serializedStringArr) {
        this.initializer = cls;
        this._value = serializedStringArr;
    }

    public static UnsafeLazyImpl constructFromName(MapperConfig mapperConfig, Class cls) {
        Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
        Class superclass = cls.getSuperclass() != Enum.class ? cls.getSuperclass() : cls;
        Enum[] enumArr = (Enum[]) superclass.getEnumConstants();
        if (enumArr == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot determine enum constants for Class ".concat(cls.getName()));
            return null;
        }
        String[] findEnumValues = mapperConfig.getAnnotationIntrospector().findEnumValues(superclass, enumArr, new String[enumArr.length]);
        SerializedString[] serializedStringArr = new SerializedString[enumArr.length];
        int length = enumArr.length;
        for (int i = 0; i < length; i++) {
            Enum r4 = enumArr[i];
            String str = findEnumValues[i];
            if (str == null) {
                str = r4.name();
            }
            serializedStringArr[r4.ordinal()] = new SerializedString(str);
        }
        return new UnsafeLazyImpl(cls, serializedStringArr);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonFormat.Value findPropertyFormat(MapperConfig mapperConfig, Class cls) {
        JsonFormat.Value findFormat;
        ((MapperConfigBase) mapperConfig).getClass();
        JsonFormat.Value value = JsonFormat.Value.EMPTY;
        PropertyNamingStrategy annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember annotatedMember = (AnnotatedMember) this._value;
        return (annotatedMember == null || (findFormat = annotationIntrospector.findFormat(annotatedMember)) == null) ? value : value.withOverrides(findFormat);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonInclude.Value findPropertyInclusion(MapperConfig mapperConfig, Class cls) {
        JsonInclude.Value findPropertyInclusion;
        Class cls2 = ((TypeBase) this.initializer)._class;
        JsonInclude.Value value = (JsonInclude.Value) ((MapperConfigBase) mapperConfig)._configOverrides.value;
        if (value == null) {
            value = null;
        }
        JsonInclude.Value value2 = value != null ? value : null;
        PropertyNamingStrategy annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember annotatedMember = (AnnotatedMember) this._value;
        return (annotatedMember == null || (findPropertyInclusion = annotationIntrospector.findPropertyInclusion(annotatedMember)) == null) ? value2 : value2.withOverrides(findPropertyInclusion);
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public Annotation get(Class cls) {
        if (((Class) this.initializer) == cls) {
            return (Annotation) this._value;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return (AnnotatedMember) this._value;
    }

    @Override // kotlin.Lazy
    public Object getValue() {
        Object obj = this._value;
        if (obj != UNINITIALIZED_VALUE.INSTANCE) {
            return obj;
        }
        Function0 function0 = (Function0) this.initializer;
        function0.getClass();
        Object invoke = function0.invoke();
        this._value = invoke;
        this.initializer = null;
        return invoke;
    }

    public boolean shouldIgnore(Object obj) {
        Set set = (Set) this._value;
        return !(set == null || set.contains(obj)) || ((Set) this.initializer).contains(obj);
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public int size() {
        return 1;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return this._value != UNINITIALIZED_VALUE.INSTANCE ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ UnsafeLazyImpl() {
    }

    public UnsafeLazyImpl(Set set, Set set2) {
        this.initializer = set == null ? Collections.EMPTY_SET : set;
        this._value = set2;
    }

    public UnsafeLazyImpl(Class cls, Annotation annotation) {
        this.initializer = cls;
        this._value = annotation;
    }

    public UnsafeLazyImpl(TypeBase typeBase, AnnotatedMember annotatedMember, PropertyMetadata propertyMetadata) {
        this.initializer = typeBase;
        this._value = annotatedMember;
    }
}
