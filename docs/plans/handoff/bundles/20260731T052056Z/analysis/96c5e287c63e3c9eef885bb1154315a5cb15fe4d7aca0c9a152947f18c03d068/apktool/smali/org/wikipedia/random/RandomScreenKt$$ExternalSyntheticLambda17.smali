.class public final synthetic Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$3:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->keyToCallback:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    check-cast v1, Landroidx/activity/result/ActivityResultCallback;

    .line 21
    .line 22
    check-cast v0, Lkotlin/ExceptionsKt;

    .line 23
    .line 24
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 25
    .line 26
    if-ne v3, p2, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->pendingResults:Landroid/os/Bundle;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->parsedPendingResults:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    new-instance v3, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    .line 33
    .line 34
    invoke-direct {v3, v1, v0}, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;-><init>(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p1}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    const-class p0, Landroidx/activity/result/ActivityResult;

    .line 57
    .line 58
    invoke-static {p2, v2, p0}, Landroidx/room/Room;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroidx/activity/result/ActivityResult;

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p1, p0, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 72
    .line 73
    invoke-virtual {v0, p0, p1}, Lkotlin/ExceptionsKt;->parseResult(Landroid/content/Intent;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-interface {v1, p0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 82
    .line 83
    if-ne v0, p2, :cond_2

    .line 84
    .line 85
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 90
    .line 91
    if-ne p1, p2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->unregister$activity(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    return-void

    .line 97
    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 98
    .line 99
    check-cast v2, Landroid/hardware/SensorManager;

    .line 100
    .line 101
    check-cast v1, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;

    .line 102
    .line 103
    check-cast v0, Landroid/hardware/Sensor;

    .line 104
    .line 105
    sget-object p1, Lorg/wikipedia/random/RandomScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    aget p1, p1, p2

    .line 112
    .line 113
    const/4 p2, 0x1

    .line 114
    const/4 v3, 0x2

    .line 115
    if-eq p1, p2, :cond_5

    .line 116
    .line 117
    if-eq p1, v3, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    if-eqz v2, :cond_6

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const-wide/16 p1, 0x0

    .line 127
    .line 128
    iput-wide p1, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 129
    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_1
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
