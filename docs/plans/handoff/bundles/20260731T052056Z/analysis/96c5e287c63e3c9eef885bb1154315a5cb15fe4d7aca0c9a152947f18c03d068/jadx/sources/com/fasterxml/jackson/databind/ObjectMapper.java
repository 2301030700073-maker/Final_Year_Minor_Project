package com.fasterxml.jackson.databind;

import androidx.fragment.app.LogWriter;
import androidx.transition.Transition;
import androidx.work.impl.AutoMigration_14_15;
import coil3.ImageLoader$Builder;
import coil3.size.ViewSizeResolver$CC;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.io.ContentReference;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.TextBuffer;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionConfigs;
import com.fasterxml.jackson.databind.cfg.MutableCoercionConfig;
import com.fasterxml.jackson.databind.deser.BeanDeserializerFactory;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker$Std;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.ser.BeanSerializerFactory;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider$Impl;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import com.hcaptcha.sdk.HCaptchaHtml;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.InitializedLazyImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ObjectMapper extends ObjectCodec implements Serializable {
    public static final BaseSettings DEFAULT_BASE;
    public final DeserializationConfig _deserializationConfig;
    public final MappingJsonFactory _jsonFactory;
    public final SerializationConfig _serializationConfig;
    public final BeanSerializerFactory _serializerFactory;
    public final DefaultSerializerProvider$Impl _serializerProvider;

    static {
        JacksonAnnotationIntrospector jacksonAnnotationIntrospector = new JacksonAnnotationIntrospector();
        jacksonAnnotationIntrospector._annotationsInside = new LRUMap(48, 48);
        jacksonAnnotationIntrospector._cfgConstructorPropertiesImpliesCreator = true;
        DEFAULT_BASE = new BaseSettings(null, jacksonAnnotationIntrospector, TypeFactory.instance, StdDateFormat.instance, Locale.getDefault(), Base64Variants.MIME_NO_LINEFEEDS, new HCaptchaHtml());
    }

    public ObjectMapper(int i) {
        new ConcurrentHashMap(64, 0.6f, 2);
        MappingJsonFactory mappingJsonFactory = new MappingJsonFactory();
        System.currentTimeMillis();
        new AtomicReference(new AutoMigration_14_15(22));
        System.currentTimeMillis();
        new AtomicReference(new Transition.AnonymousClass1(21, false));
        mappingJsonFactory._factoryFeatures = JsonFactory.DEFAULT_FACTORY_FEATURE_FLAGS;
        mappingJsonFactory._generatorFeatures = JsonFactory.DEFAULT_GENERATOR_FEATURE_FLAGS;
        mappingJsonFactory._rootValueSeparator = JsonFactory.DEFAULT_ROOT_VALUE_SEPARATOR;
        this._jsonFactory = mappingJsonFactory;
        StdSubtypeResolver stdSubtypeResolver = new StdSubtypeResolver();
        RootNameLookup rootNameLookup = new RootNameLookup();
        rootNameLookup._rootNames = new LRUMap(20, 200);
        TypeBase[] typeBaseArr = TypeFactory.NO_TYPES;
        SimpleMixInResolver simpleMixInResolver = new SimpleMixInResolver();
        BasicClassIntrospector basicClassIntrospector = new BasicClassIntrospector();
        BaseSettings baseSettings = DEFAULT_BASE;
        BaseSettings baseSettings2 = baseSettings._classIntrospector == basicClassIntrospector ? baseSettings : new BaseSettings(basicClassIntrospector, baseSettings._annotationIntrospector, baseSettings._typeFactory, baseSettings._dateFormat, baseSettings._locale, baseSettings._defaultBase64, baseSettings._accessorNaming);
        JsonInclude.Value value = JsonInclude.Value.EMPTY;
        int i2 = JsonSetter.Value.$r8$clinit;
        VisibilityChecker$Std visibilityChecker$Std = VisibilityChecker$Std.DEFAULT;
        InitializedLazyImpl initializedLazyImpl = new InitializedLazyImpl();
        initializedLazyImpl.value = value;
        CoercionAction[] coercionActionArr = new CoercionAction[MutableCoercionConfig.INPUT_SHAPE_COUNT];
        CoercionConfigs coercionConfigs = new CoercionConfigs();
        this._serializationConfig = new SerializationConfig(baseSettings2, stdSubtypeResolver, simpleMixInResolver, rootNameLookup, initializedLazyImpl);
        this._deserializationConfig = new DeserializationConfig(baseSettings2, stdSubtypeResolver, simpleMixInResolver, rootNameLookup, initializedLazyImpl, coercionConfigs);
        SerializationConfig serializationConfig = this._serializationConfig;
        MapperFeature mapperFeature = MapperFeature.SORT_PROPERTIES_ALPHABETICALLY;
        if (mapperFeature.enabledIn(serializationConfig._mapperFeatures)) {
            this._serializationConfig = (SerializationConfig) this._serializationConfig.without(mapperFeature);
            this._deserializationConfig = (DeserializationConfig) this._deserializationConfig.without(mapperFeature);
        }
        this._serializerProvider = new DefaultSerializerProvider$Impl();
        int i3 = BeanDeserializerFactory.$r8$clinit;
        new HashMap(8);
        new ConcurrentHashMap(Math.min(64, 500), 0.8f, 4);
        this._serializerFactory = BeanSerializerFactory.instance;
    }

    public final void _writeValueAndClose(WriterBasedJsonGenerator writerBasedJsonGenerator, Object obj) {
        SerializationFeature serializationFeature = SerializationFeature.CLOSE_CLOSEABLE;
        SerializationConfig serializationConfig = this._serializationConfig;
        boolean isEnabled = serializationConfig.isEnabled(serializationFeature);
        BeanSerializerFactory beanSerializerFactory = this._serializerFactory;
        DefaultSerializerProvider$Impl defaultSerializerProvider$Impl = this._serializerProvider;
        if (!isEnabled || !(obj instanceof Closeable)) {
            try {
                defaultSerializerProvider$Impl.getClass();
                new DefaultSerializerProvider$Impl(defaultSerializerProvider$Impl, serializationConfig, beanSerializerFactory).serializeValue(writerBasedJsonGenerator, obj);
                writerBasedJsonGenerator.close();
                return;
            } catch (Exception e) {
                Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
                writerBasedJsonGenerator.disable(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
                try {
                    writerBasedJsonGenerator.close();
                } catch (Exception e2) {
                    e.addSuppressed(e2);
                }
                if (e instanceof IOException) {
                    throw ((IOException) e);
                }
                ClassUtil.throwIfRTE(e);
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return;
            }
        }
        Closeable closeable = (Closeable) obj;
        try {
            defaultSerializerProvider$Impl.getClass();
            new DefaultSerializerProvider$Impl(defaultSerializerProvider$Impl, serializationConfig, beanSerializerFactory).serializeValue(writerBasedJsonGenerator, obj);
        } catch (Exception e3) {
            e = e3;
        }
        try {
            closeable.close();
            writerBasedJsonGenerator.close();
        } catch (Exception e4) {
            e = e4;
            closeable = null;
            Annotation[] annotationArr2 = ClassUtil.NO_ANNOTATIONS;
            writerBasedJsonGenerator.disable(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
            try {
                writerBasedJsonGenerator.close();
            } catch (Exception e5) {
                e.addSuppressed(e5);
            }
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception e6) {
                    e.addSuppressed(e6);
                }
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            ClassUtil.throwIfRTE(e);
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
        }
    }

    public final WriterBasedJsonGenerator createGenerator(LogWriter logWriter) {
        MappingJsonFactory mappingJsonFactory = this._jsonFactory;
        mappingJsonFactory.getClass();
        WriterBasedJsonGenerator writerBasedJsonGenerator = new WriterBasedJsonGenerator(new ImageLoader$Builder(mappingJsonFactory._getBufferRecycler(), new ContentReference(logWriter)), mappingJsonFactory._generatorFeatures, logWriter);
        SerializedString serializedString = mappingJsonFactory._rootValueSeparator;
        if (serializedString != JsonFactory.DEFAULT_ROOT_VALUE_SEPARATOR) {
            writerBasedJsonGenerator._rootValueSeparator = serializedString;
        }
        SerializationConfig serializationConfig = this._serializationConfig;
        serializationConfig.getClass();
        SerializationFeature serializationFeature = SerializationFeature.INDENT_OUTPUT;
        int i = serializationConfig._serFeatures;
        if (serializationFeature.enabledIn(i) && writerBasedJsonGenerator._cfgPrettyPrinter == null) {
            PrettyPrinter prettyPrinter = serializationConfig._defaultPrettyPrinter;
            if (prettyPrinter instanceof DefaultPrettyPrinter) {
                prettyPrinter = new DefaultPrettyPrinter((DefaultPrettyPrinter) prettyPrinter);
            }
            if (prettyPrinter != null) {
                writerBasedJsonGenerator._cfgPrettyPrinter = prettyPrinter;
            }
        }
        boolean enabledIn = SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN.enabledIn(i);
        if (enabledIn) {
            int mask = enabledIn ? JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN.getMask() : 0;
            int i2 = mask;
            int i3 = writerBasedJsonGenerator._features;
            int i4 = (mask & i2) | ((~i2) & i3);
            int i5 = i3 ^ i4;
            if (i5 != 0) {
                writerBasedJsonGenerator._features = i4;
                if ((GeneratorBase.DERIVED_FEATURES_MASK & i5) != 0) {
                    writerBasedJsonGenerator._cfgNumbersAsStrings = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i4);
                    JsonGenerator.Feature feature = JsonGenerator.Feature.ESCAPE_NON_ASCII;
                    if (feature.enabledIn(i5)) {
                        if (feature.enabledIn(i4)) {
                            writerBasedJsonGenerator._maximumNonEscapedChar = 127;
                        } else {
                            writerBasedJsonGenerator._maximumNonEscapedChar = 0;
                        }
                    }
                    JsonGenerator.Feature feature2 = JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION;
                    if (feature2.enabledIn(i5)) {
                        boolean enabledIn2 = feature2.enabledIn(i4);
                        JsonWriteContext jsonWriteContext = writerBasedJsonGenerator._writeContext;
                        if (!enabledIn2) {
                            jsonWriteContext._dups = null;
                            writerBasedJsonGenerator._writeContext = jsonWriteContext;
                        } else if (((ImageLoader$Builder) jsonWriteContext._dups) == null) {
                            jsonWriteContext._dups = new ImageLoader$Builder(22, writerBasedJsonGenerator);
                            writerBasedJsonGenerator._writeContext = jsonWriteContext;
                        }
                    }
                }
                writerBasedJsonGenerator._cfgUnqNames = !JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(i4);
            }
        }
        return writerBasedJsonGenerator;
    }

    public final String writeValueAsString(Object obj) {
        char[] cArr;
        LogWriter logWriter = new LogWriter(this._jsonFactory._getBufferRecycler());
        try {
            _writeValueAndClose(createGenerator(logWriter), obj);
            TextBuffer textBuffer = (TextBuffer) logWriter.mBuilder;
            String contentsAsString = textBuffer.contentsAsString();
            textBuffer._inputStart = -1;
            textBuffer._currentSize = 0;
            textBuffer._resultArray = null;
            if (textBuffer._hasSegments) {
                textBuffer._hasSegments = false;
                textBuffer._segments.clear();
                textBuffer._segmentSize = 0;
                textBuffer._currentSize = 0;
            }
            BufferRecycler bufferRecycler = textBuffer._allocator;
            if (bufferRecycler != null && (cArr = textBuffer._currentSegment) != null) {
                textBuffer._currentSegment = null;
                bufferRecycler._charBuffers.set(2, cArr);
            }
            return contentsAsString;
        } catch (JsonProcessingException e) {
            throw e;
        } catch (IOException e2) {
            throw new JsonMappingException(null, ViewSizeResolver$CC.m("Unexpected IOException (of type ", e2.getClass().getName(), "): ", ClassUtil.exceptionMessage(e2)));
        }
    }
}
