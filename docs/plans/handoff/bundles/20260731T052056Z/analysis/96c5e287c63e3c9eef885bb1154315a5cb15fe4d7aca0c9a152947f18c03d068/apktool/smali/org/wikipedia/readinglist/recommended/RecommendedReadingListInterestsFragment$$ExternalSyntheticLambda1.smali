.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    instance-of v5, v4, Lorg/wikipedia/util/Resource$Success;

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    check-cast v4, Lorg/wikipedia/util/Resource$Success;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v4, v2

    .line 38
    :goto_0
    if-eqz v4, :cond_2

    .line 39
    .line 40
    iget-object v4, v4, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 43
    .line 44
    iget-object v5, v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 45
    .line 46
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object v6, v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-static {v6, v1}, Lkotlin/uuid/UuidKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {v6, v1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_1
    new-instance v5, Lorg/wikipedia/util/Resource$Success;

    .line 64
    .line 65
    const/16 v6, 0x3b

    .line 66
    .line 67
    invoke-static {v4, v2, v1, v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;I)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v5, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    return-object v3

    .line 78
    :pswitch_0
    move-object/from16 v1, p1

    .line 79
    .line 80
    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v5, v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 90
    .line 91
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    instance-of v7, v6, Lorg/wikipedia/util/Resource$Success;

    .line 96
    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    check-cast v6, Lorg/wikipedia/util/Resource$Success;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-object v6, v2

    .line 103
    :goto_2
    const/4 v7, 0x3

    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    iget-object v6, v6, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 109
    .line 110
    iget-object v8, v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    iget-boolean v10, v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 131
    .line 132
    iget-object v14, v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 133
    .line 134
    iget-object v15, v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 135
    .line 136
    new-instance v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 137
    .line 138
    const/4 v13, 0x1

    .line 139
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;-><init>(ZLjava/util/List;Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V

    .line 140
    .line 141
    .line 142
    new-instance v6, Lorg/wikipedia/util/Resource$Success;

    .line 143
    .line 144
    invoke-direct {v6, v9}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v2, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    const/16 v17, 0x0

    .line 151
    .line 152
    const/16 v18, 0x1fc

    .line 153
    .line 154
    const-string v10, "randomizer_click"

    .line 155
    .line 156
    const-string v11, "rrl_interests_select"

    .line 157
    .line 158
    const/4 v12, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    const/4 v15, 0x0

    .line 162
    const/16 v16, 0x0

    .line 163
    .line 164
    invoke-static/range {v10 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    iget-object v4, v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->randomizeEvent:Lorg/wikipedia/util/SingleLiveData;

    .line 168
    .line 169
    invoke-virtual {v4, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollToItem$2;

    .line 177
    .line 178
    invoke-direct {v4, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/coroutines/Continuation;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v2, v2, v4, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 182
    .line 183
    .line 184
    return-object v3

    .line 185
    :pswitch_1
    move-object/from16 v1, p1

    .line 186
    .line 187
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 193
    .line 194
    if-eqz v2, :cond_5

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const v4, 0x7f1207d6

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const/4 v5, 0x0

    .line 211
    const/16 v6, 0xc

    .line 212
    .line 213
    invoke-static {v2, v4, v5, v6}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 218
    .line 219
    const/16 v5, 0x17

    .line 220
    .line 221
    invoke-direct {v4, v5, v0, v1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    const v0, 0x7f1207d7

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v0, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 231
    .line 232
    .line 233
    :cond_5
    return-object v3

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
