package com.fasterxml.jackson.databind.ser.std;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import j$.util.DesugarTimeZone;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DateTimeSerializerBase extends StdScalarSerializer implements ContextualSerializer {
    public final DateFormat _customFormat;
    public final AtomicReference _reusedCustomFormat;
    public final Boolean _useTimestamp;

    public DateTimeSerializerBase(Class cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this._useTimestamp = bool;
        this._customFormat = dateFormat;
        this._reusedCustomFormat = dateFormat == null ? null : new AtomicReference();
    }

    public final boolean _asTimestamp(SerializerProvider serializerProvider) {
        Boolean bool = this._useTimestamp;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this._customFormat == null) {
            if (serializerProvider != null) {
                return serializerProvider._config.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Null SerializerProvider passed for ".concat(this._handledType.getName()));
        }
        return false;
    }

    public final void _serializeAsString(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        DateFormat dateFormat = this._customFormat;
        if (dateFormat == null) {
            serializerProvider.getClass();
            if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)) {
                jsonGenerator.writeNumber(date.getTime());
                return;
            } else {
                jsonGenerator.writeString(serializerProvider._dateFormat().format(date));
                return;
            }
        }
        AtomicReference atomicReference = this._reusedCustomFormat;
        DateFormat dateFormat2 = (DateFormat) atomicReference.getAndSet(null);
        if (dateFormat2 == null) {
            dateFormat2 = (DateFormat) dateFormat.clone();
        }
        jsonGenerator.writeString(dateFormat2.format(date));
        while (!atomicReference.compareAndSet(null, dateFormat2) && atomicReference.get() == null) {
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        Class cls = this._handledType;
        JsonFormat.Value findFormatOverrides = StdSerializer.findFormatOverrides(serializerProvider, beanProperty, cls);
        SerializationConfig serializationConfig = serializerProvider._config;
        if (findFormatOverrides != null) {
            String str = findFormatOverrides._timezoneStr;
            Locale locale = findFormatOverrides._locale;
            String str2 = findFormatOverrides._pattern;
            JsonFormat.Shape shape = findFormatOverrides._shape;
            TimeZone timeZone = null;
            if (shape.isNumeric()) {
                return withFormat(Boolean.TRUE, null);
            }
            if (str2 != null && str2.length() > 0) {
                if (locale == null) {
                    locale = serializationConfig._base._locale;
                }
                DateFormat simpleDateFormat = new SimpleDateFormat(str2, locale);
                if (findFormatOverrides.hasTimeZone()) {
                    TimeZone timeZone2 = findFormatOverrides._timezone;
                    if (timeZone2 != null) {
                        timeZone = timeZone2;
                    } else if (str != null) {
                        timeZone = DesugarTimeZone.getTimeZone(str);
                        findFormatOverrides._timezone = timeZone;
                    }
                } else {
                    BaseSettings baseSettings = serializationConfig._base;
                    timeZone = BaseSettings.DEFAULT_TIMEZONE;
                }
                simpleDateFormat.setTimeZone(timeZone);
                return withFormat(Boolean.FALSE, simpleDateFormat);
            }
            boolean z = locale != null;
            boolean hasTimeZone = findFormatOverrides.hasTimeZone();
            boolean z2 = shape == JsonFormat.Shape.STRING;
            if (z || hasTimeZone || z2) {
                DateFormat dateFormat = serializationConfig._base._dateFormat;
                if (dateFormat instanceof StdDateFormat) {
                    StdDateFormat stdDateFormat = (StdDateFormat) dateFormat;
                    if (locale != null && !locale.equals(stdDateFormat._locale)) {
                        stdDateFormat = new StdDateFormat(stdDateFormat._timezone, locale, stdDateFormat._lenient);
                    }
                    if (findFormatOverrides.hasTimeZone()) {
                        TimeZone timeZone3 = findFormatOverrides._timezone;
                        if (timeZone3 != null) {
                            timeZone = timeZone3;
                        } else if (str != null) {
                            timeZone = DesugarTimeZone.getTimeZone(str);
                            findFormatOverrides._timezone = timeZone;
                        }
                        if (timeZone == null) {
                            timeZone = StdDateFormat.DEFAULT_TIMEZONE;
                        }
                        TimeZone timeZone4 = stdDateFormat._timezone;
                        if (timeZone != timeZone4 && !timeZone.equals(timeZone4)) {
                            stdDateFormat = new StdDateFormat(timeZone, stdDateFormat._locale, stdDateFormat._lenient);
                        }
                    }
                    return withFormat(Boolean.FALSE, stdDateFormat);
                }
                if (!(dateFormat instanceof SimpleDateFormat)) {
                    String m = Animation.CC.m("Configured `DateFormat` (", dateFormat.getClass().getName(), ") not a `SimpleDateFormat`; cannot configure `Locale` or `TimeZone`");
                    if (cls != null) {
                        serializerProvider.getTypeFactory()._fromAny(null, cls, TypeFactory.EMPTY_BINDINGS);
                    }
                    serializerProvider.reportBadDefinition(m);
                    throw null;
                }
                SimpleDateFormat simpleDateFormat2 = (SimpleDateFormat) dateFormat;
                DateFormat simpleDateFormat3 = z ? new SimpleDateFormat(simpleDateFormat2.toPattern(), locale) : (SimpleDateFormat) simpleDateFormat2.clone();
                TimeZone timeZone5 = findFormatOverrides._timezone;
                if (timeZone5 != null) {
                    timeZone = timeZone5;
                } else if (str != null) {
                    timeZone = DesugarTimeZone.getTimeZone(str);
                    findFormatOverrides._timezone = timeZone;
                }
                if (timeZone != null && !timeZone.equals(simpleDateFormat3.getTimeZone())) {
                    simpleDateFormat3.setTimeZone(timeZone);
                }
                return withFormat(Boolean.FALSE, simpleDateFormat3);
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return false;
    }

    public abstract DateTimeSerializerBase withFormat(Boolean bool, DateFormat dateFormat);
}
