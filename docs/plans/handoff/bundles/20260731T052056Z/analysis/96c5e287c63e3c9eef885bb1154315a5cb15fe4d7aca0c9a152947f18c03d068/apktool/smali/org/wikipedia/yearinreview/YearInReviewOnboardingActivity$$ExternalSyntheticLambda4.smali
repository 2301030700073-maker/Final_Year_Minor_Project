.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

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
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/16 v2, 0xee

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "close_click"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v6, "explore_prompt"

    .line 20
    .line 21
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_0
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/16 v2, 0xee

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const-string v4, "continue_click"

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "explore_prompt"

    .line 42
    .line 43
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->proceed()V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_1
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const/16 v2, 0xee

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const-string v4, "login_click"

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const-string v6, "explore_prompt"

    .line 60
    .line 61
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->loginLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 65
    .line 66
    new-instance v2, Landroid/content/Intent;

    .line 67
    .line 68
    const-class v3, Lorg/wikipedia/login/LoginActivity;

    .line 69
    .line 70
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "login_request_source"

    .line 74
    .line 75
    const-string/jumbo v3, "yir"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string v2, "create_account_first"

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
