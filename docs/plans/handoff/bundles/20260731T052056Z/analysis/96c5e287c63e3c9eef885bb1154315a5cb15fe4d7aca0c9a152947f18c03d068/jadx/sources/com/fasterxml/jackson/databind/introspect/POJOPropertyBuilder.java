package com.fasterxml.jackson.databind.introspect;

import androidx.compose.runtime.ProvidedValue;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import coil3.size.ViewSizeResolver$CC;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.AnnotationIntrospector$ReferenceProperty$Type;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class POJOPropertyBuilder extends BeanPropertyDefinition implements Comparable {
    public static final MemoryCacheService NOT_REFEFERENCE_PROP = new MemoryCacheService(15, AnnotationIntrospector$ReferenceProperty$Type.MANAGED_REFERENCE);
    public final PropertyNamingStrategy _annotationIntrospector;
    public final SerializationConfig _config;
    public ProvidedValue _ctorParameters;
    public ProvidedValue _fields;
    public ProvidedValue _getters;
    public final PropertyName _internalName;
    public transient PropertyMetadata _metadata;
    public final PropertyName _name;
    public transient MemoryCacheService _referenceInfo;
    public ProvidedValue _setters;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder$6, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass6 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access;

        static {
            int[] iArr = new int[JsonProperty.Access.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access = iArr;
            try {
                iArr[JsonProperty.Access.READ_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[JsonProperty.Access.READ_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[JsonProperty.Access.WRITE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[JsonProperty.Access.AUTO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public POJOPropertyBuilder(POJOPropertyBuilder pOJOPropertyBuilder, PropertyName propertyName) {
        this._config = pOJOPropertyBuilder._config;
        this._annotationIntrospector = pOJOPropertyBuilder._annotationIntrospector;
        this._internalName = pOJOPropertyBuilder._internalName;
        this._name = propertyName;
        this._fields = pOJOPropertyBuilder._fields;
        this._ctorParameters = pOJOPropertyBuilder._ctorParameters;
        this._getters = pOJOPropertyBuilder._getters;
        this._setters = pOJOPropertyBuilder._setters;
    }

    public static boolean _anyExplicits(ProvidedValue providedValue) {
        while (providedValue != null) {
            PropertyName propertyName = (PropertyName) providedValue.mutationPolicy;
            if (propertyName != null && !propertyName._simpleName.isEmpty()) {
                return true;
            }
            providedValue = (ProvidedValue) providedValue.compositionLocal;
        }
        return false;
    }

    public static boolean _anyIgnorals(ProvidedValue providedValue) {
        while (providedValue != null) {
            if (providedValue.canOverride) {
                return true;
            }
            providedValue = (ProvidedValue) providedValue.compositionLocal;
        }
        return false;
    }

    public static boolean _anyVisible(ProvidedValue providedValue) {
        while (providedValue != null) {
            if (providedValue.isDynamic) {
                return true;
            }
            providedValue = (ProvidedValue) providedValue.compositionLocal;
        }
        return false;
    }

    public static ProvidedValue _applyAnnotations(ProvidedValue providedValue, MemoryCacheService memoryCacheService) {
        AnnotatedMember annotatedMember = (AnnotatedMember) ((AnnotatedMember) providedValue.providedValue).withAnnotations(memoryCacheService);
        ProvidedValue providedValue2 = (ProvidedValue) providedValue.compositionLocal;
        if (providedValue2 != null) {
            providedValue = providedValue.withNext(_applyAnnotations(providedValue2, memoryCacheService));
        }
        return annotatedMember == providedValue.providedValue ? providedValue : new ProvidedValue(annotatedMember, (ProvidedValue) providedValue.compositionLocal, (PropertyName) providedValue.mutationPolicy, providedValue.explicitNull, providedValue.isDynamic, providedValue.canOverride);
    }

    public static Set _findExplicitNames(ProvidedValue providedValue, Set set) {
        while (providedValue != null) {
            PropertyName propertyName = (PropertyName) providedValue.mutationPolicy;
            if (providedValue.explicitNull && propertyName != null) {
                if (set == null) {
                    set = new HashSet();
                }
                set.add(propertyName);
            }
            providedValue = (ProvidedValue) providedValue.compositionLocal;
        }
        return set;
    }

    public static MemoryCacheService _getAllAnnotations(ProvidedValue providedValue) {
        MemoryCacheService memoryCacheService = ((AnnotatedMember) providedValue.providedValue)._annotations;
        ProvidedValue providedValue2 = (ProvidedValue) providedValue.compositionLocal;
        return providedValue2 != null ? MemoryCacheService.merge(memoryCacheService, _getAllAnnotations(providedValue2)) : memoryCacheService;
    }

    public static int _getterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod._method.getName();
        if (!name.startsWith("get") || name.length() <= 3) {
            return (!name.startsWith("is") || name.length() <= 2) ? 3 : 2;
        }
        return 1;
    }

    public static MemoryCacheService _mergeAnnotations(int i, ProvidedValue... providedValueArr) {
        MemoryCacheService _getAllAnnotations = _getAllAnnotations(providedValueArr[i]);
        do {
            i++;
            if (i >= providedValueArr.length) {
                return _getAllAnnotations;
            }
        } while (providedValueArr[i] == null);
        return MemoryCacheService.merge(_getAllAnnotations, _mergeAnnotations(i, providedValueArr));
    }

    public final void _explode(Set set, HashMap hashMap, ProvidedValue providedValue) {
        String apostrophed;
        for (ProvidedValue providedValue2 = providedValue; providedValue2 != null; providedValue2 = (ProvidedValue) providedValue2.compositionLocal) {
            PropertyName propertyName = (PropertyName) providedValue2.mutationPolicy;
            if (providedValue2.explicitNull && propertyName != null) {
                POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) hashMap.get(propertyName);
                if (pOJOPropertyBuilder == null) {
                    pOJOPropertyBuilder = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._internalName, propertyName);
                    hashMap.put(propertyName, pOJOPropertyBuilder);
                }
                if (providedValue == this._fields) {
                    pOJOPropertyBuilder._fields = providedValue2.withNext(pOJOPropertyBuilder._fields);
                } else if (providedValue == this._getters) {
                    pOJOPropertyBuilder._getters = providedValue2.withNext(pOJOPropertyBuilder._getters);
                } else if (providedValue == this._setters) {
                    pOJOPropertyBuilder._setters = providedValue2.withNext(pOJOPropertyBuilder._setters);
                } else {
                    if (providedValue != this._ctorParameters) {
                        Gson$$ExternalSyntheticBUOutline0.m$1("Internal error: mismatched accessors, property: ", this);
                        return;
                    }
                    pOJOPropertyBuilder._ctorParameters = providedValue2.withNext(pOJOPropertyBuilder._ctorParameters);
                }
            } else if (providedValue2.isDynamic) {
                StringBuilder sb = new StringBuilder("Conflicting/ambiguous property name definitions (implicit name ");
                PropertyName propertyName2 = this._name;
                if (propertyName2 == null) {
                    Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
                    apostrophed = "[null]";
                } else {
                    apostrophed = ClassUtil.apostrophed(propertyName2._simpleName);
                }
                sb.append(apostrophed);
                sb.append("): found multiple explicit names: ");
                sb.append(set);
                sb.append(", but also implicit accessor: ");
                sb.append(providedValue2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
    
        if (r1.isAssignableFrom(r0) != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.introspect.AnnotatedMethod _selectSetter(com.fasterxml.jackson.databind.introspect.AnnotatedMethod r7, com.fasterxml.jackson.databind.introspect.AnnotatedMethod r8) {
        /*
            r6 = this;
            java.lang.reflect.Method r0 = r7._method
            java.lang.Class r0 = r0.getDeclaringClass()
            java.lang.reflect.Method r1 = r8._method
            java.lang.Class r1 = r1.getDeclaringClass()
            if (r0 == r1) goto L1c
            boolean r2 = r0.isAssignableFrom(r1)
            if (r2 == 0) goto L15
            goto L4d
        L15:
            boolean r0 = r1.isAssignableFrom(r0)
            if (r0 == 0) goto L1c
            goto L4e
        L1c:
            java.lang.reflect.Method r0 = r8._method
            java.lang.String r0 = r0.getName()
            java.lang.String r1 = "set"
            boolean r2 = r0.startsWith(r1)
            r3 = 2
            r4 = 1
            r5 = 3
            if (r2 == 0) goto L35
            int r0 = r0.length()
            if (r0 <= r5) goto L35
            r0 = r4
            goto L36
        L35:
            r0 = r3
        L36:
            java.lang.reflect.Method r2 = r7._method
            java.lang.String r2 = r2.getName()
            boolean r1 = r2.startsWith(r1)
            if (r1 == 0) goto L49
            int r1 = r2.length()
            if (r1 <= r5) goto L49
            r3 = r4
        L49:
            if (r0 == r3) goto L4f
            if (r0 >= r3) goto L4e
        L4d:
            return r8
        L4e:
            return r7
        L4f:
            com.fasterxml.jackson.databind.PropertyNamingStrategy r6 = r6._annotationIntrospector
            if (r6 != 0) goto L55
            r6 = 0
            return r6
        L55:
            com.fasterxml.jackson.databind.introspect.AnnotatedMethod r6 = r6.resolveSetterConflict(r7, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder._selectSetter(com.fasterxml.jackson.databind.introspect.AnnotatedMethod, com.fasterxml.jackson.databind.introspect.AnnotatedMethod):com.fasterxml.jackson.databind.introspect.AnnotatedMethod");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) obj;
        if (this._ctorParameters != null) {
            if (pOJOPropertyBuilder._ctorParameters == null) {
                return -1;
            }
        } else if (pOJOPropertyBuilder._ctorParameters != null) {
            return 1;
        }
        return getName().compareTo(pOJOPropertyBuilder.getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final boolean couldDeserialize() {
        return (this._ctorParameters == null && this._setters == null && this._fields == null) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final JsonInclude.Value findInclusion() {
        AnnotatedMember accessor = getAccessor();
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        JsonInclude.Value findPropertyInclusion = propertyNamingStrategy == null ? null : propertyNamingStrategy.findPropertyInclusion(accessor);
        return findPropertyInclusion == null ? JsonInclude.Value.EMPTY : findPropertyInclusion;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final MemoryCacheService findReferenceType() {
        ProvidedValue providedValue;
        MemoryCacheService memoryCacheService = this._referenceInfo;
        MemoryCacheService memoryCacheService2 = NOT_REFEFERENCE_PROP;
        if (memoryCacheService != null) {
            if (memoryCacheService == memoryCacheService2) {
                return null;
            }
            return memoryCacheService;
        }
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        if (propertyNamingStrategy != null) {
            ProvidedValue providedValue2 = this._getters;
            r1 = providedValue2 != null ? propertyNamingStrategy.findReferenceType((AnnotatedMember) providedValue2.providedValue) : null;
            if (r1 == null && (providedValue = this._fields) != null) {
                r1 = propertyNamingStrategy.findReferenceType((AnnotatedMember) providedValue.providedValue);
            }
        }
        if (r1 != null) {
            memoryCacheService2 = r1;
        }
        this._referenceInfo = memoryCacheService2;
        return r1;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final Class[] findViews() {
        ProvidedValue providedValue;
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        if (propertyNamingStrategy == null) {
            return null;
        }
        ProvidedValue providedValue2 = this._getters;
        Class[] findViews = providedValue2 != null ? propertyNamingStrategy.findViews((AnnotatedMember) providedValue2.providedValue) : null;
        return (findViews != null || (providedValue = this._fields) == null) ? findViews : propertyNamingStrategy.findViews((AnnotatedMember) providedValue.providedValue);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedParameter getConstructorParameter() {
        ProvidedValue providedValue = this._ctorParameters;
        if (providedValue == null) {
            return null;
        }
        do {
            AnnotatedParameter annotatedParameter = (AnnotatedParameter) providedValue.providedValue;
            if (annotatedParameter._owner instanceof AnnotatedConstructor) {
                return annotatedParameter;
            }
            providedValue = (ProvidedValue) providedValue.compositionLocal;
        } while (providedValue != null);
        return (AnnotatedParameter) this._ctorParameters.providedValue;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedField getField() {
        ProvidedValue providedValue = this._fields;
        if (providedValue == null) {
            return null;
        }
        AnnotatedField annotatedField = (AnnotatedField) providedValue.providedValue;
        for (ProvidedValue providedValue2 = (ProvidedValue) providedValue.compositionLocal; providedValue2 != null; providedValue2 = (ProvidedValue) providedValue2.compositionLocal) {
            AnnotatedField annotatedField2 = (AnnotatedField) providedValue2.providedValue;
            Class<?> declaringClass = annotatedField._field.getDeclaringClass();
            Class<?> declaringClass2 = annotatedField2._field.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedField = annotatedField2;
                } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                }
            }
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Multiple fields representing property \"", getName(), "\": ", annotatedField.getFullName(), " vs ", annotatedField2.getFullName());
            return null;
        }
        return annotatedField;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedMethod getGetter() {
        ProvidedValue providedValue = this._getters;
        if (providedValue == null) {
            return null;
        }
        ProvidedValue providedValue2 = (ProvidedValue) providedValue.compositionLocal;
        if (providedValue2 == null) {
            return (AnnotatedMethod) providedValue.providedValue;
        }
        while (true) {
            Object obj = providedValue.providedValue;
            if (providedValue2 == null) {
                this._getters = providedValue.withoutNext();
                return (AnnotatedMethod) obj;
            }
            Object obj2 = providedValue2.providedValue;
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) obj;
            Class<?> declaringClass = annotatedMethod._method.getDeclaringClass();
            AnnotatedMethod annotatedMethod2 = (AnnotatedMethod) obj2;
            Class<?> declaringClass2 = annotatedMethod2._method.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (!declaringClass.isAssignableFrom(declaringClass2)) {
                    if (declaringClass2.isAssignableFrom(declaringClass)) {
                        continue;
                        providedValue2 = (ProvidedValue) providedValue2.compositionLocal;
                    }
                }
                providedValue = providedValue2;
                providedValue2 = (ProvidedValue) providedValue2.compositionLocal;
            }
            int _getterPriority = _getterPriority(annotatedMethod2);
            int _getterPriority2 = _getterPriority(annotatedMethod);
            if (_getterPriority == _getterPriority2) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m("Conflicting getter definitions for property \"", getName(), "\": ", annotatedMethod.getFullName(), " vs ", annotatedMethod2.getFullName());
                return null;
            }
            if (_getterPriority >= _getterPriority2) {
                providedValue2 = (ProvidedValue) providedValue2.compositionLocal;
            }
            providedValue = providedValue2;
            providedValue2 = (ProvidedValue) providedValue2.compositionLocal;
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final PropertyMetadata getMetadata() {
        AnnotatedMember annotatedMember;
        PropertyMetadata propertyMetadata = this._metadata;
        if (propertyMetadata == null) {
            ProvidedValue providedValue = this._getters;
            if (providedValue != null) {
                annotatedMember = (AnnotatedMember) providedValue.providedValue;
            } else {
                ProvidedValue providedValue2 = this._fields;
                annotatedMember = providedValue2 != null ? (AnnotatedMember) providedValue2.providedValue : null;
            }
            if (annotatedMember == null) {
                PropertyMetadata propertyMetadata2 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
                this._metadata = propertyMetadata2;
                return propertyMetadata2;
            }
            PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
            Boolean hasRequiredMarker = propertyNamingStrategy.hasRequiredMarker(annotatedMember);
            String findPropertyDescription = propertyNamingStrategy.findPropertyDescription(annotatedMember);
            Integer findPropertyIndex = propertyNamingStrategy.findPropertyIndex(annotatedMember);
            String findPropertyDefaultValue = propertyNamingStrategy.findPropertyDefaultValue(annotatedMember);
            if (hasRequiredMarker == null && findPropertyIndex == null && findPropertyDefaultValue == null) {
                PropertyMetadata propertyMetadata3 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
                if (findPropertyDescription != null) {
                    propertyMetadata3 = new PropertyMetadata(propertyMetadata3._required, findPropertyDescription, propertyMetadata3._index, propertyMetadata3._defaultValue, null, propertyMetadata3._valueNulls, propertyMetadata3._contentNulls);
                }
                this._metadata = propertyMetadata3;
                return propertyMetadata3;
            }
            PropertyMetadata propertyMetadata4 = PropertyMetadata.STD_REQUIRED;
            propertyMetadata = (findPropertyDescription == null && findPropertyIndex == null && findPropertyDefaultValue == null) ? hasRequiredMarker == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : hasRequiredMarker.booleanValue() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL : new PropertyMetadata(hasRequiredMarker, findPropertyDescription, findPropertyIndex, findPropertyDefaultValue, null, null, null);
            this._metadata = propertyMetadata;
        }
        return propertyMetadata;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final String getName() {
        PropertyName propertyName = this._name;
        if (propertyName == null) {
            return null;
        }
        return propertyName._simpleName;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final Class getRawPrimaryType() {
        Annotated getter = getGetter();
        return ((getter == null && (getter = getField()) == null) ? TypeFactory.unknownType() : getter.getType())._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final AnnotatedMethod getSetter() {
        Object obj;
        ProvidedValue providedValue = this._setters;
        if (providedValue == null) {
            return null;
        }
        ProvidedValue providedValue2 = (ProvidedValue) providedValue.compositionLocal;
        if (providedValue2 == null) {
            return (AnnotatedMethod) providedValue.providedValue;
        }
        while (true) {
            Object obj2 = providedValue.providedValue;
            if (providedValue2 == null) {
                this._setters = providedValue.withoutNext();
                return (AnnotatedMethod) obj2;
            }
            ProvidedValue providedValue3 = (ProvidedValue) providedValue2.compositionLocal;
            Object obj3 = providedValue2.providedValue;
            AnnotatedMethod _selectSetter = _selectSetter((AnnotatedMethod) obj2, (AnnotatedMethod) obj3);
            if (_selectSetter != obj2) {
                if (_selectSetter != obj3) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(obj2);
                    arrayList.add(obj3);
                    while (true) {
                        obj = providedValue.providedValue;
                        if (providedValue3 == null) {
                            break;
                        }
                        Object obj4 = providedValue3.providedValue;
                        AnnotatedMethod _selectSetter2 = _selectSetter((AnnotatedMethod) obj, (AnnotatedMethod) obj4);
                        if (_selectSetter2 != obj) {
                            if (_selectSetter2 == obj4) {
                                arrayList.clear();
                                providedValue = providedValue3;
                            } else {
                                arrayList.add(obj4);
                            }
                        }
                        providedValue3 = (ProvidedValue) providedValue3.compositionLocal;
                    }
                    if (arrayList.isEmpty()) {
                        this._setters = providedValue.withoutNext();
                        return (AnnotatedMethod) obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(ViewSizeResolver$CC.m("Conflicting setter definitions for property \"", getName(), "\": ", (String) Collection.EL.stream(arrayList).map(new Nodes$$ExternalSyntheticLambda0(1)).collect(Collectors.joining(" vs "))));
                    return null;
                }
                providedValue = providedValue2;
            }
            providedValue2 = providedValue3;
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final void getWrapperName() {
        getAccessor();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final boolean isExplicitlyIncluded() {
        if (_anyExplicits(this._fields) || _anyExplicits(this._getters) || _anyExplicits(this._setters)) {
            return true;
        }
        for (ProvidedValue providedValue = this._ctorParameters; providedValue != null; providedValue = (ProvidedValue) providedValue.compositionLocal) {
            if (((PropertyName) providedValue.mutationPolicy) != null && providedValue.explicitNull) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public final boolean isTypeId() {
        ProvidedValue providedValue;
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        if (propertyNamingStrategy != null) {
            ProvidedValue providedValue2 = this._getters;
            r0 = providedValue2 != null ? propertyNamingStrategy.isTypeId((AnnotatedMember) providedValue2.providedValue) : null;
            if (r0 == null && (providedValue = this._fields) != null) {
                r0 = propertyNamingStrategy.isTypeId((AnnotatedMember) providedValue.providedValue);
            }
        }
        return r0 != null && r0.booleanValue();
    }

    public final String toString() {
        return "[Property '" + this._name + "'; ctors: " + this._ctorParameters + ", field(s): " + this._fields + ", getter(s): " + this._getters + ", setter(s): " + this._setters + "]";
    }

    public POJOPropertyBuilder(SerializationConfig serializationConfig, PropertyNamingStrategy propertyNamingStrategy, PropertyName propertyName, PropertyName propertyName2) {
        this._config = serializationConfig;
        this._annotationIntrospector = propertyNamingStrategy;
        this._internalName = propertyName;
        this._name = propertyName2;
    }
}
