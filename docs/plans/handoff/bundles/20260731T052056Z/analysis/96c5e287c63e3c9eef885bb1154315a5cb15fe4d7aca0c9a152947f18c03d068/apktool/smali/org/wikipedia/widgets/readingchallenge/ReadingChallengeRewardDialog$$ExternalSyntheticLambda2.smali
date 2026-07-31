.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 11
    .line 12
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 13
    .line 14
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v3, "streak_count"

    .line 23
    .line 24
    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/16 v9, 0x74

    .line 32
    .line 33
    const-string v3, "click"

    .line 34
    .line 35
    const-string v4, "challenge_complete"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v6, "store_button"

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v2, 0x7f120723

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
