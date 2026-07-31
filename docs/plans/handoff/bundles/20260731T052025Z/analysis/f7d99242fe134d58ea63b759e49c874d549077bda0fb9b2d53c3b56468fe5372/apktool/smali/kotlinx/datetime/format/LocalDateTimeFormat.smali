.class public final Lkotlinx/datetime/format/LocalDateTimeFormat;
.super Lkotlinx/datetime/format/AbstractDateTimeFormat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/datetime/format/LocalDateTimeFormat;->actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getActualFormat()Lkotlinx/datetime/internal/format/CachedFormatStructure;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/LocalDateTimeFormat;->actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmptyIntermediate()Lkotlinx/datetime/internal/format/parser/Copyable;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/datetime/format/LocalDateTimeFormatKt;->emptyIncompleteLocalDateTime:Lkotlinx/datetime/format/IncompleteLocalDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public final intermediateFromValue(Lkotlinx/datetime/LocalDateTime;)Lkotlinx/datetime/internal/format/parser/Copyable;
    .locals 2

    .line 1
    new-instance p0, Lkotlinx/datetime/format/IncompleteLocalDateTime;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/datetime/format/IncompleteLocalDateTime;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalDateTime;->date:Lkotlinx/datetime/format/IncompleteLocalDate;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlinx/datetime/LocalDateTime;->getDate()Lkotlinx/datetime/LocalDate;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lkotlinx/datetime/format/IncompleteLocalDate;->populateFrom(Lkotlinx/datetime/LocalDate;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lkotlinx/datetime/LocalTime;

    .line 16
    .line 17
    iget-object p1, p1, Lkotlinx/datetime/LocalDateTime;->value:Lj$/time/LocalDateTime;

    .line 18
    .line 19
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Lkotlinx/datetime/LocalTime;-><init>(Lj$/time/LocalTime;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDateTime;->time:Lkotlinx/datetime/format/IncompleteLocalTime;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lkotlinx/datetime/format/IncompleteLocalTime;->populateFrom(Lkotlinx/datetime/LocalTime;)V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public final valueFromIntermediate(Lkotlinx/datetime/internal/format/parser/Copyable;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/datetime/format/IncompleteLocalDateTime;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lkotlinx/datetime/LocalDateTime;

    .line 7
    .line 8
    iget-object v0, p1, Lkotlinx/datetime/format/IncompleteLocalDateTime;->date:Lkotlinx/datetime/format/IncompleteLocalDate;

    .line 9
    .line 10
    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->toLocalDate()Lkotlinx/datetime/LocalDate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p1, p1, Lkotlinx/datetime/format/IncompleteLocalDateTime;->time:Lkotlinx/datetime/format/IncompleteLocalTime;

    .line 15
    .line 16
    invoke-virtual {p1}, Lkotlinx/datetime/format/IncompleteLocalTime;->toLocalTime()Lkotlinx/datetime/LocalTime;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Lkotlinx/datetime/LocalDateTime;-><init>(Lkotlinx/datetime/LocalDate;Lkotlinx/datetime/LocalTime;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
