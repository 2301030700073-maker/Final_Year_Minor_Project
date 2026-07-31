.class public final Landroidx/compose/ui/focus/FocusRequester;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Cancel:Landroidx/compose/ui/focus/FocusRequester;

.field public static final Default:Landroidx/compose/ui/focus/FocusRequester;

.field public static final Redirect:Landroidx/compose/ui/focus/FocusRequester;


# instance fields
.field public final focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    return-void
.end method

.method public static requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 5
    .line 6
    const-string v1, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    .line 7
    .line 8
    if-eq p0, v0, :cond_10

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 11
    .line 12
    if-eq p0, v0, :cond_f

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string p0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    .line 21
    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    move v2, v1

    .line 32
    :goto_0
    if-ge v2, v0, :cond_e

    .line 33
    .line 34
    aget-object v3, p0, v2

    .line 35
    .line 36
    check-cast v3, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 37
    .line 38
    move-object v4, v3

    .line 39
    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 42
    .line 43
    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    const-string/jumbo v4, "visitChildren called on an unattached node"

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 54
    .line 55
    const/16 v5, 0x10

    .line 56
    .line 57
    new-array v6, v5, [Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    invoke-direct {v4, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 63
    .line 64
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 65
    .line 66
    iget-object v6, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 67
    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    invoke-static {v4, v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    iget v3, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 78
    .line 79
    if-eqz v3, :cond_d

    .line 80
    .line 81
    add-int/lit8 v3, v3, -0x1

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 88
    .line 89
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 90
    .line 91
    and-int/lit16 v6, v6, 0x400

    .line 92
    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    invoke-static {v4, v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    :goto_2
    if-eqz v3, :cond_3

    .line 100
    .line 101
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 102
    .line 103
    and-int/lit16 v6, v6, 0x400

    .line 104
    .line 105
    if-eqz v6, :cond_c

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v7, v6

    .line 109
    :goto_3
    if-eqz v3, :cond_3

    .line 110
    .line 111
    instance-of v8, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 112
    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 116
    .line 117
    const/4 v8, 0x7

    .line 118
    invoke-virtual {v3, v8}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_b

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_5
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 126
    .line 127
    and-int/lit16 v8, v8, 0x400

    .line 128
    .line 129
    if-eqz v8, :cond_b

    .line 130
    .line 131
    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 132
    .line 133
    if-eqz v8, :cond_b

    .line 134
    .line 135
    move-object v8, v3

    .line 136
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 137
    .line 138
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    move v9, v1

    .line 141
    :goto_4
    const/4 v10, 0x1

    .line 142
    if-eqz v8, :cond_a

    .line 143
    .line 144
    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 145
    .line 146
    and-int/lit16 v11, v11, 0x400

    .line 147
    .line 148
    if-eqz v11, :cond_9

    .line 149
    .line 150
    add-int/lit8 v9, v9, 0x1

    .line 151
    .line 152
    if-ne v9, v10, :cond_6

    .line 153
    .line 154
    move-object v3, v8

    .line 155
    goto :goto_5

    .line 156
    :cond_6
    if-nez v7, :cond_7

    .line 157
    .line 158
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 159
    .line 160
    new-array v10, v5, [Landroidx/compose/ui/Modifier$Node;

    .line 161
    .line 162
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    if-eqz v3, :cond_8

    .line 166
    .line 167
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    move-object v3, v6

    .line 171
    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_5
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_a
    if-ne v9, v10, :cond_b

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_b
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    goto :goto_3

    .line 185
    :cond_c
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_e
    return-void

    .line 193
    :cond_f
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_10
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method
