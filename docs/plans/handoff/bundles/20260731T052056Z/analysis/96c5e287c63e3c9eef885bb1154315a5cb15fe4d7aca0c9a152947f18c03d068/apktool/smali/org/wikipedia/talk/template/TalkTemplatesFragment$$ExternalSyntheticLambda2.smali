.class public final synthetic Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->deletedItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->actionExceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 25
    .line 26
    new-instance v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 27
    .line 28
    invoke-direct {v5, v0, v1, v2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(Ljava/util/List;Lorg/wikipedia/talk/template/TalkTemplatesViewModel;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-static {v3, v4, v2, v5, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 41
    .line 42
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 43
    .line 44
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 51
    .line 52
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v8, "app_patroller_experience"

    .line 57
    .line 58
    const-string v3, "edit_message_click"

    .line 59
    .line 60
    const-string v4, "pt_templates"

    .line 61
    .line 62
    const-string v5, ""

    .line 63
    .line 64
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->setMultiSelectEnabled$1(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void

    .line 87
    :pswitch_1
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 88
    .line 89
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 90
    .line 91
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 92
    .line 93
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 98
    .line 99
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const-string v9, "app_patroller_experience"

    .line 104
    .line 105
    const-string v4, "new_message_init"

    .line 106
    .line 107
    const-string v5, "pt_warning_messages"

    .line 108
    .line 109
    const-string v6, ""

    .line 110
    .line 111
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->requestNewTemplate:Landroidx/fragment/app/Fragment$10;

    .line 118
    .line 119
    sget-object v3, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v5, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 130
    .line 131
    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-boolean v3, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->templateManagementMode:Z

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    iget-wide v14, v6, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->fromRevisionId:J

    .line 144
    .line 145
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-wide v12, v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->toRevisionId:J

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    const/16 v18, 0x1160

    .line 154
    .line 155
    const/4 v6, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    move/from16 v16, v3

    .line 161
    .line 162
    invoke-static/range {v4 .. v18}, Lorg/wikipedia/talk/UserTalkPopupHelper;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/wikipedia/talk/db/TalkTemplate;JJZZI)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_2
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->loadTalkTemplates()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
