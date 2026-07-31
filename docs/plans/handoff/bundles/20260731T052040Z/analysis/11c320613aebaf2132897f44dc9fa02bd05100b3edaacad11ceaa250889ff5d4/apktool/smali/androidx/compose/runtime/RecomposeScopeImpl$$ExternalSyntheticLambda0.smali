.class public final synthetic Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/RecomposeScopeImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;->f$2:Landroidx/collection/MutableObjectIntMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composition;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 8
    .line 9
    iget v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 10
    .line 11
    iget v4, v0, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 12
    .line 13
    if-ne v3, v4, :cond_8

    .line 14
    .line 15
    iget-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;->f$2:Landroidx/collection/MutableObjectIntMap;

    .line 18
    .line 19
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_8

    .line 24
    .line 25
    instance-of v3, v1, Landroidx/compose/runtime/CompositionImpl;

    .line 26
    .line 27
    if-eqz v3, :cond_8

    .line 28
    .line 29
    iget-object v3, v0, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 30
    .line 31
    array-length v5, v3

    .line 32
    add-int/lit8 v5, v5, -0x2

    .line 33
    .line 34
    if-ltz v5, :cond_8

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    :goto_0
    aget-wide v8, v3, v7

    .line 38
    .line 39
    not-long v10, v8

    .line 40
    const/4 v12, 0x7

    .line 41
    shl-long/2addr v10, v12

    .line 42
    and-long/2addr v10, v8

    .line 43
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v10, v12

    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-eqz v10, :cond_7

    .line 52
    .line 53
    sub-int v10, v7, v5

    .line 54
    .line 55
    not-int v10, v10

    .line 56
    ushr-int/lit8 v10, v10, 0x1f

    .line 57
    .line 58
    const/16 v11, 0x8

    .line 59
    .line 60
    rsub-int/lit8 v10, v10, 0x8

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    :goto_1
    if-ge v12, v10, :cond_6

    .line 64
    .line 65
    const-wide/16 v13, 0xff

    .line 66
    .line 67
    and-long/2addr v13, v8

    .line 68
    const-wide/16 v15, 0x80

    .line 69
    .line 70
    cmp-long v13, v13, v15

    .line 71
    .line 72
    if-gez v13, :cond_4

    .line 73
    .line 74
    shl-int/lit8 v13, v7, 0x3

    .line 75
    .line 76
    add-int/2addr v13, v12

    .line 77
    iget-object v14, v0, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 78
    .line 79
    aget-object v14, v14, v13

    .line 80
    .line 81
    iget-object v15, v0, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 82
    .line 83
    aget v15, v15, v13

    .line 84
    .line 85
    if-eq v15, v4, :cond_0

    .line 86
    .line 87
    const/4 v15, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_0
    const/4 v15, 0x0

    .line 90
    :goto_2
    if-eqz v15, :cond_2

    .line 91
    .line 92
    move-object v6, v1

    .line 93
    check-cast v6, Landroidx/compose/runtime/CompositionImpl;

    .line 94
    .line 95
    move/from16 p1, v11

    .line 96
    .line 97
    iget-object v11, v6, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 98
    .line 99
    invoke-static {v11, v14, v2}, Lorg/jsoup/Jsoup;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-object/from16 v16, v1

    .line 103
    .line 104
    instance-of v1, v14, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    move-object v1, v14

    .line 109
    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 110
    .line 111
    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_1

    .line 116
    .line 117
    iget-object v6, v6, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 118
    .line 119
    invoke-static {v6, v1}, Lorg/jsoup/Jsoup;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    iget-object v1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 123
    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    invoke-virtual {v1, v14}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    move-object/from16 v16, v1

    .line 131
    .line 132
    move/from16 p1, v11

    .line 133
    .line 134
    :cond_3
    :goto_3
    if-eqz v15, :cond_5

    .line 135
    .line 136
    invoke-virtual {v0, v13}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    move-object/from16 v16, v1

    .line 141
    .line 142
    move/from16 p1, v11

    .line 143
    .line 144
    :cond_5
    :goto_4
    shr-long v8, v8, p1

    .line 145
    .line 146
    add-int/lit8 v12, v12, 0x1

    .line 147
    .line 148
    move/from16 v11, p1

    .line 149
    .line 150
    move-object/from16 v1, v16

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    move-object/from16 v16, v1

    .line 154
    .line 155
    move v1, v11

    .line 156
    if-ne v10, v1, :cond_8

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    move-object/from16 v16, v1

    .line 160
    .line 161
    :goto_5
    if-eq v7, v5, :cond_8

    .line 162
    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    .line 165
    move-object/from16 v1, v16

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 170
    .line 171
    return-object v0
.end method
