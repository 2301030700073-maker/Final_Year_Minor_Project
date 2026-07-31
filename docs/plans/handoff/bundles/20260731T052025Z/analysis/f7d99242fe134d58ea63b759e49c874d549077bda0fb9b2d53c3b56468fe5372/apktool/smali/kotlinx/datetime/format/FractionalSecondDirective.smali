.class public final Lkotlinx/datetime/format/FractionalSecondDirective;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/datetime/internal/format/FieldFormatDirective;


# static fields
.field public static final NO_EXTRA_ZEROS:Ljava/util/List;


# instance fields
.field public final field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

.field public final maxDigits:I

.field public final maxDigits$1:I

.field public final minDigits:I

.field public final minDigits$1:I

.field public final zerosToAdd:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    new-array v3, v2, [Ljava/lang/Integer;

    .line 9
    .line 10
    aput-object v1, v3, v0

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    aput-object v1, v3, v4

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    aput-object v1, v3, v5

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    aput-object v1, v3, v6

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    aput-object v1, v3, v7

    .line 23
    .line 24
    const/4 v8, 0x5

    .line 25
    aput-object v1, v3, v8

    .line 26
    .line 27
    const/4 v9, 0x6

    .line 28
    aput-object v1, v3, v9

    .line 29
    .line 30
    const/4 v10, 0x7

    .line 31
    aput-object v1, v3, v10

    .line 32
    .line 33
    const/16 v11, 0x8

    .line 34
    .line 35
    aput-object v1, v3, v11

    .line 36
    .line 37
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sput-object v3, Lkotlinx/datetime/format/FractionalSecondDirective;->NO_EXTRA_ZEROS:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    new-array v2, v2, [Ljava/lang/Integer;

    .line 52
    .line 53
    aput-object v3, v2, v0

    .line 54
    .line 55
    aput-object v12, v2, v4

    .line 56
    .line 57
    aput-object v1, v2, v5

    .line 58
    .line 59
    aput-object v3, v2, v6

    .line 60
    .line 61
    aput-object v12, v2, v7

    .line 62
    .line 63
    aput-object v1, v2, v8

    .line 64
    .line 65
    aput-object v3, v2, v9

    .line 66
    .line 67
    aput-object v12, v2, v10

    .line 68
    .line 69
    aput-object v1, v2, v11

    .line 70
    .line 71
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/datetime/format/FractionalSecondDirective;->NO_EXTRA_ZEROS:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkotlinx/datetime/format/TimeFields;->fractionOfSecond:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits$1:I

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    iput v2, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits$1:I

    .line 22
    .line 23
    iput-object v0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->zerosToAdd:Ljava/util/List;

    .line 24
    .line 25
    iput v1, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits:I

    .line 26
    .line 27
    iput v2, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlinx/datetime/format/FractionalSecondDirective;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lkotlinx/datetime/format/FractionalSecondDirective;

    .line 6
    .line 7
    iget v0, p1, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits:I

    .line 8
    .line 9
    iget v1, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits:I

    .line 10
    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits:I

    .line 14
    .line 15
    iget p1, p1, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits:I

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final formatter()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;
    .locals 9

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/formatter/DecimalFractionFormatterStructure;

    .line 2
    .line 3
    new-instance v1, Landroidx/room/InvalidationTracker$implementation$1;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

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
    const/16 v8, 0xf

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
    iget v2, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits$1:I

    .line 25
    .line 26
    iget-object v3, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->zerosToAdd:Ljava/util/List;

    .line 27
    .line 28
    iget p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits$1:I

    .line 29
    .line 30
    invoke-direct {v0, v1, p0, v2, v3}, Lkotlinx/datetime/internal/format/formatter/DecimalFractionFormatterStructure;-><init>(Landroidx/room/InvalidationTracker$implementation$1;IILjava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final getField()Lkotlinx/datetime/internal/format/AbstractFieldSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public final parser()Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 6

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 4
    .line 5
    new-instance v2, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->field:Lkotlinx/datetime/internal/format/AbstractFieldSpec;

    .line 8
    .line 9
    invoke-virtual {v3}, Lkotlinx/datetime/internal/format/AbstractFieldSpec;->getAccessor()Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v3}, Lkotlinx/datetime/internal/format/AbstractFieldSpec;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget v5, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->minDigits$1:I

    .line 18
    .line 19
    iget p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->maxDigits$1:I

    .line 20
    .line 21
    invoke-direct {v2, v5, p0, v4, v3}, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;-><init>(IILkotlinx/datetime/internal/format/PropertyAccessor;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v1, p0}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;-><init>(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
