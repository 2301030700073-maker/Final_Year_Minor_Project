.class public final Lexpo/modules/updates/manifest/ResponseHeaderData;
.super Ljava/lang/Object;
.source "ResponseHeaderData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponseHeaderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseHeaderData.kt\nexpo/modules/updates/manifest/ResponseHeaderData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003J-\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\r\u001a\u0004\u0018\u00010\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/updates/manifest/ResponseHeaderData;",
        "",
        "protocolVersionRaw",
        "",
        "serverDefinedHeadersRaw",
        "manifestFiltersRaw",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "protocolVersion",
        "",
        "getProtocolVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "serverDefinedHeaders",
        "Lorg/json/JSONObject;",
        "getServerDefinedHeaders",
        "()Lorg/json/JSONObject;",
        "serverDefinedHeaders$delegate",
        "Lkotlin/Lazy;",
        "manifestFilters",
        "getManifestFilters",
        "manifestFilters$delegate",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final manifestFilters$delegate:Lkotlin/Lazy;

.field private final manifestFiltersRaw:Ljava/lang/String;

.field private final protocolVersion:Ljava/lang/Integer;

.field private final protocolVersionRaw:Ljava/lang/String;

.field private final serverDefinedHeaders$delegate:Lkotlin/Lazy;

.field private final serverDefinedHeadersRaw:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2cfBQA5_riNrZ9xV6DpFHVvhsFc(Lexpo/modules/updates/manifest/ResponseHeaderData;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFilters_delegate$lambda$4(Lexpo/modules/updates/manifest/ResponseHeaderData;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KipNr5yq-shNfuUIrXGoX0WRT7g(Lexpo/modules/updates/manifest/ResponseHeaderData;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeaders_delegate$lambda$2(Lexpo/modules/updates/manifest/ResponseHeaderData;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/manifest/ResponseHeaderData;->Companion:Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;

    .line 45
    const-string v0, "ResponseHeaderData"

    sput-object v0, Lexpo/modules/updates/manifest/ResponseHeaderData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/updates/manifest/ResponseHeaderData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersion:Ljava/lang/Integer;

    .line 36
    new-instance p1, Lexpo/modules/updates/manifest/ResponseHeaderData$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/updates/manifest/ResponseHeaderData$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeaders$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lexpo/modules/updates/manifest/ResponseHeaderData$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lexpo/modules/updates/manifest/ResponseHeaderData$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFilters$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 16
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/updates/manifest/ResponseHeaderData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lexpo/modules/updates/manifest/ResponseHeaderData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    return-object v0
.end method

.method private final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    return-object v0
.end method

.method private final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lexpo/modules/updates/manifest/ResponseHeaderData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lexpo/modules/updates/manifest/ResponseHeaderData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/updates/manifest/ResponseHeaderData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object p0

    return-object p0
.end method

.method private static final manifestFilters_delegate$lambda$4(Lexpo/modules/updates/manifest/ResponseHeaderData;)Lorg/json/JSONObject;
    .locals 1

    .line 41
    iget-object p0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lexpo/modules/updates/manifest/ResponseHeaderData;->Companion:Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;->headerDictionaryToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final serverDefinedHeaders_delegate$lambda$2(Lexpo/modules/updates/manifest/ResponseHeaderData;)Lorg/json/JSONObject;
    .locals 1

    .line 37
    iget-object p0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lexpo/modules/updates/manifest/ResponseHeaderData;->Companion:Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;->headerDictionaryToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/updates/manifest/ResponseHeaderData;
    .locals 1

    new-instance v0, Lexpo/modules/updates/manifest/ResponseHeaderData;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/updates/manifest/ResponseHeaderData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/updates/manifest/ResponseHeaderData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/updates/manifest/ResponseHeaderData;

    iget-object v1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    iget-object p1, p1, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getManifestFilters()Lorg/json/JSONObject;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFilters$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getProtocolVersion()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getServerDefinedHeaders()Lorg/json/JSONObject;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeaders$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->protocolVersionRaw:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->serverDefinedHeadersRaw:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/updates/manifest/ResponseHeaderData;->manifestFiltersRaw:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ResponseHeaderData(protocolVersionRaw="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", serverDefinedHeadersRaw="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manifestFiltersRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
