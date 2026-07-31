.class public final Lcom/google/common/base/Splitter$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public limit:I

.field public next:Ljava/lang/String;

.field public offset:I

.field public state:I

.field public final synthetic this$0:Lokhttp3/ConnectionPool;

.field public final toSplit:Ljava/lang/CharSequence;

.field public final trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionPool;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->this$0:Lokhttp3/ConnectionPool;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 11
    .line 12
    iget-object p1, p2, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    .line 15
    .line 16
    iget p1, p2, Lcom/google/common/base/Splitter;->limit:I

    .line 17
    .line 18
    iput p1, p0, Lcom/google/common/base/Splitter$1$1;->limit:I

    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v2, :cond_c

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_b

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    if-eq v0, v4, :cond_a

    .line 16
    .line 17
    iput v2, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 18
    .line 19
    iget v0, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    const/4 v5, 0x3

    .line 25
    if-eq v2, v4, :cond_9

    .line 26
    .line 27
    iget-object v6, p0, Lcom/google/common/base/Splitter$1$1;->this$0:Lokhttp3/ConnectionPool;

    .line 28
    .line 29
    iget-object v6, v6, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v6, Lcom/google/common/base/CharMatcher$Is;

    .line 32
    .line 33
    iget-object v7, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    invoke-static {v2, v8}, Lokio/Okio;->checkPositionIndex(II)V

    .line 40
    .line 41
    .line 42
    :goto_1
    if-ge v2, v8, :cond_2

    .line 43
    .line 44
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual {v6, v9}, Lcom/google/common/base/CharMatcher$Is;->matches(C)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v2, v4

    .line 59
    :goto_2
    if-ne v2, v4, :cond_3

    .line 60
    .line 61
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v4, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    add-int/lit8 v6, v2, 0x1

    .line 69
    .line 70
    iput v6, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 71
    .line 72
    :goto_3
    iget v6, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 73
    .line 74
    if-ne v6, v0, :cond_4

    .line 75
    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    iput v6, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 79
    .line 80
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-le v6, v2, :cond_0

    .line 85
    .line 86
    iput v4, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/google/common/base/Splitter$1$1;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    .line 90
    .line 91
    if-ge v0, v2, :cond_5

    .line 92
    .line 93
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual {v6, v8}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_5

    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    :goto_5
    if-le v2, v0, :cond_6

    .line 107
    .line 108
    add-int/lit8 v8, v2, -0x1

    .line 109
    .line 110
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual {v6, v8}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_6

    .line 119
    .line 120
    add-int/lit8 v2, v2, -0x1

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_6
    iget v8, p0, Lcom/google/common/base/Splitter$1$1;->limit:I

    .line 124
    .line 125
    if-ne v8, v3, :cond_7

    .line 126
    .line 127
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    iput v4, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    .line 132
    .line 133
    :goto_6
    if-le v2, v0, :cond_8

    .line 134
    .line 135
    add-int/lit8 v4, v2, -0x1

    .line 136
    .line 137
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-virtual {v6, v4}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_8

    .line 146
    .line 147
    add-int/lit8 v2, v2, -0x1

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_7
    sub-int/2addr v8, v3

    .line 151
    iput v8, p0, Lcom/google/common/base/Splitter$1$1;->limit:I

    .line 152
    .line 153
    :cond_8
    invoke-interface {v7, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto :goto_7

    .line 162
    :cond_9
    iput v5, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    :goto_7
    iput-object v0, p0, Lcom/google/common/base/Splitter$1$1;->next:Ljava/lang/String;

    .line 166
    .line 167
    iget v0, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 168
    .line 169
    if-eq v0, v5, :cond_a

    .line 170
    .line 171
    iput v3, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 172
    .line 173
    return v3

    .line 174
    :cond_a
    return v1

    .line 175
    :cond_b
    return v3

    .line 176
    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m()V

    .line 177
    .line 178
    .line 179
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$1$1;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/google/common/base/Splitter$1$1;->state:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->next:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/google/common/base/Splitter$1$1;->next:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
