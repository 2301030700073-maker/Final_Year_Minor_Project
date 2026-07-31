.class public final Lkotlinx/datetime/format/LocalDateFormat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
.implements Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;
.implements Lkotlinx/datetime/format/DateTimeFormatBuilder;


# instance fields
.field public final synthetic $r8$classId:I

.field public final actualBuilder:Lokhttp3/Headers$Builder;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Headers$Builder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addFormatStructureForDate(Lkotlinx/datetime/internal/format/FormatStructure;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addFormatStructureForYearMonth(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->addFormatStructureForDate(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic appendAlternativeParsingImpl([Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/io/Sink$-CC;->$default$appendAlternativeParsingImpl(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic appendOptionalImpl(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/io/Sink$-CC;->$default$appendOptionalImpl(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic chars(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$chars(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final createEmpty()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
    .locals 2

    .line 1
    iget p0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;

    .line 7
    .line 8
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1}, Lkotlinx/datetime/format/LocalDateFormat$Builder;-><init>(Lokhttp3/Headers$Builder;I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;

    .line 21
    .line 22
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 23
    .line 24
    const/16 v1, 0xb

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, v0, v1}, Lkotlinx/datetime/format/LocalDateFormat$Builder;-><init>(Lokhttp3/Headers$Builder;I)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public day()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/format/DayDirective;

    .line 4
    .line 5
    invoke-direct {v1}, Lkotlinx/datetime/format/DayDirective;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->addFormatStructureForDate(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getActualBuilder()Lokhttp3/Headers$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 4
    .line 5
    return-object p0
.end method

.method public final synthetic monthNumber()V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$monthNumber(Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic year()V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$year(Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
