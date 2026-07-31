.class public final Lorg/wikipedia/edit/summaries/EditSummaryFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/edit/summaries/EditSummaryFragment;",
        "Landroidx/fragment/app/Fragment;",
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
.field public _binding:Landroidx/compose/ui/node/NodeChain;

.field public editSummaryHandler:Lokhttp3/MultipartBody$Builder;

.field public title:Lorg/wikipedia/page/PageTitle;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;

.field public final voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 5
    .line 6
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/wikipedia/edit/summaries/EditSummaryFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/edit/summaries/EditSummaryFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/edit/summaries/EditSummaryFragment$special$$inlined$activityViewModels$default$1;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1, v3, v2}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v4, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v2, 0x10

    .line 46
    .line 47
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final getActionDataStringForData()Ljava/lang/String;
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v2, "imageTitle"

    .line 15
    .line 16
    const-class v3, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/os/Parcelable;

    .line 23
    .line 24
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string v3, "imageSource"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v5, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v5, v1

    .line 49
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    const-string v3, "imageSourceProjects"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v6, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object v6, v1

    .line 70
    :goto_2
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move-object v0, v1

    .line 80
    :goto_3
    if-nez v0, :cond_4

    .line 81
    .line 82
    const-string v0, ""

    .line 83
    .line 84
    :cond_4
    move-object v4, v0

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    const-string v2, "resultImageCaption"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    move-object v0, v1

    .line 105
    :goto_4
    const/4 v2, 0x0

    .line 106
    const/4 v7, 0x1

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    move v0, v2

    .line 117
    goto :goto_6

    .line 118
    :cond_7
    :goto_5
    move v0, v7

    .line 119
    :goto_6
    xor-int/2addr v0, v7

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-eqz p0, :cond_8

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_8

    .line 135
    .line 136
    const-string v0, "resultImageAlt"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_8
    if-eqz v1, :cond_9

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_a

    .line 149
    .line 150
    :cond_9
    move v2, v7

    .line 151
    :cond_a
    xor-int/lit8 p0, v2, 0x1

    .line 152
    .line 153
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    const/4 v12, 0x0

    .line 158
    const/16 v13, 0x128

    .line 159
    .line 160
    const/4 v7, 0x0

    .line 161
    const-string v8, "accepted"

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    invoke-static/range {v3 .. v13}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/ScrollView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c01a4

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object/from16 v4, p2

    .line 15
    .line 16
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Landroid/widget/ScrollView;

    .line 22
    .line 23
    const v2, 0x7f0901f5

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    move-object v6, v4

    .line 31
    check-cast v6, Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v6, :cond_4

    .line 35
    .line 36
    const v2, 0x7f0901f6

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 44
    .line 45
    if-eqz v7, :cond_4

    .line 46
    .line 47
    const v2, 0x7f0901f7

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    .line 56
    if-eqz v8, :cond_4

    .line 57
    .line 58
    const v2, 0x7f090263

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    if-eqz v9, :cond_4

    .line 66
    .line 67
    invoke-static {v9}, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->bind(Landroid/view/View;)Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const v2, 0x7f090325

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 79
    .line 80
    if-eqz v10, :cond_4

    .line 81
    .line 82
    const v2, 0x7f090410

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    check-cast v11, Landroid/widget/CheckBox;

    .line 90
    .line 91
    if-eqz v11, :cond_4

    .line 92
    .line 93
    const v2, 0x7f090411

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    check-cast v12, Landroid/widget/ImageView;

    .line 101
    .line 102
    if-eqz v12, :cond_4

    .line 103
    .line 104
    const v2, 0x7f090758

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Landroid/widget/CheckBox;

    .line 112
    .line 113
    if-eqz v13, :cond_4

    .line 114
    .line 115
    const v2, 0x7f090759

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    check-cast v14, Landroid/widget/ImageView;

    .line 123
    .line 124
    if-eqz v14, :cond_4

    .line 125
    .line 126
    move-object v15, v4

    .line 127
    new-instance v4, Landroidx/compose/ui/node/NodeChain;

    .line 128
    .line 129
    move-object v1, v15

    .line 130
    const/4 v15, 0x3

    .line 131
    invoke-direct/range {v4 .. v15}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 132
    .line 133
    .line 134
    iput-object v4, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/widget/TextView;->getInputType()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    const v4, -0x10001

    .line 141
    .line 142
    .line 143
    and-int/2addr v2, v4

    .line 144
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v2, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 155
    .line 156
    new-instance v4, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;

    .line 157
    .line 158
    const/4 v5, 0x2

    .line 159
    invoke-direct {v4, v5, v0}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 173
    .line 174
    new-instance v4, Landroidx/appcompat/widget/SearchView$10;

    .line 175
    .line 176
    const/4 v6, 0x6

    .line 177
    invoke-direct {v4, v6, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 191
    .line 192
    new-instance v4, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;

    .line 193
    .line 194
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 208
    .line 209
    new-instance v4, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;

    .line 210
    .line 211
    const/4 v6, 0x1

    .line 212
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Landroid/widget/ImageView;

    .line 226
    .line 227
    new-instance v4, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;

    .line 228
    .line 229
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v2, Landroid/widget/ImageView;

    .line 243
    .line 244
    new-instance v4, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;

    .line 245
    .line 246
    const/4 v7, 0x3

    .line 247
    invoke-direct {v4, v0, v7}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v2, Landroid/widget/CheckBox;

    .line 261
    .line 262
    new-instance v4, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 263
    .line 264
    invoke-direct {v4, v7, v0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    .line 269
    .line 270
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_0

    .line 275
    .line 276
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    sget-object v4, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 281
    .line 282
    new-instance v8, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 283
    .line 284
    const/16 v9, 0xa

    .line 285
    .line 286
    invoke-direct {v8, v4, v9}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 287
    .line 288
    .line 289
    new-instance v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 290
    .line 291
    invoke-direct {v4, v5, v0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v8, v1, v4, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 295
    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v2, Landroid/widget/CheckBox;

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    .line 309
    .line 310
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v2, Landroid/widget/CheckBox;

    .line 318
    .line 319
    const/high16 v4, 0x3f000000    # 0.5f

    .line 320
    .line 321
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 322
    .line 323
    .line 324
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Lorg/wikipedia/edit/EditSectionActivity;

    .line 329
    .line 330
    invoke-virtual {v2}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 335
    .line 336
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 337
    .line 338
    if-ne v2, v4, :cond_1

    .line 339
    .line 340
    new-array v2, v5, [I

    .line 341
    .line 342
    const v4, 0x7f1201b3

    .line 343
    .line 344
    .line 345
    aput v4, v2, v3

    .line 346
    .line 347
    const v4, 0x7f1201b2

    .line 348
    .line 349
    .line 350
    aput v4, v2, v6

    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_1
    new-array v2, v7, [I

    .line 354
    .line 355
    const v4, 0x7f1201b9

    .line 356
    .line 357
    .line 358
    aput v4, v2, v3

    .line 359
    .line 360
    const v4, 0x7f1201b5

    .line 361
    .line 362
    .line 363
    aput v4, v2, v6

    .line 364
    .line 365
    const v4, 0x7f1201b6

    .line 366
    .line 367
    .line 368
    aput v4, v2, v5

    .line 369
    .line 370
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    iget-object v5, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->title:Lorg/wikipedia/page/PageTitle;

    .line 375
    .line 376
    if-eqz v5, :cond_3

    .line 377
    .line 378
    invoke-static {v4, v5, v2}, Lorg/wikipedia/extensions/ContextKt;->getStrings(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;[I)Landroid/util/SparseArray;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    array-length v5, v2

    .line 383
    move v6, v3

    .line 384
    :goto_2
    if-ge v6, v5, :cond_2

    .line 385
    .line 386
    aget v7, v2, v6

    .line 387
    .line 388
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    check-cast v7, Ljava/lang/String;

    .line 396
    .line 397
    new-instance v8, Lcom/google/android/material/chip/Chip;

    .line 398
    .line 399
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    invoke-direct {v8, v9, v1}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    const v9, 0x7f130158

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setTextAppearance(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    const v10, 0x7f040061

    .line 420
    .line 421
    .line 422
    invoke-static {v9, v10}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 427
    .line 428
    .line 429
    const/high16 v9, 0x3f800000    # 1.0f

    .line 430
    .line 431
    invoke-static {v9}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    const v10, 0x7f040094

    .line 443
    .line 444
    .line 445
    invoke-static {v9, v10}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v8}, Lcom/google/android/material/chip/Chip;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    const/high16 v10, 0x41000000    # 8.0f

    .line 461
    .line 462
    invoke-static {v10}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 463
    .line 464
    .line 465
    move-result v10

    .line 466
    invoke-virtual {v9, v10}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 471
    .line 472
    .line 473
    const v9, 0x7f080140

    .line 474
    .line 475
    .line 476
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setCheckedIconResource(I)V

    .line 477
    .line 478
    .line 479
    new-instance v9, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 480
    .line 481
    const/4 v10, 0x7

    .line 482
    invoke-direct {v9, v10, v0, v7}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    .line 487
    .line 488
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 489
    .line 490
    const/4 v9, -0x2

    .line 491
    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 492
    .line 493
    .line 494
    const/high16 v9, 0x40800000    # 4.0f

    .line 495
    .line 496
    invoke-static {v9}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    invoke-virtual {v7, v9, v3, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .line 505
    .line 506
    iget-object v7, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 507
    .line 508
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v7, Landroid/widget/LinearLayout;

    .line 514
    .line 515
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    .line 517
    .line 518
    add-int/lit8 v6, v6, 0x1

    .line 519
    .line 520
    goto/16 :goto_2

    .line 521
    .line 522
    :cond_2
    iget-object v0, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v0, Landroid/widget/ScrollView;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    return-object v0

    .line 535
    :cond_3
    const-string v0, "title"

    .line 536
    .line 537
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v1

    .line 541
    :cond_4
    move-object v15, v4

    .line 542
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string v1, "Missing required view with ID: "

    .line 551
    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    return-object v15
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/widget/ScrollView;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 30
    .line 31
    iget-object v4, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->title:Lorg/wikipedia/page/PageTitle;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v2, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object v3, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance v6, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/16 v7, 0xa

    .line 51
    .line 52
    invoke-direct {v6, v7, v0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 59
    .line 60
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3, v2}, Lcoil3/util/BitmapsKt;->setTextDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-direct {v2, v0, v5, v3}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x3

    .line 72
    invoke-static {v1, v5, v5, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->editSummaryHandler:Lokhttp3/MultipartBody$Builder;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    const-string p0, "title"

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v5
.end method
