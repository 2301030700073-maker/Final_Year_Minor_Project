.class public final synthetic Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 12
    iput p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    iput p3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    move-object v9, p1

    .line 14
    check-cast v9, Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    iget-object v5, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    sget-object v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->Companion:Lokio/Path$Companion;

    .line 27
    .line 28
    iget-boolean v8, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 29
    .line 30
    invoke-virtual/range {v4 .. v9}, Lokio/Path$Companion;->invoke(Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 42
    .line 43
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 44
    .line 45
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    aget-object v0, v0, v2

    .line 49
    .line 50
    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/LiveRegionMode;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    new-instance p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, v0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 67
    .line 68
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 69
    .line 70
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 71
    .line 72
    invoke-direct {v2, v1, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1
    check-cast v3, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 85
    .line 86
    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Landroidx/activity/compose/ComposePredictiveBackHandler;->setBackEnabled(Z)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, v3, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_2
    check-cast v3, Landroidx/activity/compose/ComposeBackHandler;

    .line 99
    .line 100
    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 101
    .line 102
    iget-object p0, v3, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose$3;

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 107
    .line 108
    .line 109
    iget-object p0, v3, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    .line 112
    .line 113
    invoke-virtual {p0, v2}, Landroidx/navigationevent/NavigationEventHandler;->setBackEnabled(Z)V

    .line 114
    .line 115
    .line 116
    new-instance p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    .line 117
    .line 118
    invoke-direct {p0, p1, v3, v1}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
