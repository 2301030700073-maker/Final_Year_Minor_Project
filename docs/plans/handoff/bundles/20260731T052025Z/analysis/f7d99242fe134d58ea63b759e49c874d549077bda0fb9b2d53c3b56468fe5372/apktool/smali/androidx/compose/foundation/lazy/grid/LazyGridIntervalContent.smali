.class public final Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DefaultSpan:Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;


# instance fields
.field public hasCustomSpans:Z

.field public final intervals:Lde/cketti/changelog/XmlParser;

.field public final spanLayoutProvider:Lokhttp3/internal/http/RealInterceptorChain;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->DefaultSpan:Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->spanLayoutProvider:Lokhttp3/internal/http/RealInterceptorChain;

    .line 10
    .line 11
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 12
    .line 13
    invoke-direct {v0}, Lde/cketti/changelog/XmlParser;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lde/cketti/changelog/XmlParser;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getIntervals()Lde/cketti/changelog/XmlParser;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lde/cketti/changelog/XmlParser;

    .line 2
    .line 3
    return-object p0
.end method
