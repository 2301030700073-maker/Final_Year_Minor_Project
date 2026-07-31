package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.hcaptcha.sdk.HCaptchaHtml;
import j$.util.DesugarTimeZone;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BaseSettings implements Serializable {
    public static final TimeZone DEFAULT_TIMEZONE = DesugarTimeZone.getTimeZone("UTC");
    public final HCaptchaHtml _accessorNaming;
    public final JacksonAnnotationIntrospector _annotationIntrospector;
    public final Annotated _classIntrospector;
    public final DateFormat _dateFormat;
    public final Base64Variant _defaultBase64;
    public final Locale _locale;
    public final TypeFactory _typeFactory;

    public BaseSettings(BasicClassIntrospector basicClassIntrospector, JacksonAnnotationIntrospector jacksonAnnotationIntrospector, TypeFactory typeFactory, DateFormat dateFormat, Locale locale, Base64Variant base64Variant, HCaptchaHtml hCaptchaHtml) {
        this._classIntrospector = basicClassIntrospector;
        this._annotationIntrospector = jacksonAnnotationIntrospector;
        this._typeFactory = typeFactory;
        this._dateFormat = dateFormat;
        this._locale = locale;
        this._defaultBase64 = base64Variant;
        this._accessorNaming = hCaptchaHtml;
    }
}
