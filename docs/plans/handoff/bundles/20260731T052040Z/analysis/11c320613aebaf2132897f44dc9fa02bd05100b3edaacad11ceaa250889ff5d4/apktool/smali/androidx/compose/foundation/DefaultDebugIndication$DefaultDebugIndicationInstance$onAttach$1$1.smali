.class public final Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $focusCount:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $pressCount:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 2
    .line 3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 15
    .line 16
    add-int/2addr p1, v3

    .line 17
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 25
    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    iget p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 47
    .line 48
    add-int/2addr p1, v3

    .line 49
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 57
    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 59
    .line 60
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    instance-of p2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 64
    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 68
    .line 69
    add-int/2addr p1, v3

    .line 70
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 78
    .line 79
    add-int/lit8 p1, p1, -0x1

    .line 80
    .line 81
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 82
    .line 83
    :cond_6
    :goto_0
    iget p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 84
    .line 85
    const/4 p2, 0x0

    .line 86
    if-lez p1, :cond_7

    .line 87
    .line 88
    move p1, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_7
    move p1, p2

    .line 91
    :goto_1
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 92
    .line 93
    if-lez v1, :cond_8

    .line 94
    .line 95
    move v1, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_8
    move v1, p2

    .line 98
    :goto_2
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 99
    .line 100
    if-lez v0, :cond_9

    .line 101
    .line 102
    move v0, v3

    .line 103
    goto :goto_3

    .line 104
    :cond_9
    move v0, p2

    .line 105
    :goto_3
    iget-object p0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 106
    .line 107
    iget-boolean v2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    .line 108
    .line 109
    if-eq v2, p1, :cond_a

    .line 110
    .line 111
    iput-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    .line 112
    .line 113
    move p2, v3

    .line 114
    :cond_a
    iget-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    .line 115
    .line 116
    if-eq p1, v1, :cond_b

    .line 117
    .line 118
    iput-boolean v1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    .line 119
    .line 120
    move p2, v3

    .line 121
    :cond_b
    iget-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    .line 122
    .line 123
    if-eq p1, v0, :cond_c

    .line 124
    .line 125
    iput-boolean v0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_c
    move v3, p2

    .line 129
    :goto_4
    if-eqz v3, :cond_d

    .line 130
    .line 131
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 132
    .line 133
    .line 134
    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method
