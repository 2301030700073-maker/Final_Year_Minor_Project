.class public final Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animation:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $scale:Ljava/lang/Object;

.field public final synthetic $visible:Z

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;ZLjava/util/LinkedHashSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$scale:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p3, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$visible:Z

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$animation:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$scale:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$visible:Z

    iput-object p3, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$animation:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$r8$classId:I

    .line 16
    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$scale:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$animation:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$visible:Z

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$visible:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$animation:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$scale:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 13
    .line 14
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 15
    .line 16
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, v0, p2}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 23
    .line 24
    check-cast p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 25
    .line 26
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-direct {p1, p0, p2, v0, v1}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;ZLjava/util/LinkedHashSet;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 33
    .line 34
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 35
    .line 36
    check-cast v1, Landroidx/compose/animation/core/SpringSpec;

    .line 37
    .line 38
    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$visible:Z

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$animation:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->$scale:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->label:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-ne v0, v9, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v6, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v3, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 39
    .line 40
    iget-object v0, v3, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->inputFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 41
    .line 42
    new-instance v3, Lcom/fsck/k9/ui/choosefolder/DisplayMode;

    .line 43
    .line 44
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 45
    .line 46
    invoke-direct {v3, v2, v1}, Lcom/fsck/k9/ui/choosefolder/DisplayMode;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 47
    .line 48
    .line 49
    iput v9, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->label:I

    .line 50
    .line 51
    invoke-virtual {v0, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-ne v0, v8, :cond_2

    .line 56
    .line 57
    move-object v6, v8

    .line 58
    :cond_2
    :goto_0
    return-object v6

    .line 59
    :pswitch_0
    iget v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->label:I

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    if-ne v0, v9, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v0, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move-object v0, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    check-cast v3, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 79
    .line 80
    invoke-static {v3}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->access$getOrCreateImpl(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateRepeatingRequestAsync(Ljava/util/LinkedHashSet;Z)Lkotlinx/coroutines/Deferred;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput v9, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->label:I

    .line 91
    .line 92
    check-cast v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-ne v0, v8, :cond_5

    .line 99
    .line 100
    move-object v0, v8

    .line 101
    :cond_5
    :goto_1
    return-object v0

    .line 102
    :pswitch_1
    iget v0, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->label:I

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    if-ne v0, v9, :cond_6

    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v6, v5

    .line 116
    goto :goto_3

    .line 117
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    move-object v0, v3

    .line 121
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_8
    const v1, 0x3f4ccccd    # 0.8f

    .line 129
    .line 130
    .line 131
    :goto_2
    new-instance v3, Ljava/lang/Float;

    .line 132
    .line 133
    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    .line 134
    .line 135
    .line 136
    check-cast v2, Landroidx/compose/animation/core/SpringSpec;

    .line 137
    .line 138
    iput v9, p0, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;->label:I

    .line 139
    .line 140
    move-object v1, v3

    .line 141
    const/4 v3, 0x0

    .line 142
    const/16 v5, 0xc

    .line 143
    .line 144
    move-object v4, p0

    .line 145
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-ne v0, v8, :cond_9

    .line 150
    .line 151
    move-object v6, v8

    .line 152
    :cond_9
    :goto_3
    return-object v6

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
