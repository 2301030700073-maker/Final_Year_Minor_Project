.class public final Landroidx/collection/Entries$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/Entries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/Entries;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/Entries;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/Entries$iterator$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/collection/Entries$iterator$1;-><init>(Landroidx/collection/Entries;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Entries$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/collection/Entries$iterator$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/collection/Entries$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/Entries$iterator$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v4, :cond_0

    .line 12
    .line 13
    iget v1, v0, Landroidx/collection/Entries$iterator$1;->I$3:I

    .line 14
    .line 15
    iget v5, v0, Landroidx/collection/Entries$iterator$1;->I$2:I

    .line 16
    .line 17
    iget-wide v6, v0, Landroidx/collection/Entries$iterator$1;->J$0:J

    .line 18
    .line 19
    iget v8, v0, Landroidx/collection/Entries$iterator$1;->I$1:I

    .line 20
    .line 21
    iget v9, v0, Landroidx/collection/Entries$iterator$1;->I$0:I

    .line 22
    .line 23
    iget-object v10, v0, Landroidx/collection/Entries$iterator$1;->L$2:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v10, [J

    .line 26
    .line 27
    iget-object v11, v0, Landroidx/collection/Entries$iterator$1;->L$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v11, Landroidx/collection/Entries;

    .line 30
    .line 31
    iget-object v12, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v12, Lkotlin/sequences/SequenceBuilderIterator;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0

    .line 47
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 53
    .line 54
    iget-object v5, v0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

    .line 55
    .line 56
    iget-object v6, v5, Landroidx/collection/Entries;->parent:Landroidx/collection/MutableScatterMap;

    .line 57
    .line 58
    iget-object v6, v6, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 59
    .line 60
    array-length v7, v6

    .line 61
    add-int/lit8 v7, v7, -0x2

    .line 62
    .line 63
    if-ltz v7, :cond_5

    .line 64
    .line 65
    move v8, v2

    .line 66
    :goto_0
    aget-wide v9, v6, v8

    .line 67
    .line 68
    not-long v11, v9

    .line 69
    const/4 v13, 0x7

    .line 70
    shl-long/2addr v11, v13

    .line 71
    and-long/2addr v11, v9

    .line 72
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr v11, v13

    .line 78
    cmp-long v11, v11, v13

    .line 79
    .line 80
    if-eqz v11, :cond_4

    .line 81
    .line 82
    sub-int v11, v8, v7

    .line 83
    .line 84
    not-int v11, v11

    .line 85
    ushr-int/lit8 v11, v11, 0x1f

    .line 86
    .line 87
    rsub-int/lit8 v11, v11, 0x8

    .line 88
    .line 89
    move v12, v11

    .line 90
    move-object v11, v5

    .line 91
    move v5, v12

    .line 92
    move-object v12, v1

    .line 93
    move v1, v2

    .line 94
    move-wide/from16 v17, v9

    .line 95
    .line 96
    move-object v10, v6

    .line 97
    move v9, v7

    .line 98
    move-wide/from16 v6, v17

    .line 99
    .line 100
    :goto_1
    if-ge v1, v5, :cond_3

    .line 101
    .line 102
    const-wide/16 v13, 0xff

    .line 103
    .line 104
    and-long/2addr v13, v6

    .line 105
    const-wide/16 v15, 0x80

    .line 106
    .line 107
    cmp-long v13, v13, v15

    .line 108
    .line 109
    if-gez v13, :cond_2

    .line 110
    .line 111
    shl-int/lit8 v3, v8, 0x3

    .line 112
    .line 113
    add-int/2addr v3, v1

    .line 114
    new-instance v13, Landroidx/collection/MapEntry;

    .line 115
    .line 116
    iget-object v14, v11, Landroidx/collection/Entries;->parent:Landroidx/collection/MutableScatterMap;

    .line 117
    .line 118
    iget-object v15, v14, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 119
    .line 120
    aget-object v15, v15, v3

    .line 121
    .line 122
    iget-object v14, v14, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 123
    .line 124
    aget-object v3, v14, v3

    .line 125
    .line 126
    invoke-direct {v13, v15, v3, v2}, Landroidx/collection/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    iput-object v12, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v11, v0, Landroidx/collection/Entries$iterator$1;->L$1:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v10, v0, Landroidx/collection/Entries$iterator$1;->L$2:Ljava/lang/Object;

    .line 134
    .line 135
    iput v9, v0, Landroidx/collection/Entries$iterator$1;->I$0:I

    .line 136
    .line 137
    iput v8, v0, Landroidx/collection/Entries$iterator$1;->I$1:I

    .line 138
    .line 139
    iput-wide v6, v0, Landroidx/collection/Entries$iterator$1;->J$0:J

    .line 140
    .line 141
    iput v5, v0, Landroidx/collection/Entries$iterator$1;->I$2:I

    .line 142
    .line 143
    iput v1, v0, Landroidx/collection/Entries$iterator$1;->I$3:I

    .line 144
    .line 145
    iput v4, v0, Landroidx/collection/Entries$iterator$1;->label:I

    .line 146
    .line 147
    invoke-virtual {v12, v13, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_2
    :goto_2
    shr-long/2addr v6, v3

    .line 154
    add-int/2addr v1, v4

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    if-ne v5, v3, :cond_5

    .line 157
    .line 158
    move v7, v9

    .line 159
    move-object v6, v10

    .line 160
    move-object v5, v11

    .line 161
    move-object v1, v12

    .line 162
    :cond_4
    if-eq v8, v7, :cond_5

    .line 163
    .line 164
    add-int/lit8 v8, v8, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    .line 169
    return-object v0
.end method
