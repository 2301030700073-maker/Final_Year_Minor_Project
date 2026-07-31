.class public final synthetic Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/personalization/PersonalizationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/feed/personalization/PersonalizationActivity;

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/feed/personalization/PersonalizationActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 11
    .line 12
    sget v0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 13
    .line 14
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->FEED_INTEREST_SELECTION:Lorg/wikipedia/Constants$InvokeSource;

    .line 15
    .line 16
    const/16 v2, 0x30

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {p0, v0, v3, v3, v2}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->searchLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v3}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    sget v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_1
    sget v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 36
    .line 37
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 38
    .line 39
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 44
    .line 45
    iget-boolean v0, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestsUpdated:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const/16 v0, 0x64

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, -0x1

    .line 53
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
