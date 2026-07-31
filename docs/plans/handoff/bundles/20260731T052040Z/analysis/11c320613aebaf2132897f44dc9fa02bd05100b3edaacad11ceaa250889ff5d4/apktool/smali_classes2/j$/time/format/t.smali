.class public Lj$/time/format/t;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/time/format/e;


# static fields
.field public static volatile c:Ljava/util/Map$Entry;

.field public static volatile d:Ljava/util/Map$Entry;


# instance fields
.field public final a:Lj$/desugar/sun/nio/fs/m;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj$/desugar/sun/nio/fs/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/format/t;->a:Lj$/desugar/sun/nio/fs/m;

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/format/t;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Lj$/time/format/w;Ljava/lang/CharSequence;IILj$/time/format/k;)I
    .locals 4

    .line 1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-lt p3, v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0, v2}, Lj$/time/ZoneId;->b0(Ljava/lang/String;Z)Lj$/time/ZoneId;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V

    .line 25
    .line 26
    .line 27
    return p3

    .line 28
    :cond_0
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v3, 0x30

    .line 33
    .line 34
    if-eq v1, v3, :cond_4

    .line 35
    .line 36
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v3, 0x5a

    .line 41
    .line 42
    invoke-virtual {p0, v1, v3}, Lj$/time/format/w;->a(CC)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Lj$/time/format/w;

    .line 50
    .line 51
    iget-object v3, p0, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 52
    .line 53
    invoke-direct {v1, v3}, Lj$/time/format/w;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v3, p0, Lj$/time/format/w;->b:Z

    .line 57
    .line 58
    iput-boolean v3, v1, Lj$/time/format/w;->b:Z

    .line 59
    .line 60
    iget-boolean v3, p0, Lj$/time/format/w;->c:Z

    .line 61
    .line 62
    iput-boolean v3, v1, Lj$/time/format/w;->c:Z

    .line 63
    .line 64
    invoke-virtual {p4, v1, p1, p3}, Lj$/time/format/k;->n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-gez p1, :cond_3

    .line 69
    .line 70
    :try_start_0
    sget-object p1, Lj$/time/format/k;->e:Lj$/time/format/k;

    .line 71
    .line 72
    if-ne p4, p1, :cond_2

    .line 73
    .line 74
    not-int p0, p2

    .line 75
    return p0

    .line 76
    :cond_2
    invoke-static {v0, v2}, Lj$/time/ZoneId;->b0(Ljava/lang/String;Z)Lj$/time/ZoneId;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V

    .line 81
    .line 82
    .line 83
    return p3

    .line 84
    :cond_3
    sget-object p3, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 85
    .line 86
    invoke-virtual {v1, p3}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide p3

    .line 94
    long-to-int p3, p3

    .line 95
    invoke-static {p3}, Lj$/time/ZoneOffset;->i0(I)Lj$/time/ZoneOffset;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {v0, p3}, Lj$/time/ZoneId;->c0(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p0, p3}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return p1

    .line 107
    :catch_0
    not-int p0, p2

    .line 108
    return p0

    .line 109
    :cond_4
    :goto_0
    invoke-static {v0, v2}, Lj$/time/ZoneId;->b0(Ljava/lang/String;Z)Lj$/time/ZoneId;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V

    .line 114
    .line 115
    .line 116
    return p3
.end method


# virtual methods
.method public a(Lj$/time/format/w;)Lj$/time/format/n;
    .locals 6

    .line 1
    sget-object v0, Lj$/time/zone/i;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-boolean v2, p1, Lj$/time/format/w;->b:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    sget-object v2, Lj$/time/format/t;->c:Ljava/util/Map$Entry;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lj$/time/format/t;->d:Ljava/util/Map$Entry;

    .line 15
    .line 16
    :goto_0
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v3, v1, :cond_8

    .line 29
    .line 30
    :cond_1
    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v2, p1, Lj$/time/format/w;->b:Z

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    sget-object v2, Lj$/time/format/t;->c:Ljava/util/Map$Entry;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_5

    .line 40
    :cond_2
    sget-object v2, Lj$/time/format/t;->d:Ljava/util/Map$Entry;

    .line 41
    .line 42
    :goto_1
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eq v3, v1, :cond_7

    .line 55
    .line 56
    :cond_3
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v3, ""

    .line 63
    .line 64
    iget-boolean v4, p1, Lj$/time/format/w;->b:Z

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    new-instance v4, Lj$/time/format/n;

    .line 70
    .line 71
    invoke-direct {v4, v3, v5, v5}, Lj$/time/format/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/n;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    new-instance v4, Lj$/time/format/m;

    .line 76
    .line 77
    invoke-direct {v4, v3, v5, v5}, Lj$/time/format/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/n;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v4, v3, v3}, Lj$/time/format/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    invoke-direct {v2, v1, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, p1, Lj$/time/format/w;->b:Z

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    sput-object v2, Lj$/time/format/t;->c:Ljava/util/Map$Entry;

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    sput-object v2, Lj$/time/format/t;->d:Ljava/util/Map$Entry;

    .line 111
    .line 112
    :cond_7
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lj$/time/format/n;

    .line 118
    .line 119
    return-object p0

    .line 120
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p1
.end method

.method public k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/format/t;->a:Lj$/desugar/sun/nio/fs/m;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lj$/time/format/y;->b(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj$/time/ZoneId;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 8

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p3, v0, :cond_9

    .line 6
    .line 7
    if-ne p3, v0, :cond_0

    .line 8
    .line 9
    not-int p0, p3

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x2b

    .line 16
    .line 17
    if-eq v1, v2, :cond_8

    .line 18
    .line 19
    const/16 v2, 0x2d

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v2, p3, 0x2

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-lt v0, v2, :cond_5

    .line 29
    .line 30
    add-int/lit8 v4, p3, 0x1

    .line 31
    .line 32
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v5, 0x55

    .line 37
    .line 38
    invoke-virtual {p1, v1, v5}, Lj$/time/format/w;->a(CC)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x54

    .line 43
    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1, v4, v6}, Lj$/time/format/w;->a(CC)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    add-int/lit8 p0, p3, 0x3

    .line 53
    .line 54
    if-lt v0, p0, :cond_2

    .line 55
    .line 56
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0x43

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lj$/time/format/w;->a(CC)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    sget-object v0, Lj$/time/format/k;->f:Lj$/time/format/k;

    .line 69
    .line 70
    invoke-static {p1, p2, p3, p0, v0}, Lj$/time/format/t;->b(Lj$/time/format/w;Ljava/lang/CharSequence;IILj$/time/format/k;)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :cond_2
    sget-object p0, Lj$/time/format/k;->f:Lj$/time/format/k;

    .line 76
    .line 77
    invoke-static {p1, p2, p3, v2, p0}, Lj$/time/format/t;->b(Lj$/time/format/w;Ljava/lang/CharSequence;IILj$/time/format/k;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_3
    const/16 v5, 0x47

    .line 83
    .line 84
    invoke-virtual {p1, v1, v5}, Lj$/time/format/w;->a(CC)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    add-int/lit8 v5, p3, 0x3

    .line 91
    .line 92
    if-lt v0, v5, :cond_5

    .line 93
    .line 94
    const/16 v7, 0x4d

    .line 95
    .line 96
    invoke-virtual {p1, v4, v7}, Lj$/time/format/w;->a(CC)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p1, v2, v6}, Lj$/time/format/w;->a(CC)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    add-int/lit8 p0, p3, 0x4

    .line 113
    .line 114
    if-lt v0, p0, :cond_4

    .line 115
    .line 116
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/16 v1, 0x30

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Lj$/time/format/w;->a(CC)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    const-string p2, "GMT0"

    .line 129
    .line 130
    invoke-static {p2, v3}, Lj$/time/ZoneId;->b0(Ljava/lang/String;Z)Lj$/time/ZoneId;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V

    .line 135
    .line 136
    .line 137
    return p0

    .line 138
    :cond_4
    sget-object p0, Lj$/time/format/k;->f:Lj$/time/format/k;

    .line 139
    .line 140
    invoke-static {p1, p2, p3, v5, p0}, Lj$/time/format/t;->b(Lj$/time/format/w;Ljava/lang/CharSequence;IILj$/time/format/k;)I

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    return p0

    .line 145
    :cond_5
    invoke-virtual {p0, p1}, Lj$/time/format/t;->a(Lj$/time/format/w;)Lj$/time/format/n;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance v0, Ljava/text/ParsePosition;

    .line 150
    .line 151
    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p2, v0}, Lj$/time/format/n;->c(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-nez p0, :cond_7

    .line 159
    .line 160
    const/16 p0, 0x5a

    .line 161
    .line 162
    invoke-virtual {p1, v1, p0}, Lj$/time/format/w;->a(CC)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_6

    .line 167
    .line 168
    sget-object p0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V

    .line 171
    .line 172
    .line 173
    add-int/2addr p3, v3

    .line 174
    return p3

    .line 175
    :cond_6
    not-int p0, p3

    .line 176
    return p0

    .line 177
    :cond_7
    invoke-static {p0, v3}, Lj$/time/ZoneId;->b0(Ljava/lang/String;Z)Lj$/time/ZoneId;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p1, p0}, Lj$/time/format/w;->f(Lj$/time/ZoneId;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    return p0

    .line 189
    :cond_8
    :goto_0
    sget-object p0, Lj$/time/format/k;->e:Lj$/time/format/k;

    .line 190
    .line 191
    invoke-static {p1, p2, p3, p3, p0}, Lj$/time/format/t;->b(Lj$/time/format/w;Ljava/lang/CharSequence;IILj$/time/format/k;)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    return p0

    .line 196
    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 197
    .line 198
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/format/t;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
