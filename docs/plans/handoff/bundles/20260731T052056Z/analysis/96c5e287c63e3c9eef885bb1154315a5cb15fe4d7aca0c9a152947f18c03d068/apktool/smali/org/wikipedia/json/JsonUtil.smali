.class public final Lorg/wikipedia/json/JsonUtil;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final json:Lkotlinx/serialization/json/JsonImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 7
    .line 8
    iget-boolean v4, v1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 9
    .line 10
    iget-object v5, v1, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v9, v1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 13
    .line 14
    iget-boolean v8, v1, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    .line 15
    .line 16
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->serializersModule:Lorg/wikipedia/login/LoginClient;

    .line 17
    .line 18
    iget-boolean v10, v1, Lkotlinx/serialization/json/JsonConfiguration;->exceptionsWithDebugInfo:Z

    .line 19
    .line 20
    const-string v1, "    "

    .line 21
    .line 22
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v2, Lkotlinx/serialization/json/JsonConfiguration;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const-string v7, "$schema"

    .line 32
    .line 33
    move v6, v3

    .line 34
    invoke-direct/range {v2 .. v10}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLkotlinx/serialization/json/ClassDiscriminatorMode;Z)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lkotlinx/serialization/json/JsonImpl;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lorg/wikipedia/login/LoginClient;)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string v0, "Indent should not be specified when default printing mode is used"

    .line 49
    .line 50
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
