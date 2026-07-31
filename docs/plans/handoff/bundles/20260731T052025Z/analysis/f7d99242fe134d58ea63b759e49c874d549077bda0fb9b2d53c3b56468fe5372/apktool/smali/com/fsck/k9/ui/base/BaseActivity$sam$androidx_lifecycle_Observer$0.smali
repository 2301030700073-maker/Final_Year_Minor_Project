.class public final synthetic Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

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
    iget v0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

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
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 139
    .line 140
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :cond_c
    return v2

    .line 149
    :pswitch_6
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 150
    .line 151
    if-eqz v0, :cond_d

    .line 152
    .line 153
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 154
    .line 155
    if-eqz v0, :cond_d

    .line 156
    .line 157
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 158
    .line 159
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 160
    .line 161
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eq p0, p1, :cond_e

    .line 166
    .line 167
    :cond_d
    move v1, v2

    .line 168
    :cond_e
    return v1

    .line 169
    :pswitch_7
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 170
    .line 171
    if-eqz v0, :cond_f

    .line 172
    .line 173
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 174
    .line 175
    if-eqz v0, :cond_f

    .line 176
    .line 177
    check-cast p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 180
    .line 181
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eq p0, p1, :cond_10

    .line 186
    .line 187
    :cond_f
    move v1, v2

    .line 188
    :cond_10
    return v1

    .line 189
    :pswitch_8
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 190
    .line 191
    if-eqz v0, :cond_11

    .line 192
    .line 193
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 194
    .line 195
    if-eqz v0, :cond_11

    .line 196
    .line 197
    check-cast p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 200
    .line 201
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eq p0, p1, :cond_12

    .line 206
    .line 207
    :cond_11
    move v1, v2

    .line 208
    :cond_12
    return v1

    .line 209
    :pswitch_9
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 210
    .line 211
    if-eqz v0, :cond_13

    .line 212
    .line 213
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 214
    .line 215
    if-eqz v0, :cond_13

    .line 216
    .line 217
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 220
    .line 221
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-eq p0, p1, :cond_14

    .line 226
    .line 227
    :cond_13
    move v1, v2

    .line 228
    :cond_14
    return v1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
    iget v0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    :pswitch_5
    return-object p0

    .line 26
    :pswitch_6
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    check-cast p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    check-cast p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
    iget v0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

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
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

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
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :pswitch_6
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :pswitch_7
    check-cast p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :pswitch_8
    check-cast p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :pswitch_9
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
    iget v0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_6
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_7
    check-cast p0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_8
    check-cast p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_9
    check-cast p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
