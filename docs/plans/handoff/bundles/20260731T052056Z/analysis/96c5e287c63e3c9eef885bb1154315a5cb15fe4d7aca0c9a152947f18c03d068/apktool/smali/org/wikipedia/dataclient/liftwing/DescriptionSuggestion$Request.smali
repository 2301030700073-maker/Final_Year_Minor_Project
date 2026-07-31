.class public final Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request$Companion;


# instance fields
.field public final count:I

.field public final lang:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->Companion:Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v1, v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->lang:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->title:Ljava/lang/String;

    .line 12
    .line 13
    and-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->count:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput p2, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->count:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget-object p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request$$serializer;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->lang:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->title:Ljava/lang/String;

    const/4 p1, 0x2

    .line 38
    iput p1, p0, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;->count:I

    return-void
.end method
