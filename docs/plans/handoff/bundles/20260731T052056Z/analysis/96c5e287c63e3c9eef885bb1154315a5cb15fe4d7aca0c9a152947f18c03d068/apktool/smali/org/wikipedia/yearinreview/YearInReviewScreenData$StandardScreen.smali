.class public Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
.super Lorg/wikipedia/yearinreview/YearInReviewScreenData;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final bodyText:Ljava/lang/Object;

.field public final headlineText:Ljava/lang/Object;

.field public final imageModifier:Landroidx/compose/ui/Modifier;

.field public final imageResource:I


# direct methods
.method public constructor <init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    const/high16 v0, 0x43480000    # 200.0f

    .line 8
    .line 9
    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    :cond_0
    and-int/lit8 p8, p8, 0x40

    .line 14
    .line 15
    if-eqz p8, :cond_1

    .line 16
    .line 17
    const/4 p7, 0x1

    .line 18
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p6, p1, p7}, Lorg/wikipedia/yearinreview/YearInReviewScreenData;-><init>(Ljava/lang/String;ZZ)V

    .line 22
    .line 23
    .line 24
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;->imageResource:I

    .line 25
    .line 26
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;->imageModifier:Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;->headlineText:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p5, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;->bodyText:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method
