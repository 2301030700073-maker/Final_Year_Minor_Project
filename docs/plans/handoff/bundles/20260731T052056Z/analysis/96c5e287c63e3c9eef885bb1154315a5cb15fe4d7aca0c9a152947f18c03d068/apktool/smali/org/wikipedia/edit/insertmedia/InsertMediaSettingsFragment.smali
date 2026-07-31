.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;",
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

.field public activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

.field public currentVoiceInputParentLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getAlternativeText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getCaptionText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "activity"

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public final hide(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ScrollView;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 36
    .line 37
    const/16 v0, 0x1c

    .line 38
    .line 39
    invoke-static {p1, v1, v1, v0}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    const-string p0, "activity"

    .line 56
    .line 57
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public final launchVoiceInput()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    .line 11
    .line 12
    const-string v3, "free_form"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f1201ea

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

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
    const v2, 0x7f0c0197

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
    const v2, 0x7f090057

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    move-object v7, v4

    .line 28
    check-cast v7, Landroid/widget/Button;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v7, :cond_5

    .line 32
    .line 33
    const v2, 0x7f0902c1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v8, v5

    .line 41
    check-cast v8, Lorg/wikipedia/views/WikiCardView;

    .line 42
    .line 43
    if-eqz v8, :cond_5

    .line 44
    .line 45
    const v2, 0x7f0902de

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v9, v5

    .line 53
    check-cast v9, Landroid/widget/ImageView;

    .line 54
    .line 55
    if-eqz v9, :cond_5

    .line 56
    .line 57
    move-object v6, v1

    .line 58
    check-cast v6, Landroid/widget/ScrollView;

    .line 59
    .line 60
    const v2, 0x7f09038d

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    move-object v10, v5

    .line 68
    check-cast v10, Lorg/wikipedia/views/PlainPasteEditText;

    .line 69
    .line 70
    if-eqz v10, :cond_5

    .line 71
    .line 72
    const v2, 0x7f09038e

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v11, v5

    .line 80
    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 81
    .line 82
    if-eqz v11, :cond_5

    .line 83
    .line 84
    const v2, 0x7f09038f

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move-object v12, v5

    .line 92
    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    .line 93
    .line 94
    if-eqz v12, :cond_5

    .line 95
    .line 96
    const v2, 0x7f090390

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    move-object v13, v5

    .line 104
    check-cast v13, Lorg/wikipedia/views/PlainPasteEditText;

    .line 105
    .line 106
    if-eqz v13, :cond_5

    .line 107
    .line 108
    const v2, 0x7f090391

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    move-object v14, v5

    .line 116
    check-cast v14, Landroid/widget/TextView;

    .line 117
    .line 118
    if-eqz v14, :cond_5

    .line 119
    .line 120
    const v2, 0x7f090392

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    move-object v15, v5

    .line 128
    check-cast v15, Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v15, :cond_5

    .line 131
    .line 132
    new-instance v5, Landroidx/compose/ui/node/NodeChain;

    .line 133
    .line 134
    const/16 v16, 0x2

    .line 135
    .line 136
    invoke-direct/range {v5 .. v16}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 137
    .line 138
    .line 139
    iput-object v5, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 146
    .line 147
    iput-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 148
    .line 149
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 157
    .line 158
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 174
    .line 175
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Landroid/widget/Button;

    .line 192
    .line 193
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;

    .line 194
    .line 195
    const/4 v6, 0x2

    .line 196
    invoke-direct {v2, v0, v6}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Lorg/wikipedia/views/WikiCardView;

    .line 210
    .line 211
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;

    .line 212
    .line 213
    const/4 v6, 0x3

    .line 214
    invoke-direct {v2, v0, v6}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 228
    .line 229
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;

    .line 230
    .line 231
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 245
    .line 246
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;

    .line 247
    .line 248
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 262
    .line 263
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 264
    .line 265
    const-string v3, "activity"

    .line 266
    .line 267
    if-eqz v2, :cond_4

    .line 268
    .line 269
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    const-string v5, "resultImageCaption"

    .line 274
    .line 275
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 290
    .line 291
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 292
    .line 293
    if-eqz v2, :cond_3

    .line 294
    .line 295
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v3, "resultImageAlt"

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 309
    .line 310
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    invoke-direct {v2, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 326
    .line 327
    const v3, 0x7f0906aa

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 341
    .line 342
    .line 343
    const v5, 0x7f1202ed

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 354
    .line 355
    const v6, 0x7f120325

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v8, "<a href=\""

    .line 365
    .line 366
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v5, "\">"

    .line 373
    .line 374
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v6, " ^1</a>"

    .line 381
    .line 382
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    invoke-static {v7}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    const v9, 0x7f0801c3

    .line 394
    .line 395
    .line 396
    filled-new-array {v9}, [I

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    invoke-static {v2, v7, v10}, Lokhttp3/Headers$Companion;->setTextWithDrawables(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;[I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 414
    .line 415
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 426
    .line 427
    .line 428
    const v3, 0x7f1202ec

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    const v7, 0x7f120323

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    filled-new-array {v9}, [I

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-static {v2, v3, v5}, Lokhttp3/Headers$Companion;->setTextWithDrawables(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;[I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 485
    .line 486
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 487
    .line 488
    if-ne v1, v2, :cond_2

    .line 489
    .line 490
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 495
    .line 496
    if-eqz v1, :cond_2

    .line 497
    .line 498
    sget-object v5, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 499
    .line 500
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 505
    .line 506
    if-eqz v1, :cond_0

    .line 507
    .line 508
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    move-object v6, v1

    .line 513
    goto :goto_0

    .line 514
    :cond_0
    move-object v6, v4

    .line 515
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    iget-object v7, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSource:Ljava/lang/String;

    .line 523
    .line 524
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    iget-object v8, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSourceProjects:Ljava/lang/String;

    .line 529
    .line 530
    const/4 v14, 0x0

    .line 531
    const/16 v15, 0x1e8

    .line 532
    .line 533
    const/4 v9, 0x0

    .line 534
    const-string v10, "accepted"

    .line 535
    .line 536
    const/4 v11, 0x0

    .line 537
    const/4 v12, 0x0

    .line 538
    const/4 v13, 0x0

    .line 539
    invoke-static/range {v5 .. v15}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 548
    .line 549
    if-eqz v2, :cond_1

    .line 550
    .line 551
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 552
    .line 553
    if-eqz v2, :cond_1

    .line 554
    .line 555
    iget-object v4, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 556
    .line 557
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    const-string v2, "caption_entry"

    .line 561
    .line 562
    invoke-static {v2, v1, v4}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :cond_2
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Landroid/widget/ScrollView;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    return-object v0

    .line 578
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v4

    .line 582
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v4

    .line 586
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    const-string v1, "Missing required view with ID: "

    .line 595
    .line 596
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    return-object v4
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    return-void
.end method

.method public final sendInsertMediaEvent(Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v2, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v2, v12

    .line 37
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v3, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSource:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v4, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSourceProjects:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v10, 0x0

    .line 53
    const/16 v11, 0x1e8

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    const-string v6, "accepted"

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    invoke-static/range {v1 .. v11}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    iget-object v12, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const-string p0, "caption_entry"

    .line 83
    .line 84
    invoke-static {p1, p0, v0, v12}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public final show()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ScrollView;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "activity"

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const v2, 0x7f120321

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Landroid/widget/ImageView;

    .line 63
    .line 64
    iget-object v3, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 65
    .line 66
    const/16 v4, 0x1c

    .line 67
    .line 68
    invoke-static {v2, v3, v1, v4}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Landroid/widget/TextView;

    .line 95
    .line 96
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 97
    .line 98
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    const-string v2, ""

    .line 103
    .line 104
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_2

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :cond_2
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "input_method"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
.end method
