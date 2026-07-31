.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

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
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "next"

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 16
    .line 17
    invoke-static {p0, v4, v4, v4, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v0, "get_started"

    .line 31
    .line 32
    const-string v3, "onboarding_step_4_dialog"

    .line 33
    .line 34
    invoke-static {v0, v3, v1, p0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    const v0, 0x7f120677

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 48
    .line 49
    invoke-static {p0, v4, v4, v4, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string v0, "onboarding_step_3_dialog"

    .line 63
    .line 64
    invoke-static {v1, v0, v3, p0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :pswitch_1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 69
    .line 70
    invoke-static {p0, v4, v4, v4, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string v0, "onboarding_step_2_dialog"

    .line 84
    .line 85
    invoke-static {v1, v0, v3, p0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v2

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
