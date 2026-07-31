.class public final Lkotlinx/datetime/format/YearMonthFormat;
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
    iput-object p1, p0, Lkotlinx/datetime/format/YearMonthFormat;->actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getActualFormat()Lkotlinx/datetime/internal/format/CachedFormatStructure;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/YearMonthFormat;->actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmptyIntermediate()Lkotlinx/datetime/internal/format/parser/Copyable;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/datetime/format/YearMonthFormatKt;->emptyIncompleteYearMonth:Lkotlinx/datetime/format/IncompleteYearMonth;

    .line 2
    .line 3
    return-object p0
.end method

.method public final intermediateFromValue(Lkotlinx/datetime/LocalDateTime;)Lkotlinx/datetime/internal/format/parser/Copyable;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/datetime/YearMonth;

    .line 2
    .line 3
    new-instance p0, Lkotlinx/datetime/format/IncompleteYearMonth;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, v0}, Lkotlinx/datetime/format/IncompleteYearMonth;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lkotlinx/datetime/YearMonth;->value:Lj$/time/YearMonth;

    .line 10
    .line 11
    invoke-virtual {p1}, Lj$/time/YearMonth;->getYear()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lkotlinx/datetime/format/IncompleteYearMonth;->year:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Lj$/time/YearMonth;->getMonth()Lj$/time/Month;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lj$/time/Month;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 33
    .line 34
    sget-object v0, Lkotlinx/datetime/Month;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lkotlinx/datetime/Month;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteYearMonth;->monthNumber:Ljava/lang/Integer;

    .line 56
    .line 57
    return-object p0
.end method

.method public final valueFromIntermediate(Lkotlinx/datetime/internal/format/parser/Copyable;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/datetime/format/IncompleteYearMonth;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lkotlinx/datetime/format/IncompleteYearMonth;->year:Ljava/lang/Integer;

    .line 7
    .line 8
    const-string/jumbo v0, "year"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlinx/datetime/format/YearMonthFormatKt;->requireParsedField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget-object p1, p1, Lkotlinx/datetime/format/IncompleteYearMonth;->monthNumber:Ljava/lang/Integer;

    .line 19
    .line 20
    const-string v0, "monthNumber"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlinx/datetime/format/YearMonthFormatKt;->requireParsedField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-instance v0, Lkotlinx/datetime/YearMonth;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lkotlinx/datetime/YearMonth;-><init>(II)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
