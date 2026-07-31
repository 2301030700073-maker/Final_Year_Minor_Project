.class public final synthetic Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 21
    .line 22
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eq p0, p1, :cond_1

    .line 27
    .line 28
    :cond_0
    move v1, v2

    .line 29
    :cond_1
    return v1

    .line 30
    :pswitch_0
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 41
    .line 42
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eq p0, p1, :cond_3

    .line 47
    .line 48
    :cond_2
    move v1, v2

    .line 49
    :cond_3
    return v1

    .line 50
    :pswitch_1
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 61
    .line 62
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eq p0, p1, :cond_5

    .line 67
    .line 68
    :cond_4
    move v1, v2

    .line 69
    :cond_5
    return v1

    .line 70
    :pswitch_2
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 81
    .line 82
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eq p0, p1, :cond_7

    .line 87
    .line 88
    :cond_6
    move v1, v2

    .line 89
    :cond_7
    return v1

    .line 90
    :pswitch_3
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 101
    .line 102
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eq p0, p1, :cond_9

    .line 107
    .line 108
    :cond_8
    move v1, v2

    .line 109
    :cond_9
    return v1

    .line 110
    :pswitch_4
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 111
    .line 112
    if-eqz v0, :cond_a

    .line 113
    .line 114
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 119
    .line 120
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 121
    .line 122
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eq p0, p1, :cond_b

    .line 127
    .line 128
    :cond_a
    move v1, v2

    .line 129
    :cond_b
    return v1

    .line 130
    :pswitch_5
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 131
    .line 132
    if-eqz v0, :cond_c

    .line 133
    .line 134
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 135
    .line 136
    if-eqz v0, :cond_c

    .line 137
    .line 138
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 139
    .line 140
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 141
    .line 142
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eq p0, p1, :cond_d

    .line 147
    .line 148
    :cond_c
    move v1, v2

    .line 149
    :cond_d
    return v1

    .line 150
    :pswitch_6
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 151
    .line 152
    if-eqz v0, :cond_e

    .line 153
    .line 154
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 155
    .line 156
    if-eqz v0, :cond_e

    .line 157
    .line 158
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 161
    .line 162
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eq p0, p1, :cond_f

    .line 167
    .line 168
    :cond_e
    move v1, v2

    .line 169
    :cond_f
    return v1

    .line 170
    :pswitch_7
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 171
    .line 172
    if-eqz v0, :cond_10

    .line 173
    .line 174
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 175
    .line 176
    if-eqz v0, :cond_10

    .line 177
    .line 178
    check-cast p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 181
    .line 182
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eq p0, p1, :cond_11

    .line 187
    .line 188
    :cond_10
    move v1, v2

    .line 189
    :cond_11
    return v1

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    check-cast p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :pswitch_1
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_2
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :pswitch_3
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :pswitch_4
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :pswitch_5
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :pswitch_6
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :pswitch_7
    check-cast p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_6
    check-cast p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_7
    check-cast p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
