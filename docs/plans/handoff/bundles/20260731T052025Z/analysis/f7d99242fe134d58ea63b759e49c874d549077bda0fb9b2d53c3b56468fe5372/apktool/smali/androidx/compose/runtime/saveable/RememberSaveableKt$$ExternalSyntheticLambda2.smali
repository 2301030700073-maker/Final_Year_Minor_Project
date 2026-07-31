.class public final synthetic Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$5:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v9, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object v13, v0

    .line 25
    check-cast v13, Landroid/app/Activity;

    .line 26
    .line 27
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 28
    .line 29
    move-object v14, v8

    .line 30
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    move-object v15, v7

    .line 33
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    move-object v11, v6

    .line 36
    check-cast v11, Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;

    .line 37
    .line 38
    move-object v12, v5

    .line 39
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    xor-int/2addr v0, v3

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v15, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v13, v0}, Lorg/slf4j/helpers/Util;->setSecure(Landroid/app/Activity;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance v10, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    invoke-direct/range {v10 .. v16}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    invoke-static {v9, v4, v4, v10, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 94
    .line 95
    .line 96
    :goto_0
    return-object v2

    .line 97
    :pswitch_0
    move-object v11, v0

    .line 98
    check-cast v11, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 99
    .line 100
    move-object v12, v9

    .line 101
    check-cast v12, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 102
    .line 103
    move-object v13, v8

    .line 104
    check-cast v13, Ljava/util/ArrayList;

    .line 105
    .line 106
    move-object v14, v7

    .line 107
    check-cast v14, Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    move-object v15, v6

    .line 110
    check-cast v15, Ljava/util/List;

    .line 111
    .line 112
    move-object/from16 v16, v5

    .line 113
    .line 114
    check-cast v16, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual/range {v11 .. v16}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_1
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 126
    .line 127
    check-cast v9, Landroidx/compose/runtime/saveable/Saver;

    .line 128
    .line 129
    check-cast v8, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 130
    .line 131
    check-cast v7, Ljava/lang/String;

    .line 132
    .line 133
    check-cast v5, [Ljava/lang/Object;

    .line 134
    .line 135
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 136
    .line 137
    if-eq v1, v8, :cond_1

    .line 138
    .line 139
    iput-object v8, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 140
    .line 141
    move v1, v3

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    const/4 v1, 0x0

    .line 144
    :goto_1
    iget-object v8, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-nez v8, :cond_2

    .line 151
    .line 152
    iput-object v7, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    move v3, v1

    .line 156
    :goto_2
    iput-object v9, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 157
    .line 158
    iput-object v6, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v5, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 161
    .line 162
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 163
    .line 164
    if-eqz v1, :cond_3

    .line 165
    .line 166
    if-eqz v3, :cond_3

    .line 167
    .line 168
    check-cast v1, Landroidx/core/view/MenuHostHelper;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->unregister()V

    .line 171
    .line 172
    .line 173
    iput-object v4, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register$1()V

    .line 176
    .line 177
    .line 178
    :cond_3
    return-object v2

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
