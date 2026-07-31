package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FilteredBeanPropertyWriter$MultiView extends BeanPropertyWriter {
    public final /* synthetic */ int $r8$classId;
    public final BeanPropertyWriter _delegate;
    public final Serializable _views;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredBeanPropertyWriter$MultiView(BeanPropertyWriter beanPropertyWriter, Serializable serializable, int i) {
        super(beanPropertyWriter, beanPropertyWriter._name);
        this.$r8$classId = i;
        this._delegate = beanPropertyWriter;
        this._views = serializable;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void assignNullSerializer(JsonSerializer jsonSerializer) {
        switch (this.$r8$classId) {
            case 0:
                this._delegate.assignNullSerializer(jsonSerializer);
                break;
            default:
                this._delegate.assignNullSerializer(jsonSerializer);
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void assignSerializer(JsonSerializer jsonSerializer) {
        switch (this.$r8$classId) {
            case 0:
                this._delegate.assignSerializer(jsonSerializer);
                break;
            default:
                this._delegate.assignSerializer(jsonSerializer);
                break;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Serializable, java.lang.Class[]] */
    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final BeanPropertyWriter rename(NameTransformer nameTransformer) {
        int i = this.$r8$classId;
        Object obj = this._views;
        BeanPropertyWriter beanPropertyWriter = this._delegate;
        switch (i) {
            case 0:
                return new FilteredBeanPropertyWriter$MultiView(beanPropertyWriter.rename(nameTransformer), (Class[]) obj, 0);
            default:
                return new FilteredBeanPropertyWriter$MultiView(beanPropertyWriter.rename(nameTransformer), (Class) obj, 1);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        int i = this.$r8$classId;
        BeanPropertyWriter beanPropertyWriter = this._delegate;
        switch (i) {
            case 0:
                serializerProvider.getClass();
                beanPropertyWriter.serializeAsElement(obj, jsonGenerator, serializerProvider);
                break;
            default:
                serializerProvider.getClass();
                beanPropertyWriter.serializeAsElement(obj, jsonGenerator, serializerProvider);
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public final void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        int i = this.$r8$classId;
        BeanPropertyWriter beanPropertyWriter = this._delegate;
        switch (i) {
            case 0:
                serializerProvider.getClass();
                beanPropertyWriter.serializeAsField(obj, jsonGenerator, serializerProvider);
                break;
            default:
                serializerProvider.getClass();
                beanPropertyWriter.serializeAsField(obj, jsonGenerator, serializerProvider);
                break;
        }
    }
}
