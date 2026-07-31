.class public final Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 11
    .line 12
    const-string v2, "apps-widgetchallenge"

    .line 13
    .line 14
    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "widget_challenge"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "streak_count"

    .line 15
    .line 16
    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/16 v7, 0x74

    .line 24
    .line 25
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 26
    .line 27
    const-string v1, "impression"

    .line 28
    .line 29
    const-string v2, "challenge_complete"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const-string v4, "collect_prize"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 p3, 0x0

    .line 45
    const/4 v0, 0x6

    .line 46
    invoke-direct {p1, p2, p3, v0}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    invoke-direct {p2, p0, p3}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;I)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    const/4 p3, 0x1

    .line 58
    const v0, 0x2041eedf

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 65
    .line 66
    .line 67
    return-object p1
.end method
