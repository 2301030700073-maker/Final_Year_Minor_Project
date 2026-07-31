.class public final synthetic Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/collections/ArrayDeque;

.field public final synthetic f$1:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;


# direct methods
.method public synthetic constructor <init>(Lkotlin/collections/ArrayDeque;Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->f$0:Lkotlin/collections/ArrayDeque;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;Lkotlin/collections/ArrayDeque;)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    iput-object p2, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->f$0:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->f$0:Lkotlin/collections/ArrayDeque;

    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v4, v2, v3, p0}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string/jumbo p0, "\u2550\u2550 State machine history dump \u2550\u2550"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "BEGINNING OF HISTORY DUMP:"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, "---"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, "END OF HISTORY DUMP"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_0
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logTag:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v7, "\u2500\u2500 "

    .line 94
    .line 95
    .line 96
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, ": Latest transition \u2500\u2500"

    .line 103
    .line 104
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->getLastIndex(Ljava/util/List;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_0

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    sub-int/2addr v1, v2

    .line 126
    invoke-virtual {v3, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;

    .line 131
    .line 132
    iget-object v1, v1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;->timestamp:Lkotlin/time/Instant;

    .line 133
    .line 134
    :goto_0
    iget-object p0, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Lcom/google/zxing/BinaryBitmap;

    .line 137
    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/BinaryBitmap;->buildTransitionRecord(Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;Lkotlin/time/Instant;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
