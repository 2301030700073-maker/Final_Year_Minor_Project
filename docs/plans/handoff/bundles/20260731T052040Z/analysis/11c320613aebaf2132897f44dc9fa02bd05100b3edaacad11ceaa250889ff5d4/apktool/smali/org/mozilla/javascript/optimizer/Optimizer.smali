.class Lorg/mozilla/javascript/optimizer/Optimizer;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field static final AnyType:I = 0x3

.field static final NoType:I = 0x0

.field static final NumberType:I = 0x1


# instance fields
.field private inDirectCallFunction:Z

.field private parameterUsedInNumberContext:Z

.field theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildStatementList_r(Lorg/mozilla/javascript/Node;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/Node;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8f

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x9b

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x92

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x7a

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_1
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-static {p0, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    return-void
.end method

.method private convertParameter(Lorg/mozilla/javascript/Node;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3c

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/16 p0, 0x8

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method private markDCPNumberContext(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3c

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    .line 15
    .line 16
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    new-array v2, v1, [Lorg/mozilla/javascript/Node;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    .line 50
    .line 51
    :goto_0
    if-ge v0, v1, :cond_1

    .line 52
    .line 53
    aget-object v3, v2, v0

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean p0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setParameterNumberContext(Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method private rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 1
    :goto_0
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p2, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lorg/mozilla/javascript/Node;

    .line 25
    .line 26
    const/16 v2, 0xa3

    .line 27
    .line 28
    invoke-direct {v1, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->addChildBefore(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    move-object p2, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method private rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa3

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    const/16 v6, 0x27

    .line 13
    .line 14
    if-eq v0, v6, :cond_2e

    .line 15
    .line 16
    const/16 v7, 0x29

    .line 17
    .line 18
    if-eq v0, v7, :cond_2a

    .line 19
    .line 20
    const/16 v7, 0x2b

    .line 21
    .line 22
    if-eq v0, v7, :cond_26

    .line 23
    .line 24
    const/16 v7, 0x2d

    .line 25
    .line 26
    if-eq v0, v7, :cond_25

    .line 27
    .line 28
    const/16 v7, 0x51

    .line 29
    .line 30
    const/16 v8, 0xa4

    .line 31
    .line 32
    if-eq v0, v7, :cond_1f

    .line 33
    .line 34
    const/16 v7, 0x93

    .line 35
    .line 36
    if-eq v0, v7, :cond_1d

    .line 37
    .line 38
    const/16 v7, 0x9a

    .line 39
    .line 40
    if-eq v0, v7, :cond_2a

    .line 41
    .line 42
    const/16 v7, 0xaa

    .line 43
    .line 44
    if-eq v0, v7, :cond_16

    .line 45
    .line 46
    const/16 v7, 0x3c

    .line 47
    .line 48
    if-eq v0, v7, :cond_13

    .line 49
    .line 50
    const/16 p2, 0x3d

    .line 51
    .line 52
    if-eq v0, p2, :cond_16

    .line 53
    .line 54
    const/16 p2, 0x77

    .line 55
    .line 56
    if-eq v0, p2, :cond_d

    .line 57
    .line 58
    const/16 p2, 0x78

    .line 59
    .line 60
    if-eq v0, p2, :cond_d

    .line 61
    .line 62
    packed-switch v0, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    packed-switch v0, :pswitch_data_1

    .line 66
    .line 67
    .line 68
    packed-switch v0, :pswitch_data_2

    .line 69
    .line 70
    .line 71
    packed-switch v0, :pswitch_data_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 79
    .line 80
    .line 81
    return v4

    .line 82
    :pswitch_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ne v0, v5, :cond_0

    .line 91
    .line 92
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    .line 98
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 102
    .line 103
    .line 104
    return v5

    .line 105
    :cond_0
    return v4

    .line 106
    :pswitch_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_1

    .line 133
    .line 134
    return v4

    .line 135
    :cond_1
    if-ne v6, v5, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_3

    .line 146
    .line 147
    if-ne v1, v5, :cond_6

    .line 148
    .line 149
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    if-ne v1, v5, :cond_5

    .line 154
    .line 155
    if-ne v6, v5, :cond_4

    .line 156
    .line 157
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 158
    .line 159
    .line 160
    return v5

    .line 161
    :cond_4
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    if-ne v6, v5, :cond_6

    .line 166
    .line 167
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 168
    .line 169
    .line 170
    :cond_6
    :goto_0
    return v4

    .line 171
    :pswitch_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_8

    .line 198
    .line 199
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_7

    .line 204
    .line 205
    return v4

    .line 206
    :cond_7
    if-ne v6, v5, :cond_c

    .line 207
    .line 208
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_8
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-eqz p0, :cond_9

    .line 217
    .line 218
    if-ne v1, v5, :cond_c

    .line 219
    .line 220
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_9
    if-ne v1, v5, :cond_b

    .line 225
    .line 226
    if-ne v6, v5, :cond_a

    .line 227
    .line 228
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_a
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_b
    if-ne v6, v5, :cond_c

    .line 237
    .line 238
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 239
    .line 240
    .line 241
    :cond_c
    :goto_1
    return v4

    .line 242
    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const/16 v0, 0x1f

    .line 247
    .line 248
    invoke-virtual {p2, v0, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-ne v0, v5, :cond_e

    .line 253
    .line 254
    return v4

    .line 255
    :cond_e
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-ne v1, v7, :cond_10

    .line 264
    .line 265
    if-ne v0, v5, :cond_f

    .line 266
    .line 267
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_f

    .line 272
    .line 273
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 274
    .line 275
    .line 276
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 277
    .line 278
    .line 279
    return v5

    .line 280
    :cond_f
    return v4

    .line 281
    :cond_10
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-eq p0, v6, :cond_12

    .line 286
    .line 287
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    const/16 p1, 0x21

    .line 292
    .line 293
    if-ne p0, p1, :cond_11

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_11
    return v4

    .line 297
    :cond_12
    :goto_2
    return v0

    .line 298
    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 299
    .line 300
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    .line 305
    .line 306
    if-eqz v1, :cond_14

    .line 307
    .line 308
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 309
    .line 310
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_14

    .line 315
    .line 316
    if-ne p2, v5, :cond_14

    .line 317
    .line 318
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 319
    .line 320
    .line 321
    return v5

    .line 322
    :cond_14
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 323
    .line 324
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    if-eqz p0, :cond_15

    .line 329
    .line 330
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 331
    .line 332
    .line 333
    return v5

    .line 334
    :cond_15
    return v4

    .line 335
    :cond_16
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 348
    .line 349
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    iget-boolean v6, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    .line 354
    .line 355
    if-eqz v6, :cond_19

    .line 356
    .line 357
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 358
    .line 359
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_19

    .line 364
    .line 365
    if-ne v0, v5, :cond_18

    .line 366
    .line 367
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_17

    .line 372
    .line 373
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 374
    .line 375
    .line 376
    return v5

    .line 377
    :cond_17
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 378
    .line 379
    .line 380
    return v4

    .line 381
    :cond_18
    return v0

    .line 382
    :cond_19
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 383
    .line 384
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_1b

    .line 389
    .line 390
    if-eq v0, v5, :cond_1a

    .line 391
    .line 392
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 393
    .line 394
    .line 395
    new-instance v0, Lorg/mozilla/javascript/Node;

    .line 396
    .line 397
    invoke-direct {v0, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 401
    .line 402
    .line 403
    :cond_1a
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 404
    .line 405
    .line 406
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 407
    .line 408
    .line 409
    return v5

    .line 410
    :cond_1b
    if-ne v0, v5, :cond_1c

    .line 411
    .line 412
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    if-nez p0, :cond_1c

    .line 417
    .line 418
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 419
    .line 420
    .line 421
    new-instance p0, Lorg/mozilla/javascript/Node;

    .line 422
    .line 423
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 427
    .line 428
    .line 429
    :cond_1c
    return v4

    .line 430
    :cond_1d
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 435
    .line 436
    .line 437
    move-result p0

    .line 438
    if-ne p0, v5, :cond_1e

    .line 439
    .line 440
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 441
    .line 442
    .line 443
    :cond_1e
    return v4

    .line 444
    :cond_1f
    :pswitch_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 445
    .line 446
    .line 447
    move-result-object p2

    .line 448
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 461
    .line 462
    .line 463
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 464
    .line 465
    .line 466
    if-ne v1, v5, :cond_22

    .line 467
    .line 468
    if-ne v2, v5, :cond_20

    .line 469
    .line 470
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 471
    .line 472
    .line 473
    return v5

    .line 474
    :cond_20
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 475
    .line 476
    .line 477
    move-result p0

    .line 478
    if-nez p0, :cond_21

    .line 479
    .line 480
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 481
    .line 482
    .line 483
    new-instance p0, Lorg/mozilla/javascript/Node;

    .line 484
    .line 485
    invoke-direct {p0, v8, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 492
    .line 493
    .line 494
    :cond_21
    return v5

    .line 495
    :cond_22
    if-ne v2, v5, :cond_24

    .line 496
    .line 497
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 498
    .line 499
    .line 500
    move-result p0

    .line 501
    if-nez p0, :cond_23

    .line 502
    .line 503
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 504
    .line 505
    .line 506
    new-instance p0, Lorg/mozilla/javascript/Node;

    .line 507
    .line 508
    invoke-direct {p0, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 515
    .line 516
    .line 517
    :cond_23
    return v5

    .line 518
    :cond_24
    const/4 p0, 0x3

    .line 519
    return p0

    .line 520
    :cond_25
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 521
    .line 522
    .line 523
    return v5

    .line 524
    :cond_26
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 536
    .line 537
    .line 538
    move-result-object p2

    .line 539
    const/16 v0, 0x9

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    check-cast v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 546
    .line 547
    if-eqz v0, :cond_28

    .line 548
    .line 549
    :goto_3
    if-eqz p2, :cond_29

    .line 550
    .line 551
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    if-ne p1, v5, :cond_27

    .line 556
    .line 557
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 558
    .line 559
    .line 560
    :cond_27
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 561
    .line 562
    .line 563
    move-result-object p2

    .line 564
    goto :goto_3

    .line 565
    :cond_28
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 566
    .line 567
    .line 568
    :cond_29
    return v4

    .line 569
    :cond_2a
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 570
    .line 571
    .line 572
    move-result-object p2

    .line 573
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-ne v6, v5, :cond_2b

    .line 586
    .line 587
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-nez v6, :cond_2b

    .line 592
    .line 593
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 594
    .line 595
    .line 596
    new-instance v6, Lorg/mozilla/javascript/Node;

    .line 597
    .line 598
    invoke-direct {v6, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 602
    .line 603
    .line 604
    :cond_2b
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 605
    .line 606
    .line 607
    move-result p2

    .line 608
    if-ne p2, v5, :cond_2c

    .line 609
    .line 610
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 611
    .line 612
    .line 613
    move-result p2

    .line 614
    if-nez p2, :cond_2c

    .line 615
    .line 616
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 617
    .line 618
    .line 619
    :cond_2c
    invoke-direct {p0, v2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 620
    .line 621
    .line 622
    move-result p2

    .line 623
    if-ne p2, v5, :cond_2d

    .line 624
    .line 625
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 626
    .line 627
    .line 628
    move-result p0

    .line 629
    if-nez p0, :cond_2d

    .line 630
    .line 631
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 632
    .line 633
    .line 634
    new-instance p0, Lorg/mozilla/javascript/Node;

    .line 635
    .line 636
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 640
    .line 641
    .line 642
    :cond_2d
    return v4

    .line 643
    :cond_2e
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 644
    .line 645
    .line 646
    move-result-object p2

    .line 647
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    if-ne v6, v5, :cond_2f

    .line 656
    .line 657
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 658
    .line 659
    .line 660
    move-result v6

    .line 661
    if-nez v6, :cond_2f

    .line 662
    .line 663
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 664
    .line 665
    .line 666
    new-instance v6, Lorg/mozilla/javascript/Node;

    .line 667
    .line 668
    invoke-direct {v6, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 672
    .line 673
    .line 674
    :cond_2f
    :try_start_0
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 675
    .line 676
    .line 677
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-ne p2, v5, :cond_30

    .line 679
    .line 680
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    .line 681
    .line 682
    .line 683
    move-result p0

    .line 684
    if-nez p0, :cond_30

    .line 685
    .line 686
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 687
    .line 688
    .line 689
    :cond_30
    return v4

    .line 690
    :catchall_0
    move-exception p0

    .line 691
    throw p0

    .line 692
    nop

    .line 693
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :pswitch_data_3
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method
