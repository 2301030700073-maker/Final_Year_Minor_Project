package com.fasterxml.jackson.databind.introspect;

import androidx.compose.runtime.ProvidedValue;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.room.RoomOpenDelegate;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class POJOPropertiesCollector {
    public final RoomOpenDelegate.ValidationResult _accessorNaming;
    public final PropertyNamingStrategy _annotationIntrospector;
    public LinkedList _anyGetterField;
    public LinkedList _anyGetters;
    public LinkedList _anySetterField;
    public LinkedList _anySetters;
    public final AnnotatedClass _classDef;
    public boolean _collected;
    public final SerializationConfig _config;
    public LinkedList _creatorProperties;
    public LinkedHashMap _injectables;
    public LinkedList _jsonKeyAccessors;
    public LinkedList _jsonValueAccessors;
    public LinkedHashMap _properties;
    public final TypeBase _type;
    public final boolean _useAnnotations;
    public final VisibilityChecker$Std _visibilityChecker;

    /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public POJOPropertiesCollector(com.fasterxml.jackson.databind.SerializationConfig r11, com.fasterxml.jackson.databind.type.TypeBase r12, com.fasterxml.jackson.databind.introspect.AnnotatedClass r13, androidx.room.RoomOpenDelegate.ValidationResult r14) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector.<init>(com.fasterxml.jackson.databind.SerializationConfig, com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.introspect.AnnotatedClass, androidx.room.RoomOpenDelegate$ValidationResult):void");
    }

    public final void _addCreatorParam(LinkedHashMap linkedHashMap, AnnotatedParameter annotatedParameter) {
        POJOPropertyBuilder _property;
        JsonCreator.Mode findCreatorAnnotation;
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        propertyNamingStrategy.getClass();
        PropertyName findNameForDeserialization = propertyNamingStrategy.findNameForDeserialization(annotatedParameter);
        boolean z = (findNameForDeserialization == null || findNameForDeserialization.isEmpty()) ? false : true;
        SerializationConfig serializationConfig = this._config;
        if (!z) {
            if ("".isEmpty() || (findCreatorAnnotation = propertyNamingStrategy.findCreatorAnnotation(serializationConfig, annotatedParameter._owner)) == null || findCreatorAnnotation == JsonCreator.Mode.DISABLED) {
                return;
            } else {
                findNameForDeserialization = PropertyName.construct("");
            }
        }
        PropertyName propertyName = findNameForDeserialization;
        String _checkRenameByField = _checkRenameByField("");
        if (z && _checkRenameByField.isEmpty()) {
            String str = propertyName._simpleName;
            _property = (POJOPropertyBuilder) linkedHashMap.get(str);
            if (_property == null) {
                _property = new POJOPropertyBuilder(serializationConfig, propertyNamingStrategy, propertyName, propertyName);
                linkedHashMap.put(str, _property);
            }
        } else {
            _property = _property(linkedHashMap, _checkRenameByField);
        }
        POJOPropertyBuilder pOJOPropertyBuilder = _property;
        pOJOPropertyBuilder._ctorParameters = new ProvidedValue(annotatedParameter, pOJOPropertyBuilder._ctorParameters, propertyName, z, true, false);
        this._creatorProperties.add(pOJOPropertyBuilder);
    }

    public final void _doAddInjectable(JacksonInject.Value value, AnnotatedMember annotatedMember) {
        if (value == null) {
            return;
        }
        Object obj = value._id;
        LinkedHashMap linkedHashMap = this._injectables;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
            this._injectables = linkedHashMap;
        }
        AnnotatedMember annotatedMember2 = (AnnotatedMember) linkedHashMap.put(obj, annotatedMember);
        if (annotatedMember2 == null || annotatedMember2.getClass() != annotatedMember.getClass()) {
            return;
        }
        TimeSource$Companion$$ExternalSyntheticLambda0.m("Duplicate injectable value with id '", obj, "' (of type ", obj.getClass().getName(), ")");
    }

    public final POJOPropertyBuilder _property(LinkedHashMap linkedHashMap, String str) {
        POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) linkedHashMap.get(str);
        if (pOJOPropertyBuilder != null) {
            return pOJOPropertyBuilder;
        }
        PropertyNamingStrategy propertyNamingStrategy = this._annotationIntrospector;
        PropertyName construct = PropertyName.construct(str);
        POJOPropertyBuilder pOJOPropertyBuilder2 = new POJOPropertyBuilder(this._config, propertyNamingStrategy, construct, construct);
        linkedHashMap.put(str, pOJOPropertyBuilder2);
        return pOJOPropertyBuilder2;
    }

    public final void collectAll() {
        VisibilityChecker$Std visibilityChecker$Std;
        PropertyNamingStrategy propertyNamingStrategy;
        int i;
        Collection<POJOPropertyBuilder> collection;
        Class cls;
        int i2;
        ProvidedValue providedValue;
        ProvidedValue providedValue2;
        ProvidedValue providedValue3;
        ProvidedValue providedValue4;
        JsonProperty.Access findPropertyAccess;
        boolean z;
        String findNameForRegularGetter;
        PropertyName propertyName;
        boolean z2;
        boolean z3;
        boolean isVisible;
        String findNameForMutator;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        MapperFeature mapperFeature = MapperFeature.PROPAGATE_TRANSIENT_MARKER;
        SerializationConfig serializationConfig = this._config;
        long j = serializationConfig._mapperFeatures;
        boolean enabledIn = mapperFeature.enabledIn(j);
        AnnotatedClass annotatedClass = this._classDef;
        Iterator it = annotatedClass._fields().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            visibilityChecker$Std = this._visibilityChecker;
            propertyNamingStrategy = this._annotationIntrospector;
            if (!hasNext) {
                break;
            }
            AnnotatedField annotatedField = (AnnotatedField) it.next();
            Boolean bool = Boolean.TRUE;
            if (bool.equals(propertyNamingStrategy.hasAsKey(annotatedField))) {
                LinkedList linkedList = this._jsonKeyAccessors;
                if (linkedList == null) {
                    linkedList = new LinkedList();
                    this._jsonKeyAccessors = linkedList;
                }
                linkedList.add(annotatedField);
            }
            if (bool.equals(propertyNamingStrategy.hasAsValue(annotatedField))) {
                LinkedList linkedList2 = this._jsonValueAccessors;
                if (linkedList2 == null) {
                    linkedList2 = new LinkedList();
                    this._jsonValueAccessors = linkedList2;
                }
                linkedList2.add(annotatedField);
            } else {
                boolean equals = bool.equals(propertyNamingStrategy.hasAnyGetter(annotatedField));
                boolean equals2 = bool.equals(propertyNamingStrategy.hasAnySetter(annotatedField));
                if (equals || equals2) {
                    if (equals) {
                        LinkedList linkedList3 = this._anyGetterField;
                        if (linkedList3 == null) {
                            linkedList3 = new LinkedList();
                            this._anyGetterField = linkedList3;
                        }
                        linkedList3.add(annotatedField);
                    }
                    if (equals2) {
                        LinkedList linkedList4 = this._anySetterField;
                        if (linkedList4 == null) {
                            linkedList4 = new LinkedList();
                            this._anySetterField = linkedList4;
                        }
                        linkedList4.add(annotatedField);
                    }
                } else {
                    String name = annotatedField._field.getName();
                    if (name != null) {
                        PropertyName.construct(name, null);
                        PropertyName findNameForSerialization = propertyNamingStrategy.findNameForSerialization(annotatedField);
                        boolean z8 = findNameForSerialization != null;
                        if (z8 && findNameForSerialization.isEmpty()) {
                            findNameForSerialization = PropertyName.construct(name, null);
                            z5 = false;
                        } else {
                            z5 = z8;
                        }
                        PropertyName propertyName2 = findNameForSerialization;
                        boolean z9 = propertyName2 != null;
                        if (!z9) {
                            visibilityChecker$Std.getClass();
                            z9 = visibilityChecker$Std._fieldMinLevel.isVisible(annotatedField._field);
                        }
                        boolean hasIgnoreMarker = propertyNamingStrategy.hasIgnoreMarker(annotatedField);
                        if (!Modifier.isTransient(annotatedField._field.getModifiers()) || z8) {
                            z6 = hasIgnoreMarker;
                            z7 = z9;
                        } else if (enabledIn) {
                            z7 = false;
                            z6 = true;
                        } else {
                            z6 = hasIgnoreMarker;
                            z7 = false;
                        }
                        POJOPropertyBuilder _property = _property(linkedHashMap, name);
                        _property._fields = new ProvidedValue(annotatedField, _property._fields, propertyName2, z5, z7, z6);
                    }
                }
            }
        }
        int i3 = 0;
        Iterator it2 = annotatedClass._methods().iterator();
        while (it2.hasNext()) {
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) it2.next();
            Class[] rawParameterTypes = annotatedMethod.getRawParameterTypes();
            Method method = annotatedMethod._method;
            int length = rawParameterTypes.length;
            RoomOpenDelegate.ValidationResult validationResult = this._accessorNaming;
            if (length == 0) {
                Class<?> returnType = method.getReturnType();
                if (returnType != Void.TYPE && (returnType != Void.class || MapperFeature.ALLOW_VOID_VALUED_PROPERTIES.enabledIn(j))) {
                    Boolean bool2 = Boolean.TRUE;
                    if (bool2.equals(propertyNamingStrategy.hasAnyGetter(annotatedMethod))) {
                        LinkedList linkedList5 = this._anyGetters;
                        if (linkedList5 == null) {
                            linkedList5 = new LinkedList();
                            this._anyGetters = linkedList5;
                        }
                        linkedList5.add(annotatedMethod);
                    } else if (bool2.equals(propertyNamingStrategy.hasAsKey(annotatedMethod))) {
                        LinkedList linkedList6 = this._jsonKeyAccessors;
                        if (linkedList6 == null) {
                            linkedList6 = new LinkedList();
                            this._jsonKeyAccessors = linkedList6;
                        }
                        linkedList6.add(annotatedMethod);
                    } else if (bool2.equals(propertyNamingStrategy.hasAsValue(annotatedMethod))) {
                        LinkedList linkedList7 = this._jsonValueAccessors;
                        if (linkedList7 == null) {
                            linkedList7 = new LinkedList();
                            this._jsonValueAccessors = linkedList7;
                        }
                        linkedList7.add(annotatedMethod);
                    } else {
                        PropertyName findNameForSerialization2 = propertyNamingStrategy.findNameForSerialization(annotatedMethod);
                        boolean z10 = findNameForSerialization2 != null;
                        if (z10) {
                            findNameForRegularGetter = validationResult.findNameForRegularGetter(annotatedMethod, method.getName());
                            if (findNameForRegularGetter == null) {
                                findNameForRegularGetter = validationResult.findNameForIsGetter(annotatedMethod, method.getName());
                            }
                            if (findNameForRegularGetter == null) {
                                findNameForRegularGetter = method.getName();
                            }
                            if (findNameForSerialization2.isEmpty()) {
                                findNameForSerialization2 = PropertyName.construct(findNameForRegularGetter, null);
                                z10 = false;
                            }
                            propertyName = findNameForSerialization2;
                            z2 = z10;
                            z3 = true;
                        } else {
                            findNameForRegularGetter = validationResult.findNameForRegularGetter(annotatedMethod, method.getName());
                            if (findNameForRegularGetter == null) {
                                findNameForRegularGetter = validationResult.findNameForIsGetter(annotatedMethod, method.getName());
                                if (findNameForRegularGetter != null) {
                                    visibilityChecker$Std.getClass();
                                    isVisible = visibilityChecker$Std._isGetterMinLevel.isVisible(method);
                                }
                            } else {
                                visibilityChecker$Std.getClass();
                                isVisible = visibilityChecker$Std._getterMinLevel.isVisible(method);
                            }
                            propertyName = findNameForSerialization2;
                            z2 = z10;
                            z3 = isVisible;
                        }
                        String _checkRenameByField = _checkRenameByField(findNameForRegularGetter);
                        boolean hasIgnoreMarker2 = propertyNamingStrategy.hasIgnoreMarker(annotatedMethod);
                        POJOPropertyBuilder _property2 = _property(linkedHashMap, _checkRenameByField);
                        _property2._getters = new ProvidedValue(annotatedMethod, _property2._getters, propertyName, z2, z3, hasIgnoreMarker2);
                    }
                }
            } else if (length == 1) {
                PropertyName findNameForDeserialization = propertyNamingStrategy.findNameForDeserialization(annotatedMethod);
                boolean z11 = findNameForDeserialization != null;
                if (z11) {
                    findNameForMutator = validationResult.findNameForMutator(method.getName());
                    if (findNameForMutator == null) {
                        findNameForMutator = method.getName();
                    }
                    if (findNameForDeserialization.isEmpty()) {
                        findNameForDeserialization = PropertyName.construct(findNameForMutator, null);
                        z11 = false;
                    }
                    z4 = true;
                } else {
                    findNameForMutator = validationResult.findNameForMutator(method.getName());
                    if (findNameForMutator != null) {
                        visibilityChecker$Std.getClass();
                        z4 = visibilityChecker$Std._setterMinLevel.isVisible(method);
                    }
                }
                PropertyName propertyName3 = findNameForDeserialization;
                boolean z12 = z11;
                String _checkRenameByField2 = _checkRenameByField(findNameForMutator);
                boolean hasIgnoreMarker3 = propertyNamingStrategy.hasIgnoreMarker(annotatedMethod);
                POJOPropertyBuilder _property3 = _property(linkedHashMap, _checkRenameByField2);
                _property3._setters = new ProvidedValue(annotatedMethod, _property3._setters, propertyName3, z12, z4, hasIgnoreMarker3);
            } else if (length == 2 && Boolean.TRUE.equals(propertyNamingStrategy.hasAnySetter(annotatedMethod))) {
                LinkedList linkedList8 = this._anySetters;
                if (linkedList8 == null) {
                    linkedList8 = new LinkedList();
                    this._anySetters = linkedList8;
                }
                linkedList8.add(annotatedMethod);
            }
        }
        Boolean bool3 = annotatedClass._nonStaticInnerClass;
        if (bool3 == null) {
            Class cls2 = annotatedClass._class;
            Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
            if (!Modifier.isStatic(cls2.getModifiers())) {
                if ((ClassUtil.isObjectOrPrimitive(cls2) ? null : cls2.getEnclosingClass()) != null) {
                    z = true;
                    bool3 = Boolean.valueOf(z);
                    annotatedClass._nonStaticInnerClass = bool3;
                }
            }
            z = false;
            bool3 = Boolean.valueOf(z);
            annotatedClass._nonStaticInnerClass = bool3;
        }
        if (!bool3.booleanValue() && this._useAnnotations) {
            for (AnnotatedConstructor annotatedConstructor : (List) annotatedClass._creators().cssRules) {
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList();
                }
                int length2 = annotatedConstructor._constructor.getParameterTypes().length;
                for (int i4 = 0; i4 < length2; i4++) {
                    _addCreatorParam(linkedHashMap, annotatedConstructor.getParameter(i4));
                }
            }
            for (AnnotatedMethod annotatedMethod2 : (List) annotatedClass._creators().idToElementMap) {
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList();
                }
                int length3 = annotatedMethod2.getRawParameterTypes().length;
                for (int i5 = 0; i5 < length3; i5++) {
                    _addCreatorParam(linkedHashMap, annotatedMethod2.getParameter(i5));
                }
            }
        }
        Iterator it3 = linkedHashMap.values().iterator();
        while (it3.hasNext()) {
            POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) it3.next();
            if (!POJOPropertyBuilder._anyVisible(pOJOPropertyBuilder._fields) && !POJOPropertyBuilder._anyVisible(pOJOPropertyBuilder._getters) && !POJOPropertyBuilder._anyVisible(pOJOPropertyBuilder._setters) && !POJOPropertyBuilder._anyVisible(pOJOPropertyBuilder._ctorParameters)) {
                it3.remove();
            } else if (POJOPropertyBuilder._anyIgnorals(pOJOPropertyBuilder._fields) || POJOPropertyBuilder._anyIgnorals(pOJOPropertyBuilder._getters) || POJOPropertyBuilder._anyIgnorals(pOJOPropertyBuilder._setters) || POJOPropertyBuilder._anyIgnorals(pOJOPropertyBuilder._ctorParameters)) {
                if (pOJOPropertyBuilder.isExplicitlyIncluded()) {
                    ProvidedValue providedValue5 = pOJOPropertyBuilder._fields;
                    if (providedValue5 != null) {
                        providedValue5 = providedValue5.withoutIgnored();
                    }
                    pOJOPropertyBuilder._fields = providedValue5;
                    ProvidedValue providedValue6 = pOJOPropertyBuilder._getters;
                    if (providedValue6 != null) {
                        providedValue6 = providedValue6.withoutIgnored();
                    }
                    pOJOPropertyBuilder._getters = providedValue6;
                    ProvidedValue providedValue7 = pOJOPropertyBuilder._setters;
                    if (providedValue7 != null) {
                        providedValue7 = providedValue7.withoutIgnored();
                    }
                    pOJOPropertyBuilder._setters = providedValue7;
                    ProvidedValue providedValue8 = pOJOPropertyBuilder._ctorParameters;
                    if (providedValue8 != null) {
                        providedValue8 = providedValue8.withoutIgnored();
                    }
                    pOJOPropertyBuilder._ctorParameters = providedValue8;
                    if (!pOJOPropertyBuilder.couldDeserialize()) {
                        pOJOPropertyBuilder.getName();
                    }
                } else {
                    it3.remove();
                    pOJOPropertyBuilder.getName();
                }
            }
        }
        boolean enabledIn2 = MapperFeature.INFER_PROPERTY_MUTATORS.enabledIn(j);
        for (POJOPropertyBuilder pOJOPropertyBuilder2 : linkedHashMap.values()) {
            pOJOPropertyBuilder2.getClass();
            JsonProperty.Access access = JsonProperty.Access.AUTO;
            PropertyNamingStrategy propertyNamingStrategy2 = pOJOPropertyBuilder2._annotationIntrospector;
            if (propertyNamingStrategy2 == null || (((providedValue = pOJOPropertyBuilder2._getters) == null || (findPropertyAccess = propertyNamingStrategy2.findPropertyAccess((AnnotatedMember) providedValue.providedValue)) == null || findPropertyAccess == access) && (((providedValue2 = pOJOPropertyBuilder2._fields) == null || (findPropertyAccess = propertyNamingStrategy2.findPropertyAccess((AnnotatedMember) providedValue2.providedValue)) == null || findPropertyAccess == access) && (((providedValue3 = pOJOPropertyBuilder2._ctorParameters) == null || (findPropertyAccess = propertyNamingStrategy2.findPropertyAccess((AnnotatedMember) providedValue3.providedValue)) == null || findPropertyAccess == access) && ((providedValue4 = pOJOPropertyBuilder2._setters) == null || (findPropertyAccess = propertyNamingStrategy2.findPropertyAccess((AnnotatedMember) providedValue4.providedValue)) == null || findPropertyAccess == access))))) {
                findPropertyAccess = null;
            }
            if (findPropertyAccess != null) {
                access = findPropertyAccess;
            }
            int i6 = POJOPropertyBuilder.AnonymousClass6.$SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[access.ordinal()];
            if (i6 == 1) {
                pOJOPropertyBuilder2._setters = null;
                pOJOPropertyBuilder2._ctorParameters = null;
            } else if (i6 != 2) {
                if (i6 != 3) {
                    ProvidedValue providedValue9 = pOJOPropertyBuilder2._getters;
                    if (providedValue9 != null) {
                        providedValue9 = providedValue9.withoutNonVisible();
                    }
                    pOJOPropertyBuilder2._getters = providedValue9;
                    ProvidedValue providedValue10 = pOJOPropertyBuilder2._ctorParameters;
                    if (providedValue10 != null) {
                        providedValue10 = providedValue10.withoutNonVisible();
                    }
                    pOJOPropertyBuilder2._ctorParameters = providedValue10;
                    if (!enabledIn2 || pOJOPropertyBuilder2._getters == null) {
                        ProvidedValue providedValue11 = pOJOPropertyBuilder2._fields;
                        if (providedValue11 != null) {
                            providedValue11 = providedValue11.withoutNonVisible();
                        }
                        pOJOPropertyBuilder2._fields = providedValue11;
                        ProvidedValue providedValue12 = pOJOPropertyBuilder2._setters;
                        if (providedValue12 != null) {
                            providedValue12 = providedValue12.withoutNonVisible();
                        }
                        pOJOPropertyBuilder2._setters = providedValue12;
                    }
                } else {
                    pOJOPropertyBuilder2._getters = null;
                    pOJOPropertyBuilder2._fields = null;
                }
            }
        }
        Iterator it4 = linkedHashMap.entrySet().iterator();
        LinkedList linkedList9 = null;
        while (it4.hasNext()) {
            POJOPropertyBuilder pOJOPropertyBuilder3 = (POJOPropertyBuilder) ((Map.Entry) it4.next()).getValue();
            Set _findExplicitNames = POJOPropertyBuilder._findExplicitNames(pOJOPropertyBuilder3._ctorParameters, POJOPropertyBuilder._findExplicitNames(pOJOPropertyBuilder3._setters, POJOPropertyBuilder._findExplicitNames(pOJOPropertyBuilder3._getters, POJOPropertyBuilder._findExplicitNames(pOJOPropertyBuilder3._fields, null))));
            if (_findExplicitNames == null) {
                _findExplicitNames = Collections.EMPTY_SET;
            }
            if (!_findExplicitNames.isEmpty()) {
                it4.remove();
                if (linkedList9 == null) {
                    linkedList9 = new LinkedList();
                }
                if (_findExplicitNames.size() == 1) {
                    linkedList9.add(new POJOPropertyBuilder(pOJOPropertyBuilder3, (PropertyName) _findExplicitNames.iterator().next()));
                } else {
                    HashMap hashMap = new HashMap();
                    Set set = _findExplicitNames;
                    pOJOPropertyBuilder3._explode(set, hashMap, pOJOPropertyBuilder3._fields);
                    pOJOPropertyBuilder3._explode(set, hashMap, pOJOPropertyBuilder3._getters);
                    pOJOPropertyBuilder3._explode(set, hashMap, pOJOPropertyBuilder3._setters);
                    pOJOPropertyBuilder3._explode(set, hashMap, pOJOPropertyBuilder3._ctorParameters);
                    linkedList9.addAll(hashMap.values());
                }
            }
        }
        if (linkedList9 != null) {
            Iterator it5 = linkedList9.iterator();
            while (it5.hasNext()) {
                POJOPropertyBuilder pOJOPropertyBuilder4 = (POJOPropertyBuilder) it5.next();
                String name2 = pOJOPropertyBuilder4.getName();
                POJOPropertyBuilder pOJOPropertyBuilder5 = (POJOPropertyBuilder) linkedHashMap.get(name2);
                if (pOJOPropertyBuilder5 == null) {
                    linkedHashMap.put(name2, pOJOPropertyBuilder4);
                } else {
                    ProvidedValue providedValue13 = pOJOPropertyBuilder5._fields;
                    ProvidedValue providedValue14 = pOJOPropertyBuilder4._fields;
                    if (providedValue13 == null) {
                        providedValue13 = providedValue14;
                    } else if (providedValue14 != null) {
                        providedValue13 = providedValue13.append(providedValue14);
                    }
                    pOJOPropertyBuilder5._fields = providedValue13;
                    ProvidedValue providedValue15 = pOJOPropertyBuilder5._ctorParameters;
                    ProvidedValue providedValue16 = pOJOPropertyBuilder4._ctorParameters;
                    if (providedValue15 == null) {
                        providedValue15 = providedValue16;
                    } else if (providedValue16 != null) {
                        providedValue15 = providedValue15.append(providedValue16);
                    }
                    pOJOPropertyBuilder5._ctorParameters = providedValue15;
                    ProvidedValue providedValue17 = pOJOPropertyBuilder5._getters;
                    ProvidedValue providedValue18 = pOJOPropertyBuilder4._getters;
                    if (providedValue17 == null) {
                        providedValue17 = providedValue18;
                    } else if (providedValue18 != null) {
                        providedValue17 = providedValue17.append(providedValue18);
                    }
                    pOJOPropertyBuilder5._getters = providedValue17;
                    ProvidedValue providedValue19 = pOJOPropertyBuilder5._setters;
                    ProvidedValue providedValue20 = pOJOPropertyBuilder4._setters;
                    if (providedValue19 == null) {
                        providedValue19 = providedValue20;
                    } else if (providedValue20 != null) {
                        providedValue19 = providedValue19.append(providedValue20);
                    }
                    pOJOPropertyBuilder5._setters = providedValue19;
                }
                LinkedList linkedList10 = this._creatorProperties;
                if (linkedList10 != null) {
                    String str = pOJOPropertyBuilder4._internalName._simpleName;
                    int size = linkedList10.size();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= size) {
                            break;
                        }
                        if (((POJOPropertyBuilder) linkedList10.get(i7))._internalName._simpleName.equals(str)) {
                            linkedList10.set(i7, pOJOPropertyBuilder4);
                            break;
                        }
                        i7++;
                    }
                }
            }
        }
        for (AnnotatedMember annotatedMember : annotatedClass._fields()) {
            _doAddInjectable(propertyNamingStrategy.findInjectableValue(annotatedMember), annotatedMember);
        }
        Iterator it6 = annotatedClass._methods().iterator();
        while (it6.hasNext()) {
            AnnotatedMethod annotatedMethod3 = (AnnotatedMethod) it6.next();
            if (annotatedMethod3.getRawParameterTypes().length == 1) {
                _doAddInjectable(propertyNamingStrategy.findInjectableValue(annotatedMethod3), annotatedMethod3);
            }
        }
        for (POJOPropertyBuilder pOJOPropertyBuilder6 : linkedHashMap.values()) {
            ProvidedValue providedValue21 = pOJOPropertyBuilder6._getters;
            ProvidedValue providedValue22 = pOJOPropertyBuilder6._fields;
            if (providedValue21 != null) {
                ProvidedValue providedValue23 = pOJOPropertyBuilder6._ctorParameters;
                ProvidedValue providedValue24 = pOJOPropertyBuilder6._setters;
                ProvidedValue[] providedValueArr = new ProvidedValue[4];
                providedValueArr[i3] = providedValue21;
                providedValueArr[1] = providedValue22;
                providedValueArr[2] = providedValue23;
                providedValueArr[3] = providedValue24;
                i2 = i3;
                pOJOPropertyBuilder6._getters = POJOPropertyBuilder._applyAnnotations(pOJOPropertyBuilder6._getters, POJOPropertyBuilder._mergeAnnotations(i2, providedValueArr));
            } else {
                i2 = i3;
                if (providedValue22 != null) {
                    ProvidedValue providedValue25 = pOJOPropertyBuilder6._ctorParameters;
                    ProvidedValue providedValue26 = pOJOPropertyBuilder6._setters;
                    ProvidedValue[] providedValueArr2 = new ProvidedValue[3];
                    providedValueArr2[i2] = providedValue22;
                    providedValueArr2[1] = providedValue25;
                    providedValueArr2[2] = providedValue26;
                    pOJOPropertyBuilder6._fields = POJOPropertyBuilder._applyAnnotations(pOJOPropertyBuilder6._fields, POJOPropertyBuilder._mergeAnnotations(i2, providedValueArr2));
                }
            }
            i3 = i2;
        }
        int i8 = i3;
        Object findNamingStrategy = propertyNamingStrategy.findNamingStrategy(annotatedClass);
        if (findNamingStrategy != null && (cls = (Class) findNamingStrategy) != PropertyNamingStrategy.class) {
            if (!PropertyNamingStrategy.class.isAssignableFrom(cls)) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m(cls.getName(), "; expected Class<PropertyNamingStrategy>", "AnnotationIntrospector returned Class ");
                return;
            } else if (ClassUtil.createInstance(cls, serializationConfig.canOverrideAccessModifiers()) != null) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                return;
            }
        }
        for (POJOPropertyBuilder pOJOPropertyBuilder7 : linkedHashMap.values()) {
            ProvidedValue providedValue27 = pOJOPropertyBuilder7._fields;
            if (providedValue27 != null) {
                providedValue27 = providedValue27.trimByVisibility();
            }
            pOJOPropertyBuilder7._fields = providedValue27;
            ProvidedValue providedValue28 = pOJOPropertyBuilder7._getters;
            if (providedValue28 != null) {
                providedValue28 = providedValue28.trimByVisibility();
            }
            pOJOPropertyBuilder7._getters = providedValue28;
            ProvidedValue providedValue29 = pOJOPropertyBuilder7._setters;
            if (providedValue29 != null) {
                providedValue29 = providedValue29.trimByVisibility();
            }
            pOJOPropertyBuilder7._setters = providedValue29;
            ProvidedValue providedValue30 = pOJOPropertyBuilder7._ctorParameters;
            if (providedValue30 != null) {
                providedValue30 = providedValue30.trimByVisibility();
            }
            pOJOPropertyBuilder7._ctorParameters = providedValue30;
        }
        if (MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME.enabledIn(j)) {
            Iterator it7 = linkedHashMap.entrySet().iterator();
            while (it7.hasNext()) {
                ((POJOPropertyBuilder) ((Map.Entry) it7.next()).getValue()).getAccessor();
            }
        }
        Boolean findSerializationSortAlphabetically = propertyNamingStrategy.findSerializationSortAlphabetically(annotatedClass);
        boolean enabledIn3 = findSerializationSortAlphabetically == null ? MapperFeature.SORT_PROPERTIES_ALPHABETICALLY.enabledIn(j) : findSerializationSortAlphabetically.booleanValue();
        Iterator it8 = linkedHashMap.values().iterator();
        while (true) {
            if (it8.hasNext()) {
                if (((POJOPropertyBuilder) it8.next()).getMetadata()._index != null) {
                    i = 1;
                    break;
                }
            } else {
                i = i8;
                break;
            }
        }
        String[] findSerializationPropertyOrder = propertyNamingStrategy.findSerializationPropertyOrder(annotatedClass);
        if (enabledIn3 || i != 0 || this._creatorProperties != null || findSerializationPropertyOrder != null) {
            int size2 = linkedHashMap.size();
            Map treeMap = enabledIn3 ? new TreeMap() : new LinkedHashMap(size2 + size2);
            for (POJOPropertyBuilder pOJOPropertyBuilder8 : linkedHashMap.values()) {
                treeMap.put(pOJOPropertyBuilder8.getName(), pOJOPropertyBuilder8);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(size2 + size2);
            if (findSerializationPropertyOrder != null) {
                int length4 = findSerializationPropertyOrder.length;
                for (int i9 = i8; i9 < length4; i9++) {
                    String str2 = findSerializationPropertyOrder[i9];
                    POJOPropertyBuilder pOJOPropertyBuilder9 = (POJOPropertyBuilder) treeMap.remove(str2);
                    if (pOJOPropertyBuilder9 == null) {
                        Iterator it9 = linkedHashMap.values().iterator();
                        while (true) {
                            if (!it9.hasNext()) {
                                break;
                            }
                            POJOPropertyBuilder pOJOPropertyBuilder10 = (POJOPropertyBuilder) it9.next();
                            if (str2.equals(pOJOPropertyBuilder10._internalName._simpleName)) {
                                str2 = pOJOPropertyBuilder10.getName();
                                pOJOPropertyBuilder9 = pOJOPropertyBuilder10;
                                break;
                            }
                        }
                    }
                    if (pOJOPropertyBuilder9 != null) {
                        linkedHashMap2.put(str2, pOJOPropertyBuilder9);
                    }
                }
            }
            if (i != 0) {
                TreeMap treeMap2 = new TreeMap();
                Iterator it10 = treeMap.entrySet().iterator();
                while (it10.hasNext()) {
                    POJOPropertyBuilder pOJOPropertyBuilder11 = (POJOPropertyBuilder) ((Map.Entry) it10.next()).getValue();
                    Integer num = pOJOPropertyBuilder11.getMetadata()._index;
                    if (num != null) {
                        treeMap2.put(num, pOJOPropertyBuilder11);
                        it10.remove();
                    }
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder12 : treeMap2.values()) {
                    linkedHashMap2.put(pOJOPropertyBuilder12.getName(), pOJOPropertyBuilder12);
                }
            }
            if (this._creatorProperties != null && (!enabledIn3 || MapperFeature.SORT_CREATOR_PROPERTIES_FIRST.enabledIn(j))) {
                if (enabledIn3) {
                    TreeMap treeMap3 = new TreeMap();
                    Iterator it11 = this._creatorProperties.iterator();
                    while (it11.hasNext()) {
                        POJOPropertyBuilder pOJOPropertyBuilder13 = (POJOPropertyBuilder) it11.next();
                        treeMap3.put(pOJOPropertyBuilder13.getName(), pOJOPropertyBuilder13);
                    }
                    collection = treeMap3.values();
                } else {
                    collection = this._creatorProperties;
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder14 : collection) {
                    String name3 = pOJOPropertyBuilder14.getName();
                    if (treeMap.containsKey(name3)) {
                        linkedHashMap2.put(name3, pOJOPropertyBuilder14);
                    }
                }
            }
            linkedHashMap2.putAll(treeMap);
            linkedHashMap.clear();
            linkedHashMap.putAll(linkedHashMap2);
        }
        this._properties = linkedHashMap;
        this._collected = true;
    }

    public final void reportProblem(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + str);
    }

    public final String _checkRenameByField(String str) {
        return str;
    }
}
