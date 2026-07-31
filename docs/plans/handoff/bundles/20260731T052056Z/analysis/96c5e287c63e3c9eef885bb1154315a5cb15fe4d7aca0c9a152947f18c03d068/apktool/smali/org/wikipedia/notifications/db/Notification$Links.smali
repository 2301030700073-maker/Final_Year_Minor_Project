.class public final Lorg/wikipedia/notifications/db/Notification$Links;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/notifications/db/Notification$Links$Companion;


# instance fields
.field public final primary:Lkotlinx/serialization/json/JsonElement;

.field public primaryLink:Lorg/wikipedia/notifications/db/Notification$Link;

.field public final secondary:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/notifications/db/Notification$Links$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/notifications/db/Notification$Links;->Companion:Lorg/wikipedia/notifications/db/Notification$Links$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x17

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    sput-object v1, Lorg/wikipedia/notifications/db/Notification$Links;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/notifications/db/Notification$Link;Lkotlinx/serialization/json/JsonElement;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/db/Notification$Link;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/db/Notification$Link;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primary:Lkotlinx/serialization/json/JsonElement;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primary:Lkotlinx/serialization/json/JsonElement;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p1, p1, 0x4

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Links;->secondary:Ljava/util/List;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/notifications/db/Notification$Links;->secondary:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getPrimary()Lorg/wikipedia/notifications/db/Notification$Link;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/db/Notification$Link;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primary:Lkotlinx/serialization/json/JsonElement;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    instance-of v2, v1, Lkotlinx/serialization/json/JsonObject;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Link;->Companion:Lorg/wikipedia/notifications/db/Notification$Link$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Link$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 31
    .line 32
    iput-object v0, p0, Lorg/wikipedia/notifications/db/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/db/Notification$Link;

    .line 33
    .line 34
    :cond_0
    return-object v0
.end method
