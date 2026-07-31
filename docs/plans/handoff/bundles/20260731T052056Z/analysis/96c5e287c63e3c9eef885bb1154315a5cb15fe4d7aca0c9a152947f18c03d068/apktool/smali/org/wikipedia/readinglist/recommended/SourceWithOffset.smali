.class public final Lorg/wikipedia/readinglist/recommended/SourceWithOffset;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/readinglist/recommended/SourceWithOffset$Companion;


# instance fields
.field public final language:Ljava/lang/String;

.field public offset:I

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->Companion:Lorg/wikipedia/readinglist/recommended/SourceWithOffset$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->title:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->language:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->offset:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/recommended/SourceWithOffset$$serializer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/SourceWithOffset$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->language:Ljava/lang/String;

    .line 30
    iput p3, p0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->offset:I

    return-void
.end method
