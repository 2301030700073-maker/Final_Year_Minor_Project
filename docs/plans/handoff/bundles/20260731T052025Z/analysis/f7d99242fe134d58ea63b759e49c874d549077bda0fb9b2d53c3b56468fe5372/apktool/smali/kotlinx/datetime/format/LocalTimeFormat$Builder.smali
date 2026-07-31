.class public final Lkotlinx/datetime/format/LocalTimeFormat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
.implements Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;


# instance fields
.field public final actualBuilder:Lokhttp3/Headers$Builder;


# direct methods
.method public constructor <init>(Lokhttp3/Headers$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addFormatStructureForTime(Lkotlinx/datetime/internal/format/FormatStructure;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic appendAlternativeParsingImpl([Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/io/Sink$-CC;->$default$appendAlternativeParsingImpl(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic appendOptionalImpl(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/io/Sink$-CC;->$default$appendOptionalImpl(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic chars(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$chars(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final createEmpty()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
    .locals 2

    .line 1
    new-instance p0, Lkotlinx/datetime/format/LocalTimeFormat$Builder;

    .line 2
    .line 3
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 4
    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lkotlinx/datetime/format/LocalTimeFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final getActualBuilder()Lokhttp3/Headers$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final second(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 5
    .line 6
    new-instance v1, Lkotlinx/datetime/format/SecondDirective;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lkotlinx/datetime/format/SecondDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->addFormatStructureForTime(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final secondFraction()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/format/FractionalSecondDirective;

    .line 4
    .line 5
    invoke-direct {v1}, Lkotlinx/datetime/format/FractionalSecondDirective;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->addFormatStructureForTime(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
