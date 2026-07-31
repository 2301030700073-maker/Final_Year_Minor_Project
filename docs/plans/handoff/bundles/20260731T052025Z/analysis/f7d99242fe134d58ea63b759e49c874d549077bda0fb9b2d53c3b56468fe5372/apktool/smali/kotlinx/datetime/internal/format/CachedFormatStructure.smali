.class public final Lkotlinx/datetime/internal/format/CachedFormatStructure;
.super Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cachedFormatter:Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

.field public final cachedParser:Lkotlinx/datetime/internal/format/parser/ParserStructure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;->formatter()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->cachedFormatter:Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    .line 12
    .line 13
    invoke-super {p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;->parser()Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->cachedParser:Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final formatter()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->cachedFormatter:Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    .line 2
    .line 3
    return-object p0
.end method

.method public final parser()Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->cachedParser:Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 2
    .line 3
    return-object p0
.end method
