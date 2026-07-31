.class public final Lkotlinx/datetime/format/YearDirective;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/datetime/internal/format/FieldFormatDirective;


# instance fields
.field public final field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

.field public final minDigits:Ljava/lang/Integer;

.field public final outputPlusOnExceededWidth:Ljava/lang/Integer;

.field public final padding:Lkotlinx/datetime/format/Padding;

.field public final spacePadding:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/datetime/format/YearMonthFields;->year:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lkotlinx/datetime/format/YearDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 15
    .line 16
    iput-object v1, p0, Lkotlinx/datetime/format/YearDirective;->minDigits:Ljava/lang/Integer;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lkotlinx/datetime/format/YearDirective;->spacePadding:Ljava/lang/Integer;

    .line 20
    .line 21
    iput-object v1, p0, Lkotlinx/datetime/format/YearDirective;->outputPlusOnExceededWidth:Ljava/lang/Integer;

    .line 22
    .line 23
    sget-object v0, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 24
    .line 25
    iput-object v0, p0, Lkotlinx/datetime/format/YearDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/datetime/format/YearDirective;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lkotlinx/datetime/format/YearDirective;

    .line 6
    .line 7
    iget-object p1, p1, Lkotlinx/datetime/format/YearDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/datetime/format/YearDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final formatter()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;
    .locals 9

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/formatter/SignedIntFormatterStructure;

    .line 2
    .line 3
    new-instance v1, Landroidx/room/InvalidationTracker$implementation$1;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/datetime/format/YearDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 6
    .line 7
    invoke-virtual {v2}, Lkotlinx/datetime/internal/format/AbstractFieldSpec;->getAccessor()Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v7, 0x0

    .line 12
    const/16 v8, 0x13

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const-class v4, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 16
    .line 17
    const-string v5, "getterNotNull"

    .line 18
    .line 19
    const-string v6, "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;"

    .line 20
    .line 21
    invoke-direct/range {v1 .. v8}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lkotlinx/datetime/format/YearDirective;->minDigits:Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    iget-object v3, p0, Lkotlinx/datetime/format/YearDirective;->outputPlusOnExceededWidth:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lkotlinx/datetime/internal/format/formatter/SignedIntFormatterStructure;-><init>(Landroidx/room/InvalidationTracker$implementation$1;ILjava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lkotlinx/datetime/format/YearDirective;->spacePadding:Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    new-instance v1, Lkotlinx/datetime/internal/format/formatter/SpacePaddedFormatter;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-direct {v1, v0, p0}, Lkotlinx/datetime/internal/format/formatter/SpacePaddedFormatter;-><init>(Lkotlinx/datetime/internal/format/formatter/FormatterStructure;I)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_1
    return-object v0
.end method

.method public final getField()Lkotlinx/datetime/internal/format/AbstractFieldSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/YearDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/YearDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    mul-int/lit8 p0, p0, 0x1f

    .line 8
    .line 9
    add-int/lit16 p0, p0, 0x4d5

    .line 10
    .line 11
    return p0
.end method

.method public final parser()Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 13

    .line 1
    iget-object v0, p0, Lkotlinx/datetime/format/YearDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/datetime/internal/format/AbstractFieldSpec;->getAccessor()Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lkotlinx/datetime/internal/format/AbstractFieldSpec;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    iget-object v1, p0, Lkotlinx/datetime/format/YearDirective;->minDigits:Ljava/lang/Integer;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iget-object v3, p0, Lkotlinx/datetime/format/YearDirective;->spacePadding:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/atomicfu/AtomicFU;->spaceAndZeroPaddedUnsignedInt(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/PropertyAccessor;Ljava/lang/String;Z)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v7, v2

    .line 28
    const/4 v8, 0x1

    .line 29
    new-array v2, v8, [Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    aput-object v0, v2, v9

    .line 33
    .line 34
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lkotlinx/datetime/format/YearDirective;->outputPlusOnExceededWidth:Ljava/lang/Integer;

    .line 39
    .line 40
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v1 .. v6}, Lkotlinx/atomicfu/AtomicFU;->spaceAndZeroPaddedUnsignedInt(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/PropertyAccessor;Ljava/lang/String;Z)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v10, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 53
    .line 54
    new-instance v11, Lkotlinx/datetime/internal/format/parser/PlainStringParserOperation;

    .line 55
    .line 56
    const-string v1, "+"

    .line 57
    .line 58
    invoke-direct {v11, v1}, Lkotlinx/datetime/internal/format/parser/PlainStringParserOperation;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v12, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 62
    .line 63
    new-instance v1, Lkotlinx/datetime/internal/format/parser/UnsignedIntConsumer;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, v8

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    move-object v3, v7

    .line 75
    invoke-direct/range {v1 .. v6}, Lkotlinx/datetime/internal/format/parser/UnsignedIntConsumer;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/PropertyAccessor;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v12, v1}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;-><init>(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    new-array v1, v1, [Lkotlinx/datetime/internal/format/parser/ParserOperation;

    .line 87
    .line 88
    aput-object v11, v1, v9

    .line 89
    .line 90
    aput-object v12, v1, v8

    .line 91
    .line 92
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v10, v1, p0}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    move-object v2, v7

    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lkotlinx/atomicfu/AtomicFU;->spaceAndZeroPaddedUnsignedInt(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/PropertyAccessor;Ljava/lang/String;Z)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :goto_0
    new-instance v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 113
    .line 114
    invoke-direct {v1, p0, v0}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    return-object v1
.end method
