.class public final synthetic Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/KeyEvent$Callback;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;->f$0:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;->f$0:Landroid/view/KeyEvent$Callback;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    .line 11
    .line 12
    check-cast v1, Landroid/view/MotionEvent;

    .line 13
    .line 14
    sget v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_Y:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    move-object v2, p0

    .line 21
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    const p0, 0x7f09041a

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 41
    .line 42
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowOneTimeRecentEditsFeedbackForm()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 49
    .line 50
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 51
    .line 52
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const-string v9, "app_patroller_experience"

    .line 63
    .line 64
    const-string v4, "tooltip_impression"

    .line 65
    .line 66
    const-string v5, "feedback_form"

    .line 67
    .line 68
    const-string v6, ""

    .line 69
    .line 70
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 74
    .line 75
    .line 76
    const v0, 0x7f120546

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const/high16 v0, 0x40e00000    # 7.0f

    .line 87
    .line 88
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    neg-int v5, v0

    .line 93
    const/4 v9, 0x0

    .line 94
    const/16 v10, 0x380

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v7, 0x1

    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-static/range {v2 .. v10}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, p0, v2}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;I)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Lorg/wikipedia/views/SurveyDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    aget p0, p0, v0

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    if-ne p0, v0, :cond_0

    .line 118
    .line 119
    const p0, 0x7f120685

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
