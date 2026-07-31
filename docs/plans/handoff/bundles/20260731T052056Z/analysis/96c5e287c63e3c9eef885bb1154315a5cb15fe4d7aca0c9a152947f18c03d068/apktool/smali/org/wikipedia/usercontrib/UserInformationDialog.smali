.class public final Lorg/wikipedia/usercontrib/UserInformationDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/usercontrib/UserInformationDialog;",
        "Landroidx/fragment/app/DialogFragment;",
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
.field public _binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 14
    .line 15
    const/16 v3, 0x12

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/usercontrib/UserInformationDialogViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/16 v3, 0x1a

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x1b

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    const/16 v5, 0x17

    .line 49
    .line 50
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lokhttp3/Request$Builder;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0c018c

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x7f0901b1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    move-object v6, v3

    .line 22
    check-cast v6, Lorg/wikipedia/views/WikiErrorView;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    const v0, 0x7f0901b2

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v7, v3

    .line 34
    check-cast v7, Landroid/widget/ProgressBar;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    const v0, 0x7f0901ea

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v8, v3

    .line 46
    check-cast v8, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    const v0, 0x7f0906fe

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v9, v3

    .line 58
    check-cast v9, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    const v0, 0x7f090704

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v10, v3

    .line 70
    check-cast v10, Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v10, :cond_0

    .line 73
    .line 74
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 75
    .line 76
    move-object v5, p1

    .line 77
    check-cast v5, Landroid/widget/ScrollView;

    .line 78
    .line 79
    invoke-direct/range {v4 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iput-object v4, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 83
    .line 84
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f120574

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Landroid/widget/ScrollView;

    .line 107
    .line 108
    iget-object v3, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 111
    .line 112
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 113
    .line 114
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 115
    .line 116
    const/16 v3, 0xf

    .line 117
    .line 118
    invoke-direct {v0, v3, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const v3, 0x7f120571

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v3, Lorg/wikipedia/usercontrib/UserInformationDialog$setupDialog$1;

    .line 132
    .line 133
    invoke-direct {v3, p0, v1, v2}, Lorg/wikipedia/usercontrib/UserInformationDialog$setupDialog$1;-><init>(Lorg/wikipedia/usercontrib/UserInformationDialog;Lkotlin/coroutines/Continuation;I)V

    .line 134
    .line 135
    .line 136
    const/4 v4, 0x3

    .line 137
    invoke-static {v0, v1, v1, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 148
    .line 149
    new-instance v1, Lorg/wikipedia/usercontrib/UserInformationDialog$$ExternalSyntheticLambda1;

    .line 150
    .line 151
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/usercontrib/UserInformationDialog$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/usercontrib/UserInformationDialog;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 165
    .line 166
    new-instance v1, Lorg/wikipedia/usercontrib/UserInformationDialog$$ExternalSyntheticLambda1;

    .line 167
    .line 168
    const/4 v2, 0x1

    .line 169
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/usercontrib/UserInformationDialog$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/usercontrib/UserInformationDialog;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const-string p1, "Missing required view with ID: "

    .line 189
    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 6
    .line 7
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "pt_recent_changes"

    .line 26
    .line 27
    :goto_0
    move-object v3, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string v0, "pt_edit"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 33
    .line 34
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 35
    .line 36
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 37
    .line 38
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 43
    .line 44
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "app_patroller_experience"

    .line 49
    .line 50
    const-string/jumbo v2, "user_info_impression"

    .line 51
    .line 52
    .line 53
    const-string v4, ""

    .line 54
    .line 55
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Landroid/widget/ProgressBar;

    .line 82
    .line 83
    const/16 v2, 0x8

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {p2, v0}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {p2}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    .line 134
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    new-array v3, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object p2, v3, v1

    .line 140
    .line 141
    const p2, 0x7f120573

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p2, Landroid/widget/TextView;

    .line 163
    .line 164
    new-array v0, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object p1, v0, v1

    .line 167
    .line 168
    const p1, 0x7f120572

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method
