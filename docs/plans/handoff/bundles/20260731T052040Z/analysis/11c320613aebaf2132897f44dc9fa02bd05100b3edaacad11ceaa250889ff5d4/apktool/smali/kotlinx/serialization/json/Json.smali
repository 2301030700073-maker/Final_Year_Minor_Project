.class public abstract Lkotlinx/serialization/json/Json;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Default:Lkotlinx/serialization/json/Json$Default;


# instance fields
.field public final _schemaCache:Lorg/koin/core/registry/PropertyRegistry;

.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public final serializersModule:Lcoil3/ComponentRegistry$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    .line 4
    .line 5
    sget-object v10, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 6
    .line 7
    const/4 v11, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    const-string v6, "    "

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const-string/jumbo v8, "type"

    .line 16
    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    invoke-direct/range {v1 .. v11}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZLjava/lang/String;ZLjava/lang/String;ZLkotlinx/serialization/json/ClassDiscriminatorMode;Z)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lcoil3/ComponentRegistry$Builder;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lcoil3/ComponentRegistry$Builder;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lcoil3/ComponentRegistry$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/serialization/json/Json;->serializersModule:Lcoil3/ComponentRegistry$Builder;

    .line 7
    .line 8
    new-instance p1, Lorg/koin/core/registry/PropertyRegistry;

    .line 9
    .line 10
    invoke-direct {p1}, Lorg/koin/core/registry/PropertyRegistry;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->_schemaCache:Lorg/koin/core/registry/PropertyRegistry;

    .line 14
    .line 15
    return-void
.end method
