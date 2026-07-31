.class public abstract Lorg/wikipedia/yearinreview/YearInReviewScreenData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final allowDonate:Z

.field public final showDonateInToolbar:Z

.field public final slideName:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    move p3, v0

    .line 11
    :cond_0
    invoke-direct {p0, p2, p3, v0}, Lorg/wikipedia/yearinreview/YearInReviewScreenData;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->allowDonate:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->showDonateInToolbar:Z

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->slideName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public BottomButton(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x6be25880

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
