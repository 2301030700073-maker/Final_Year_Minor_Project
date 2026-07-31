.class public final Landroidx/compose/ui/layout/RectRulersImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final bottom:Landroidx/compose/ui/layout/VerticalRuler;

.field public final left:Landroidx/compose/ui/layout/VerticalRuler;

.field public final name:Ljava/io/Serializable;

.field public final right:Landroidx/compose/ui/layout/VerticalRuler;

.field public final top:Landroidx/compose/ui/layout/VerticalRuler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 155
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    const/4 v1, 0x0

    .line 156
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 157
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->left:Landroidx/compose/ui/layout/VerticalRuler;

    .line 158
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    const/4 v2, 0x1

    .line 159
    invoke-direct {p1, v2, v1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 160
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->top:Landroidx/compose/ui/layout/VerticalRuler;

    .line 161
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 162
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 163
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->right:Landroidx/compose/ui/layout/VerticalRuler;

    .line 164
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 165
    invoke-direct {p1, v2, v1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 166
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->bottom:Landroidx/compose/ui/layout/VerticalRuler;

    return-void
.end method

.method public constructor <init>([Landroidx/compose/ui/layout/RectRulersImpl;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    new-array v1, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, p1, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast v4, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 19
    .line 20
    aget-object v4, v4, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    aput-object v4, v1, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;

    .line 32
    .line 33
    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 37
    .line 38
    invoke-direct {v1, v2, p1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->left:Landroidx/compose/ui/layout/VerticalRuler;

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast p1, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 46
    .line 47
    array-length p1, p1

    .line 48
    new-array v1, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    .line 49
    .line 50
    move v3, v2

    .line 51
    :goto_1
    if-ge v3, p1, :cond_1

    .line 52
    .line 53
    iget-object v4, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 54
    .line 55
    check-cast v4, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 56
    .line 57
    aget-object v4, v4, v3

    .line 58
    .line 59
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getTop()Landroidx/compose/ui/layout/VerticalRuler;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    aput-object v4, v1, v3

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 69
    .line 70
    new-instance v3, Landroidx/compose/ui/layout/HorizontalRuler$Companion$maxOf$1;

    .line 71
    .line 72
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/layout/HorizontalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0, v3}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->top:Landroidx/compose/ui/layout/VerticalRuler;

    .line 79
    .line 80
    iget-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 81
    .line 82
    check-cast p1, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 83
    .line 84
    array-length p1, p1

    .line 85
    new-array v1, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    .line 86
    .line 87
    move v3, v2

    .line 88
    :goto_2
    if-ge v3, p1, :cond_2

    .line 89
    .line 90
    iget-object v4, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 91
    .line 92
    check-cast v4, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 93
    .line 94
    aget-object v4, v4, v3

    .line 95
    .line 96
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    aput-object v4, v1, v3

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;

    .line 106
    .line 107
    invoke-direct {p1, v1, v0}, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 111
    .line 112
    invoke-direct {v1, v2, p1}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->right:Landroidx/compose/ui/layout/VerticalRuler;

    .line 116
    .line 117
    iget-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 118
    .line 119
    check-cast p1, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 120
    .line 121
    array-length p1, p1

    .line 122
    new-array v1, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    .line 123
    .line 124
    :goto_3
    if-ge v2, p1, :cond_3

    .line 125
    .line 126
    iget-object v3, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 127
    .line 128
    check-cast v3, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 129
    .line 130
    aget-object v3, v3, v2

    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/compose/ui/layout/RectRulersImpl;->getBottom()Landroidx/compose/ui/layout/VerticalRuler;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    aput-object v3, v1, v2

    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 142
    .line 143
    new-instance v2, Landroidx/compose/ui/layout/HorizontalRuler$Companion$maxOf$1;

    .line 144
    .line 145
    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/layout/HorizontalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v0, v2}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->bottom:Landroidx/compose/ui/layout/VerticalRuler;

    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public final getBottom()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->bottom:Landroidx/compose/ui/layout/VerticalRuler;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getLeft()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->left:Landroidx/compose/ui/layout/VerticalRuler;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getRight()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->right:Landroidx/compose/ui/layout/VerticalRuler;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getTop()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->top:Landroidx/compose/ui/layout/VerticalRuler;

    .line 4
    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->name:Ljava/io/Serializable;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v6, 0x39

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "innermostOf("

    .line 16
    .line 17
    const-string v4, ")"

    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "RectRulers("

    .line 27
    .line 28
    const/16 v1, 0x29

    .line 29
    .line 30
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
