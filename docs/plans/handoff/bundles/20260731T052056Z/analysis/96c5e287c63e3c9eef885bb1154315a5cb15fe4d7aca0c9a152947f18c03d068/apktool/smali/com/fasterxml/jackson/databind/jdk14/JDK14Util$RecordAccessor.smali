.class public final Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

.field public static final PROBLEM:Ljava/lang/RuntimeException;


# instance fields
.field public final RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

.field public final RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    move-object v2, v1

    .line 8
    move-object v1, v0

    .line 9
    move-object v0, v2

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    :goto_0
    sput-object v0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->INSTANCE:Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    .line 13
    .line 14
    sput-object v1, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->PROBLEM:Ljava/lang/RuntimeException;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    const-class v1, Ljava/lang/Class;

    .line 6
    .line 7
    const-string v2, "getRecordComponents"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    const-string v1, "java.lang.reflect.RecordComponent"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "getName"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    .line 28
    .line 29
    const-string p0, "getType"

    .line 30
    .line 31
    invoke-virtual {v1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "Failed to access Methods needed to support `java.lang.Record`: ("

    .line 49
    .line 50
    const-string v4, ") "

    .line 51
    .line 52
    invoke-static {v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method
