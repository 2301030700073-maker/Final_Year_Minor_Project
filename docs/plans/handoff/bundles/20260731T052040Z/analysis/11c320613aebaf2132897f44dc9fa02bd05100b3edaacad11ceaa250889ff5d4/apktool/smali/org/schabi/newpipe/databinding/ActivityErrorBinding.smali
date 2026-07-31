.class public final Lorg/schabi/newpipe/databinding/ActivityErrorBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public errorCommentBox:Ljava/lang/Object;

.field public final errorInfoLabelsView:Ljava/lang/Object;

.field public errorInfosView:Ljava/lang/Object;

.field public errorMessageView:Ljava/lang/Object;

.field public errorReportCopyButton:Ljava/lang/Object;

.field public errorReportEmailButton:Ljava/lang/Object;

.field public errorReportGitHubButton:Ljava/lang/Object;

.field public final errorSorryView:Ljava/lang/Object;

.field public final errorView:Ljava/lang/Object;

.field public rootView:Ljava/lang/Object;

.field public toolbarLayout:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v2, v1, [Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 9
    .line 10
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object v2, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    new-instance v2, Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    invoke-direct {v2}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorMessageView:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    .line 37
    new-array v1, v1, [Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorView:Ljava/lang/Object;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Lorg/schabi/newpipe/views/NewPipeEditText;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/jsoup/nodes/Printer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 48
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Ljava/lang/Object;

    .line 49
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Ljava/lang/Object;

    .line 50
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorMessageView:Ljava/lang/Object;

    .line 51
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Ljava/lang/Object;

    .line 52
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportEmailButton:Ljava/lang/Object;

    .line 53
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportGitHubButton:Ljava/lang/Object;

    .line 54
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 55
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorView:Ljava/lang/Object;

    .line 56
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->toolbarLayout:Ljava/lang/Object;

    return-void
.end method

.method public static final forgetting$removeFrom(Landroidx/compose/runtime/GapRememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    check-cast v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 12
    .line 13
    iget-object v3, v3, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 14
    .line 15
    instance-of v4, v3, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    check-cast v3, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    .line 20
    .line 21
    iget-object v3, v3, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->pausedRemembers:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p0, v3}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->forgetting$removeFrom(Landroidx/compose/runtime/GapRememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    :goto_1
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorMessageView:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorView:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportEmailButton:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportGitHubButton:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method

.method public dispatchAbandons()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Set;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-string v0, "Compose:abandons"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchRememberObservers()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/Set;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    iput-object v3, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->toolbarLayout:Ljava/lang/Object;

    .line 19
    .line 20
    iget v3, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 21
    .line 22
    const/16 v4, 0xb

    .line 23
    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    const-string v3, "Compose:onForgotten"

    .line 27
    .line 28
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v3, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 34
    .line 35
    iget v5, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 36
    .line 37
    add-int/lit8 v5, v5, -0x1

    .line 38
    .line 39
    :goto_0
    const/4 v6, -0x1

    .line 40
    if-ge v6, v5, :cond_5

    .line 41
    .line 42
    iget-object v6, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v6, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    .line 46
    :try_start_1
    instance-of v7, v6, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    move-object v7, v6

    .line 51
    check-cast v7, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 52
    .line 53
    iget-object v7, v7, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 54
    .line 55
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-interface {v7}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    :goto_1
    instance-of v7, v6, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 65
    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3, v6}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    move-object v7, v6

    .line 77
    check-cast v7, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 78
    .line 79
    invoke-interface {v7}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move-object v7, v6

    .line 84
    check-cast v7, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 85
    .line 86
    invoke-interface {v7}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_3
    :try_start_2
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    new-instance v1, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {v1, p0, v6, v4}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_6
    :goto_4
    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 117
    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    const-string v1, "Compose:onRemembered"

    .line 121
    .line 122
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :try_start_3
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Ljava/util/Set;

    .line 128
    .line 129
    if-nez v1, :cond_7

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_7
    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 133
    .line 134
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    :goto_5
    if-ge v3, v0, :cond_9

    .line 138
    .line 139
    aget-object v5, v2, v3

    .line 140
    .line 141
    check-cast v5, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 142
    .line 143
    iget-object v6, v5, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 144
    .line 145
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 146
    .line 147
    .line 148
    :try_start_4
    invoke-interface {v6}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 149
    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :catchall_2
    move-exception v0

    .line 155
    :try_start_5
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 158
    .line 159
    if-eqz p0, :cond_8

    .line 160
    .line 161
    new-instance v1, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    invoke-direct {v1, p0, v5, v4}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :catchall_3
    move-exception p0

    .line 171
    goto :goto_8

    .line 172
    :cond_8
    :goto_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 173
    :cond_9
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_a
    :goto_9
    return-void
.end method

.method public dispatchSideEffects()V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "Compose:sideeffects"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 15
    .line 16
    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    return-void
.end method

.method public forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorMessageView:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, v0}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->forgetting$removeFrom(Landroidx/compose/runtime/GapRememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/util/Set;

    .line 45
    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object p1, p1, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 50
    .line 51
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->toolbarLayout:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroidx/collection/ScatterSet;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    :goto_1
    return-void

    .line 69
    :cond_5
    :goto_2
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    return-object p0
.end method

.method public prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->clear()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
