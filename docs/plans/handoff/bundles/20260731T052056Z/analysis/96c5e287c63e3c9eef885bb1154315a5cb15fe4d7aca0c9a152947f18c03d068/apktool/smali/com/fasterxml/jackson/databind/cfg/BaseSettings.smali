.class public final Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;


# instance fields
.field public final _accessorNaming:Lcom/hcaptcha/sdk/HCaptchaHtml;

.field public final _annotationIntrospector:Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;

.field public final _classIntrospector:Lcom/fasterxml/jackson/databind/introspect/Annotated;

.field public final _dateFormat:Ljava/text/DateFormat;

.field public final _defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

.field public final _locale:Ljava/util/Locale;

.field public final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/text/DateFormat;Ljava/util/Locale;Lcom/fasterxml/jackson/core/Base64Variant;Lcom/hcaptcha/sdk/HCaptchaHtml;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_accessorNaming:Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 17
    .line 18
    return-void
.end method
