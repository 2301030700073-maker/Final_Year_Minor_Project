.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$2:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$4:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$2:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 19
    .line 20
    iget-boolean v3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$3:Z

    .line 21
    .line 22
    iget-boolean v4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$4:Z

    .line 23
    .line 24
    iget-boolean v5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13;->f$5:Z

    .line 25
    .line 26
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceSelectionContent(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZZZLandroidx/compose/runtime/GapComposer;I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method
