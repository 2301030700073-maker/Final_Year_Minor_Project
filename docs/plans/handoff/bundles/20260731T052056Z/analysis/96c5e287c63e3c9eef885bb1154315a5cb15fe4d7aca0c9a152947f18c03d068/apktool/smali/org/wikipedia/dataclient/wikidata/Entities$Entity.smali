.class public final Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;


# instance fields
.field public final descriptions:Lkotlinx/serialization/json/JsonElement;

.field public final id:Ljava/lang/String;

.field public final labels:Lkotlinx/serialization/json/JsonElement;

.field public final lastRevId:J

.field public final missing:Lkotlinx/serialization/json/JsonElement;

.field public final sitelinks:Lkotlinx/serialization/json/JsonElement;

.field public final statements:Lkotlinx/serialization/json/JsonElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->Companion:Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->id:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels:Lkotlinx/serialization/json/JsonElement;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels:Lkotlinx/serialization/json/JsonElement;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->descriptions:Lkotlinx/serialization/json/JsonElement;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->descriptions:Lkotlinx/serialization/json/JsonElement;

    .line 30
    .line 31
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 32
    .line 33
    if-nez p2, :cond_3

    .line 34
    .line 35
    iput-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks:Lkotlinx/serialization/json/JsonElement;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks:Lkotlinx/serialization/json/JsonElement;

    .line 39
    .line 40
    :goto_2
    and-int/lit8 p2, p1, 0x10

    .line 41
    .line 42
    if-nez p2, :cond_4

    .line 43
    .line 44
    iput-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->statements:Lkotlinx/serialization/json/JsonElement;

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->statements:Lkotlinx/serialization/json/JsonElement;

    .line 48
    .line 49
    :goto_3
    and-int/lit8 p2, p1, 0x20

    .line 50
    .line 51
    if-nez p2, :cond_5

    .line 52
    .line 53
    iput-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->missing:Lkotlinx/serialization/json/JsonElement;

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->missing:Lkotlinx/serialization/json/JsonElement;

    .line 57
    .line 58
    :goto_4
    and-int/lit8 p1, p1, 0x40

    .line 59
    .line 60
    if-nez p1, :cond_6

    .line 61
    .line 62
    const-wide/16 p1, 0x0

    .line 63
    .line 64
    iput-wide p1, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->lastRevId:J

    .line 65
    .line 66
    return-void

    .line 67
    :cond_6
    iput-wide p8, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->lastRevId:J

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final getDescriptions()Ljava/util/Map;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->descriptions:Lkotlinx/serialization/json/JsonElement;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lkotlinx/serialization/json/JsonArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 17
    .line 18
    sget-object v3, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->Companion:Lorg/wikipedia/dataclient/wikidata/Entities$Label$Companion;

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/wikidata/Entities$Label$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/Map;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 36
    .line 37
    return-object p0
.end method

.method public final getLabels()Ljava/util/Map;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels:Lkotlinx/serialization/json/JsonElement;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lkotlinx/serialization/json/JsonArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 17
    .line 18
    sget-object v3, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->Companion:Lorg/wikipedia/dataclient/wikidata/Entities$Label$Companion;

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/wikidata/Entities$Label$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/Map;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 36
    .line 37
    return-object p0
.end method

.method public final getSiteLinks()Ljava/util/Map;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks:Lkotlinx/serialization/json/JsonElement;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lkotlinx/serialization/json/JsonArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 17
    .line 18
    sget-object v3, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;->Companion:Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink$Companion;

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/Map;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 36
    .line 37
    return-object p0
.end method

.method public final getStatements()Ljava/util/Map;
    .locals 6

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->statements:Lkotlinx/serialization/json/JsonElement;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lkotlinx/serialization/json/JsonArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 17
    .line 18
    new-instance v3, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 19
    .line 20
    sget-object v4, Lorg/wikipedia/dataclient/wikidata/Claims$Claim;->Companion:Lorg/wikipedia/dataclient/wikidata/Claims$Claim$Companion;

    .line 21
    .line 22
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/wikidata/Claims$Claim$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v5}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/util/Map;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 41
    .line 42
    return-object p0
.end method
