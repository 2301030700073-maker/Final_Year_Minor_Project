.class public final Lorg/wikimedia/testkitchen/context/PageData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikimedia/testkitchen/context/PageData$Companion;


# instance fields
.field public contentLanguage:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public namespaceId:Ljava/lang/Integer;

.field public namespaceName:Ljava/lang/String;

.field public revisionId:Ljava/lang/Long;

.field public title:Ljava/lang/String;

.field public wikidataItemQid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/PageData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/context/PageData;->Companion:Lorg/wikimedia/testkitchen/context/PageData$Companion;

    .line 7
    .line 8
    return-void
.end method
