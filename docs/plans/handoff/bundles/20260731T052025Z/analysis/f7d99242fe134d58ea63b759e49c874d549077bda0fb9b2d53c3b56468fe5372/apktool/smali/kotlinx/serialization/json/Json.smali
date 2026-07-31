.class public abstract Lkotlinx/serialization/json/Json;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Default:Lkotlinx/serialization/json/Json$Default;


# instance fields
.field public final _schemaCache:Lokhttp3/ConnectionPool;

.field public final configuration:Landroidx/compose/runtime/ProvidedValue;

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/ProvidedValue;

    .line 4
    .line 5
    sget-object v6, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "    "

    .line 10
    .line 11
    const-string v4, "type"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/ProvidedValue;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/json/ClassDiscriminatorMode;Z)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/Json;-><init>(Landroidx/compose/runtime/ProvidedValue;Lkotlinx/serialization/modules/SerialModuleImpl;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ProvidedValue;Lkotlinx/serialization/modules/SerialModuleImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 7
    .line 8
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 9
    .line 10
    const/16 p2, 0x18

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->_schemaCache:Lokhttp3/ConnectionPool;

    .line 16
    .line 17
    return-void
.end method
