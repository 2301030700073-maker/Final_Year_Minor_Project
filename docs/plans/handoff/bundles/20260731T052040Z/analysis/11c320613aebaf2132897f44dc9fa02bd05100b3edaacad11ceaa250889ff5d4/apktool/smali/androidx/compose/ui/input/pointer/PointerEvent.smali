.class public final Landroidx/compose/ui/input/pointer/PointerEvent;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final changes:Ljava/util/List;

.field public final classification:I

.field public final internalPointerEvent:Landroidx/cardview/widget/CardView$1;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/cardview/widget/CardView$1;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/cardview/widget/CardView$1;

    .line 7
    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/16 v1, 0x1d

    .line 12
    .line 13
    if-lt p2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v0

    .line 27
    :goto_0
    iput v2, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->classification:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x3

    .line 52
    const/4 v4, 0x2

    .line 53
    const/4 v5, 0x1

    .line 54
    if-eqz v2, :cond_10

    .line 55
    .line 56
    if-lt p2, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v3, :cond_3

    .line 63
    .line 64
    move p1, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move p1, v0

    .line 67
    :goto_1
    const/4 v6, 0x5

    .line 68
    if-lt p2, v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-ne p2, v6, :cond_4

    .line 75
    .line 76
    move p2, v5

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move p2, v0

    .line 79
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/16 v2, 0xa

    .line 84
    .line 85
    if-eqz v1, :cond_e

    .line 86
    .line 87
    const/16 v7, 0xc

    .line 88
    .line 89
    if-eq v1, v5, :cond_c

    .line 90
    .line 91
    const/16 v8, 0x8

    .line 92
    .line 93
    if-eq v1, v4, :cond_9

    .line 94
    .line 95
    packed-switch v1, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :pswitch_0
    move v0, v6

    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :pswitch_1
    const/4 v0, 0x4

    .line 104
    goto/16 :goto_9

    .line 105
    .line 106
    :pswitch_2
    const/4 v0, 0x6

    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :pswitch_3
    if-eqz p1, :cond_5

    .line 110
    .line 111
    :goto_3
    move v0, v7

    .line 112
    goto :goto_9

    .line 113
    :cond_5
    if-eqz p2, :cond_6

    .line 114
    .line 115
    :goto_4
    move v0, v8

    .line 116
    goto :goto_9

    .line 117
    :cond_6
    :goto_5
    move v0, v4

    .line 118
    goto :goto_9

    .line 119
    :pswitch_4
    if-eqz p1, :cond_7

    .line 120
    .line 121
    :goto_6
    move v0, v2

    .line 122
    goto :goto_9

    .line 123
    :cond_7
    if-eqz p2, :cond_8

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_8
    :goto_7
    move v0, v5

    .line 127
    goto :goto_9

    .line 128
    :cond_9
    :pswitch_5
    if-eqz p1, :cond_a

    .line 129
    .line 130
    const/16 v0, 0xb

    .line 131
    .line 132
    goto :goto_9

    .line 133
    :cond_a
    if-eqz p2, :cond_b

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_b
    move v0, v3

    .line 137
    goto :goto_9

    .line 138
    :cond_c
    if-eqz p1, :cond_d

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_d
    if-eqz p2, :cond_6

    .line 142
    .line 143
    const/16 v0, 0x9

    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_e
    if-eqz p1, :cond_f

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_f
    if-eqz p2, :cond_8

    .line 150
    .line 151
    const/4 v0, 0x7

    .line 152
    goto :goto_9

    .line 153
    :cond_10
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    :goto_8
    if-ge v0, p2, :cond_b

    .line 158
    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 164
    .line 165
    invoke-static {v1}, Lnet/newpipe/app/AppKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_11

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_11
    invoke-static {v1}, Lnet/newpipe/app/AppKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_12

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :goto_9
    iput v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/cardview/widget/CardView$1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/cardview/widget/CardView$1;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/view/MotionEvent;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method
