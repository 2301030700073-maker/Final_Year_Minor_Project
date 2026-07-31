.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

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
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->selectedCardView:Lorg/wikipedia/views/WikiCardView;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget p1, p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v5, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 48
    .line 49
    invoke-direct {v5, v0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 53
    .line 54
    invoke-direct {v4, v0, p1, v2}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ILkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v5, v2, v4, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->selectedCardView:Lorg/wikipedia/views/WikiCardView;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    new-instance v6, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 72
    .line 73
    invoke-direct {v6, p1, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 77
    .line 78
    invoke-direct {v4, p1, v1, v2}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ILkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v6, v2, v4, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 100
    .line 101
    invoke-virtual {p1}, Lorg/wikipedia/views/WikiCardView;->setDefaultBorder()V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/wikipedia/views/WikiCardView;->setDefaultBorder()V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_4
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_7
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 194
    .line 195
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 196
    .line 197
    .line 198
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 199
    .line 200
    invoke-direct {v1, p0, v4, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v0, v2, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
