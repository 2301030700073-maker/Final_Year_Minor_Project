.class public final Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData$Companion;


# instance fields
.field public final description:Ljava/lang/String;

.field public final format:Ljava/lang/String;

.field public final noTemplateData:Z

.field public final params:Lkotlinx/serialization/json/JsonElement;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->Companion:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Z)V
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
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->title:Ljava/lang/String;

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
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->description:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->description:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->params:Lkotlinx/serialization/json/JsonElement;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->params:Lkotlinx/serialization/json/JsonElement;

    .line 30
    .line 31
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 32
    .line 33
    if-nez p2, :cond_3

    .line 34
    .line 35
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->format:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->format:Ljava/lang/String;

    .line 39
    .line 40
    :goto_2
    and-int/lit8 p1, p1, 0x10

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->noTemplateData:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    iput-boolean p6, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->noTemplateData:Z

    .line 49
    .line 50
    return-void
.end method
