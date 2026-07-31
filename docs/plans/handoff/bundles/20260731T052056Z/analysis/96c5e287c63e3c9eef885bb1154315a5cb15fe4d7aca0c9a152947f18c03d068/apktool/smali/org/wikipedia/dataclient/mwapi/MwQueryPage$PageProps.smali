.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$Companion;


# instance fields
.field public final disambiguation:Ljava/lang/String;

.field public final displayTitle:Ljava/lang/String;

.field public final wikiBaseItem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->wikiBaseItem:Ljava/lang/String;

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
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->disambiguation:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->disambiguation:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->displayTitle:Ljava/lang/String;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->displayTitle:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method
