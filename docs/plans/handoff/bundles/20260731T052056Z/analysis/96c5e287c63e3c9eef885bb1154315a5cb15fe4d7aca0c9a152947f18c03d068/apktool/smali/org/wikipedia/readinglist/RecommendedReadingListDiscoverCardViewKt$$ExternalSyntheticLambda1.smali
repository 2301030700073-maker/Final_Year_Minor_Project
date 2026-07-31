.class public final synthetic Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$5:Ljava/util/List;

    .line 13
    .line 14
    iput-boolean p6, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$6:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$7:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

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
    move-result v8

    .line 14
    iget-object v0, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$5:Ljava/util/List;

    .line 23
    .line 24
    iget-boolean v5, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$6:Z

    .line 25
    .line 26
    iget-boolean v6, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;->f$7:Z

    .line 27
    .line 28
    invoke-static/range {v0 .. v8}, Lokhttp3/Cookie$Companion;->RecommendedReadingListDiscoverCardView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLandroidx/compose/runtime/GapComposer;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
