.class public final Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$Companion;


# instance fields
.field public final description:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final ns:I

.field public final thumbUrl:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->Companion:Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x7

    .line 5
    if-ne v2, v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->lang:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->title:Ljava/lang/String;

    .line 13
    .line 14
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->ns:I

    .line 15
    .line 16
    and-int/lit8 p2, p1, 0x8

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->description:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object p5, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->description:Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    and-int/lit8 p1, p1, 0x10

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iput-object p6, p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$$serializer;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$ExportedReadingListPage$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method
