.class public final Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$lifecycle:Ljava/lang/Object;

.field public final synthetic val$listener:Ljava/lang/Object;

.field public final synthetic val$requestKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentManager$6;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->val$requestKey:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$6;->val$listener:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/BroadcastFrameClock;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/FragmentManager$6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->val$requestKey:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->val$listener:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/fragment/app/FragmentManager$6;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager$6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    aget p2, v0, p2

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    packed-switch p2, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->cancel()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :pswitch_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->pauseCompositionFrameClock()V

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :pswitch_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->val$listener:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p1, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Landroidx/compose/runtime/Latch;

    .line 49
    .line 50
    iget-object p2, p1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p2

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->isOpen()Z

    .line 54
    .line 55
    .line 56
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    :goto_0
    monitor-exit p2

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v2, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    iput-object v2, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v1, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 72
    .line 73
    iput-boolean v0, p1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_1
    if-ge v0, p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 87
    .line 88
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    .line 90
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object p0, v0

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_2
    monitor-exit p2

    .line 104
    throw p0

    .line 105
    :cond_2
    :goto_3
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->resumeCompositionFrameClock()V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :pswitch_3
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->val$requestKey:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Lkotlinx/coroutines/internal/ContextScope;

    .line 116
    .line 117
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 118
    .line 119
    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 120
    .line 121
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$6;->this$0:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 124
    .line 125
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    const/16 v8, 0xa

    .line 131
    .line 132
    move-object v6, p0

    .line 133
    move-object v5, p1

    .line 134
    invoke-direct/range {v2 .. v8}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x0

    .line 138
    invoke-static {p2, p0, v1, v2, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 139
    .line 140
    .line 141
    :goto_4
    :pswitch_4
    return-void

    .line 142
    :pswitch_5
    move-object v6, p0

    .line 143
    iget-object p0, v6, Landroidx/fragment/app/FragmentManager$6;->this$0:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    .line 146
    .line 147
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 148
    .line 149
    iget-object v0, v6, Landroidx/fragment/app/FragmentManager$6;->val$requestKey:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Ljava/lang/String;

    .line 152
    .line 153
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 154
    .line 155
    if-ne p2, v1, :cond_3

    .line 156
    .line 157
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/os/Bundle;

    .line 162
    .line 163
    if-eqz v1, :cond_3

    .line 164
    .line 165
    iget-object v2, v6, Landroidx/fragment/app/FragmentManager$6;->val$listener:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, Landroidx/fragment/app/FragmentResultListener;

    .line 168
    .line 169
    invoke-interface {v2, v0, v1}, Landroidx/fragment/app/FragmentResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const/4 p1, 0x2

    .line 176
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_3

    .line 181
    .line 182
    const-string p1, "FragmentManager"

    .line 183
    .line 184
    const-string v1, "Clearing fragment result with key "

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :cond_3
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 194
    .line 195
    if-ne p2, p1, :cond_4

    .line 196
    .line 197
    iget-object p1, v6, Landroidx/fragment/app/FragmentManager$6;->val$lifecycle:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Landroidx/lifecycle/Lifecycle;

    .line 200
    .line 201
    invoke-virtual {p1, v6}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    .line 205
    .line 206
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_4
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
