.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;

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
    .locals 12

    .line 1
    iget p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x7f090269

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->prepareAndOpenArchiveCalendar(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    .line 35
    .line 36
    invoke-direct {v4, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 49
    .line 50
    invoke-direct {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lkotlin/Pair;

    .line 54
    .line 55
    const-string v6, "invokeSource"

    .line 56
    .line 57
    invoke-direct {v5, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-array p0, v0, [Lkotlin/Pair;

    .line 61
    .line 62
    aput-object v5, p0, v1

    .line 63
    .line 64
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2, p1, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_1
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x0

    .line 89
    const/16 v4, 0x3d8

    .line 90
    .line 91
    const-string v7, "play_click"

    .line 92
    .line 93
    const-string v8, "game_play"

    .line 94
    .line 95
    const-string v9, "game_start"

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    const/4 v11, 0x0

    .line 99
    invoke-static/range {v4 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 116
    .line 117
    invoke-direct {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2, p0, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 132
    .line 133
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->prepareAndOpenArchiveCalendar(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_3
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const/4 v6, 0x0

    .line 150
    const/16 v4, 0x3d8

    .line 151
    .line 152
    const-string v7, "play_click"

    .line 153
    .line 154
    const-string v8, "game_play"

    .line 155
    .line 156
    const-string v9, "game_start"

    .line 157
    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    invoke-static/range {v4 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 172
    .line 173
    const/4 v4, -0x1

    .line 174
    invoke-direct {v0, p1, v4, v1}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 189
    .line 190
    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 191
    .line 192
    .line 193
    new-instance p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 194
    .line 195
    invoke-direct {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v2, p0, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_5
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 222
    .line 223
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 227
    .line 228
    invoke-direct {v1, p0, v0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 229
    .line 230
    .line 231
    const/4 p0, 0x2

    .line 232
    invoke-static {p1, v2, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
