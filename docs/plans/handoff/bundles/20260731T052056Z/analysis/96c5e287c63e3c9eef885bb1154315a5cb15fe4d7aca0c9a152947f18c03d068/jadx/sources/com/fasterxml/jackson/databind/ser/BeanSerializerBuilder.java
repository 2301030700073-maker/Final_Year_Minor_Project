package com.fasterxml.jackson.databind.ser;

import coil3.ImageLoader$Builder;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Member;
import java.util.Collections;
import java.util.List;
import okhttp3.Cache;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BeanSerializerBuilder {
    public static final BeanPropertyWriter[] NO_PROPERTIES = new BeanPropertyWriter[0];
    public ImageLoader$Builder _anyGetter;
    public final BasicBeanDescription _beanDesc;
    public SerializationConfig _config;
    public Object _filterId;
    public BeanPropertyWriter[] _filteredProperties;
    public Cache.RealCacheRequest _objectIdWriter;
    public List _properties = Collections.EMPTY_LIST;
    public AnnotatedMember _typeId;

    public BeanSerializerBuilder(BasicBeanDescription basicBeanDescription) {
        this._beanDesc = basicBeanDescription;
    }

    public final BeanSerializer build() {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this._typeId != null && MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS.enabledIn(this._config._mapperFeatures)) {
            AnnotatedMember annotatedMember = this._typeId;
            boolean enabledIn = MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS.enabledIn(this._config._mapperFeatures);
            Member member = annotatedMember.getMember();
            if (member != null) {
                ClassUtil.checkAndFixAccess(member, enabledIn);
            }
        }
        ImageLoader$Builder imageLoader$Builder = this._anyGetter;
        if (imageLoader$Builder != null) {
            SerializationConfig serializationConfig = this._config;
            AnnotatedMember annotatedMember2 = (AnnotatedMember) imageLoader$Builder.defaults;
            boolean enabledIn2 = MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS.enabledIn(serializationConfig._mapperFeatures);
            Member member2 = annotatedMember2.getMember();
            if (member2 != null) {
                ClassUtil.checkAndFixAccess(member2, enabledIn2);
            }
        }
        List list = this._properties;
        if (list == null || list.isEmpty()) {
            if (this._anyGetter == null && this._objectIdWriter == null) {
                return null;
            }
            beanPropertyWriterArr = NO_PROPERTIES;
        } else {
            List list2 = this._properties;
            beanPropertyWriterArr = (BeanPropertyWriter[]) list2.toArray(new BeanPropertyWriter[list2.size()]);
            if (MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS.enabledIn(this._config._mapperFeatures)) {
                for (BeanPropertyWriter beanPropertyWriter : beanPropertyWriterArr) {
                    SerializationConfig serializationConfig2 = this._config;
                    AnnotatedMember annotatedMember3 = beanPropertyWriter._member;
                    boolean enabledIn3 = MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS.enabledIn(serializationConfig2._mapperFeatures);
                    Member member3 = annotatedMember3.getMember();
                    if (member3 != null) {
                        ClassUtil.checkAndFixAccess(member3, enabledIn3);
                    }
                }
            }
        }
        BeanPropertyWriter[] beanPropertyWriterArr2 = this._filteredProperties;
        if (beanPropertyWriterArr2 == null || beanPropertyWriterArr2.length == this._properties.size()) {
            return new BeanSerializer(this._beanDesc._type, this, beanPropertyWriterArr, this._filteredProperties);
        }
        throw new IllegalStateException(String.format("Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)", Integer.valueOf(this._properties.size()), Integer.valueOf(this._filteredProperties.length)));
    }
}
