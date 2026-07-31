.class public final Lj$/time/format/v;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final h:Lj$/desugar/sun/nio/fs/m;

.field public static final i:Ljava/util/Map;


# instance fields
.field public a:Lj$/time/format/v;

.field public final b:Lj$/time/format/v;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public e:I

.field public f:C

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lj$/time/format/v;->h:Lj$/desugar/sun/nio/fs/m;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lj$/time/format/v;->i:Ljava/util/Map;

    .line 15
    .line 16
    const/16 v1, 0x47

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x79

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x75

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x51

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Lj$/time/temporal/i;->a:Lj$/time/temporal/g;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x71

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x4d

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const/16 v1, 0x4c

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x44

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const/16 v1, 0x64

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x46

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sget-object v2, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const/16 v1, 0x45

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x63

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const/16 v1, 0x65

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const/16 v1, 0x61

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    sget-object v2, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    .line 158
    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const/16 v1, 0x48

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x6b

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x4b

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const/16 v1, 0x68

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const/16 v1, 0x6d

    .line 207
    .line 208
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 213
    .line 214
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    const/16 v1, 0x73

    .line 218
    .line 219
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 224
    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const/16 v1, 0x53

    .line 229
    .line 230
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const/16 v1, 0x41

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    .line 246
    .line 247
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    const/16 v1, 0x6e

    .line 251
    .line 252
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    const/16 v1, 0x4e

    .line 260
    .line 261
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    sget-object v2, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const/16 v1, 0x67

    .line 271
    .line 272
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    sget-object v2, Lj$/time/temporal/k;->a:Lj$/time/temporal/j;

    .line 277
    .line 278
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lj$/time/format/v;->g:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lj$/time/format/v;->b:Lj$/time/format/v;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lj$/time/format/v;->d:Z

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lj$/time/format/v;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/v;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lj$/time/format/v;->g:I

    .line 27
    iput-object p1, p0, Lj$/time/format/v;->b:Lj$/time/format/v;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lj$/time/format/v;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/DateTimeFormatter;)V
    .locals 1

    .line 1
    const-string v0, "formatter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lj$/time/format/DateTimeFormatter;->d()Lj$/time/format/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Lj$/time/temporal/a;IIZ)V
    .locals 1

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj$/time/format/f;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/f;-><init>(Lj$/time/temporal/p;IIZ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lj$/time/format/f;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/f;-><init>(Lj$/time/temporal/p;IIZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(Lj$/time/format/e;)I
    .locals 4

    .line 1
    const-string v0, "pp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 7
    .line 8
    iget v1, v0, Lj$/time/format/v;->e:I

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v2, Lj$/time/format/l;

    .line 15
    .line 16
    iget-char v3, v0, Lj$/time/format/v;->f:C

    .line 17
    .line 18
    invoke-direct {v2, p1, v1, v3}, Lj$/time/format/l;-><init>(Lj$/time/format/e;IC)V

    .line 19
    .line 20
    .line 21
    move-object p1, v2

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lj$/time/format/v;->e:I

    .line 24
    .line 25
    iput-char v1, v0, Lj$/time/format/v;->f:C

    .line 26
    .line 27
    :cond_1
    iget-object v0, v0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 28
    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lj$/time/format/v;->g:I

    .line 38
    .line 39
    iget-object p0, p0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 40
    .line 41
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-int/lit8 p0, p0, -0x1

    .line 48
    .line 49
    return p0
.end method

.method public final d(C)V
    .locals 1

    .line 1
    new-instance v0, Lj$/time/format/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lj$/time/format/c;-><init>(C)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "literal"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Lj$/time/format/c;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {v0, p1}, Lj$/time/format/c;-><init>(C)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Lj$/time/format/h;

    .line 34
    .line 35
    invoke-direct {v0, v1, p1}, Lj$/time/format/h;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final f(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "Either the date or time style must be non-null"

    .line 7
    .line 8
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Lj$/time/format/i;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lj$/time/format/i;-><init>(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final g(Lj$/time/format/g0;)V
    .locals 2

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "Style must be either full or short"

    .line 16
    .line 17
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Lj$/time/format/h;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1, p1}, Lj$/time/format/h;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lj$/time/format/k;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lj$/time/format/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "pattern"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ge v3, v4, :cond_56

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x7a

    .line 23
    .line 24
    const/16 v6, 0x61

    .line 25
    .line 26
    const/16 v7, 0x5a

    .line 27
    .line 28
    const/16 v8, 0x41

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    if-lt v4, v8, :cond_0

    .line 32
    .line 33
    if-le v4, v7, :cond_1

    .line 34
    .line 35
    :cond_0
    if-lt v4, v6, :cond_4c

    .line 36
    .line 37
    if-gt v4, v5, :cond_4c

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v10, v3, 0x1

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-ge v10, v11, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-ne v11, v4, :cond_2

    .line 52
    .line 53
    add-int/lit8 v10, v10, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sub-int v3, v10, v3

    .line 57
    .line 58
    const/16 v11, 0x70

    .line 59
    .line 60
    const/4 v12, -0x1

    .line 61
    if-ne v4, v11, :cond_9

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-ge v10, v11, :cond_6

    .line 68
    .line 69
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lt v4, v8, :cond_3

    .line 74
    .line 75
    if-le v4, v7, :cond_4

    .line 76
    .line 77
    :cond_3
    if-lt v4, v6, :cond_6

    .line 78
    .line 79
    if-gt v4, v5, :cond_6

    .line 80
    .line 81
    :cond_4
    add-int/lit8 v11, v10, 0x1

    .line 82
    .line 83
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-ge v11, v13, :cond_5

    .line 88
    .line 89
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-ne v13, v4, :cond_5

    .line 94
    .line 95
    add-int/lit8 v11, v11, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    sub-int v10, v11, v10

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move v11, v10

    .line 102
    move v10, v3

    .line 103
    move v3, v2

    .line 104
    :goto_3
    if-eqz v3, :cond_8

    .line 105
    .line 106
    if-lt v3, v9, :cond_7

    .line 107
    .line 108
    iget-object v13, v0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 109
    .line 110
    iput v3, v13, Lj$/time/format/v;->e:I

    .line 111
    .line 112
    const/16 v3, 0x20

    .line 113
    .line 114
    iput-char v3, v13, Lj$/time/format/v;->f:C

    .line 115
    .line 116
    iput v12, v13, Lj$/time/format/v;->g:I

    .line 117
    .line 118
    move v3, v10

    .line 119
    move v10, v11

    .line 120
    goto :goto_4

    .line 121
    :cond_7
    const-string v0, "The pad width must be at least one but was "

    .line 122
    .line 123
    invoke-static {v0, v3}, Lj$/nio/file/m;->n(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_8
    const-string v0, "Pad letter \'p\' must be followed by valid pad pattern: "

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_9
    :goto_4
    sget-object v11, Lj$/time/format/v;->i:Ljava/util/Map;

    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    check-cast v11, Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    move-object v14, v11

    .line 150
    check-cast v14, Lj$/time/temporal/p;

    .line 151
    .line 152
    const/4 v11, 0x5

    .line 153
    const/4 v13, 0x2

    .line 154
    const-string v15, "Too many pattern letters: "

    .line 155
    .line 156
    move/from16 v19, v12

    .line 157
    .line 158
    const/4 v12, 0x4

    .line 159
    if-eqz v14, :cond_2e

    .line 160
    .line 161
    const/16 v5, 0x13

    .line 162
    .line 163
    if-eq v4, v8, :cond_2d

    .line 164
    .line 165
    const/16 v7, 0x51

    .line 166
    .line 167
    const/4 v8, 0x3

    .line 168
    if-eq v4, v7, :cond_22

    .line 169
    .line 170
    const/16 v7, 0x53

    .line 171
    .line 172
    if-eq v4, v7, :cond_21

    .line 173
    .line 174
    if-eq v4, v6, :cond_1f

    .line 175
    .line 176
    const/16 v6, 0x6b

    .line 177
    .line 178
    if-eq v4, v6, :cond_1c

    .line 179
    .line 180
    const/16 v6, 0x71

    .line 181
    .line 182
    if-eq v4, v6, :cond_1b

    .line 183
    .line 184
    const/16 v6, 0x73

    .line 185
    .line 186
    if-eq v4, v6, :cond_1c

    .line 187
    .line 188
    const/16 v6, 0x75

    .line 189
    .line 190
    if-eq v4, v6, :cond_15

    .line 191
    .line 192
    const/16 v6, 0x79

    .line 193
    .line 194
    if-eq v4, v6, :cond_15

    .line 195
    .line 196
    const/16 v6, 0x67

    .line 197
    .line 198
    if-eq v4, v6, :cond_14

    .line 199
    .line 200
    const/16 v6, 0x68

    .line 201
    .line 202
    if-eq v4, v6, :cond_1c

    .line 203
    .line 204
    const/16 v6, 0x6d

    .line 205
    .line 206
    if-eq v4, v6, :cond_1c

    .line 207
    .line 208
    const/16 v6, 0x6e

    .line 209
    .line 210
    if-eq v4, v6, :cond_2d

    .line 211
    .line 212
    packed-switch v4, :pswitch_data_0

    .line 213
    .line 214
    .line 215
    packed-switch v4, :pswitch_data_1

    .line 216
    .line 217
    .line 218
    packed-switch v4, :pswitch_data_2

    .line 219
    .line 220
    .line 221
    if-ne v3, v9, :cond_a

    .line 222
    .line 223
    invoke-virtual {v0, v14}, Lj$/time/format/v;->m(Lj$/time/temporal/p;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_f

    .line 227
    .line 228
    :cond_a
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_f

    .line 232
    .line 233
    :pswitch_0
    if-ne v3, v9, :cond_b

    .line 234
    .line 235
    move v5, v3

    .line 236
    new-instance v3, Lj$/time/format/s;

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    move v6, v5

    .line 240
    move v7, v5

    .line 241
    invoke-direct/range {v3 .. v8}, Lj$/time/format/s;-><init>(CIIII)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v3}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_f

    .line 248
    .line 249
    :cond_b
    if-eq v3, v13, :cond_c

    .line 250
    .line 251
    goto/16 :goto_7

    .line 252
    .line 253
    :cond_c
    const-string v0, "Invalid pattern \"cc\""

    .line 254
    .line 255
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_1
    if-eq v3, v9, :cond_f

    .line 260
    .line 261
    if-eq v3, v13, :cond_f

    .line 262
    .line 263
    if-eq v3, v8, :cond_f

    .line 264
    .line 265
    if-eq v3, v12, :cond_e

    .line 266
    .line 267
    if-ne v3, v11, :cond_d

    .line 268
    .line 269
    sget-object v3, Lj$/time/format/g0;->NARROW:Lj$/time/format/g0;

    .line 270
    .line 271
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_f

    .line 275
    .line 276
    :cond_d
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_e
    sget-object v3, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 281
    .line 282
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_f

    .line 286
    .line 287
    :cond_f
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 288
    .line 289
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_f

    .line 293
    .line 294
    :pswitch_2
    if-ne v3, v9, :cond_10

    .line 295
    .line 296
    invoke-virtual {v0, v14}, Lj$/time/format/v;->m(Lj$/time/temporal/p;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_f

    .line 300
    .line 301
    :cond_10
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_3
    if-ne v3, v9, :cond_11

    .line 306
    .line 307
    invoke-virtual {v0, v14}, Lj$/time/format/v;->m(Lj$/time/temporal/p;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_f

    .line 311
    .line 312
    :cond_11
    if-eq v3, v13, :cond_13

    .line 313
    .line 314
    if-ne v3, v8, :cond_12

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_12
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_13
    :goto_5
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 322
    .line 323
    invoke-virtual {v0, v14, v3, v8, v4}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_f

    .line 327
    .line 328
    :cond_14
    sget-object v4, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 329
    .line 330
    invoke-virtual {v0, v14, v3, v5, v4}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_f

    .line 334
    .line 335
    :cond_15
    if-ne v3, v13, :cond_19

    .line 336
    .line 337
    sget-object v3, Lj$/time/format/p;->h:Lj$/time/LocalDate;

    .line 338
    .line 339
    const-string v4, "field"

    .line 340
    .line 341
    invoke-static {v14, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    const-string v4, "baseDate"

    .line 345
    .line 346
    invoke-static {v3, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    new-instance v13, Lj$/time/format/p;

    .line 350
    .line 351
    const/16 v18, 0x0

    .line 352
    .line 353
    const/4 v15, 0x2

    .line 354
    const/16 v16, 0x2

    .line 355
    .line 356
    move-object/from16 v17, v3

    .line 357
    .line 358
    invoke-direct/range {v13 .. v18}, Lj$/time/format/p;-><init>(Lj$/time/temporal/p;IILj$/time/chrono/b;I)V

    .line 359
    .line 360
    .line 361
    if-nez v17, :cond_18

    .line 362
    .line 363
    invoke-interface {v14}, Lj$/time/temporal/p;->u()Lj$/time/temporal/s;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    const-wide/16 v4, 0x0

    .line 368
    .line 369
    invoke-virtual {v3, v4, v5}, Lj$/time/temporal/s;->e(J)Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_17

    .line 374
    .line 375
    sget-object v3, Lj$/time/format/j;->f:[J

    .line 376
    .line 377
    aget-wide v4, v3, v16

    .line 378
    .line 379
    const-wide/32 v6, 0x7fffffff

    .line 380
    .line 381
    .line 382
    cmp-long v3, v4, v6

    .line 383
    .line 384
    if-gtz v3, :cond_16

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_16
    const-string v0, "Unable to add printer-parser as the range exceeds the capacity of an int"

    .line 388
    .line 389
    invoke-static {v0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :cond_17
    const-string v0, "The base value must be within the range of the field"

    .line 394
    .line 395
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :cond_18
    :goto_6
    invoke-virtual {v0, v13}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_f

    .line 403
    .line 404
    :cond_19
    if-ge v3, v12, :cond_1a

    .line 405
    .line 406
    sget-object v4, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 407
    .line 408
    invoke-virtual {v0, v14, v3, v5, v4}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_f

    .line 412
    .line 413
    :cond_1a
    sget-object v4, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    .line 414
    .line 415
    invoke-virtual {v0, v14, v3, v5, v4}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_f

    .line 419
    .line 420
    :cond_1b
    :goto_7
    :pswitch_4
    move v5, v9

    .line 421
    goto :goto_8

    .line 422
    :cond_1c
    :pswitch_5
    if-ne v3, v9, :cond_1d

    .line 423
    .line 424
    invoke-virtual {v0, v14}, Lj$/time/format/v;->m(Lj$/time/temporal/p;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_f

    .line 428
    .line 429
    :cond_1d
    if-ne v3, v13, :cond_1e

    .line 430
    .line 431
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_f

    .line 435
    .line 436
    :cond_1e
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :cond_1f
    if-ne v3, v9, :cond_20

    .line 441
    .line 442
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 443
    .line 444
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_f

    .line 448
    .line 449
    :cond_20
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :cond_21
    sget-object v4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 454
    .line 455
    invoke-virtual {v0, v4, v3, v3, v2}, Lj$/time/format/v;->b(Lj$/time/temporal/a;IIZ)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_f

    .line 459
    .line 460
    :cond_22
    :pswitch_6
    move v5, v2

    .line 461
    :goto_8
    if-eq v3, v9, :cond_29

    .line 462
    .line 463
    if-eq v3, v13, :cond_29

    .line 464
    .line 465
    if-eq v3, v8, :cond_27

    .line 466
    .line 467
    if-eq v3, v12, :cond_25

    .line 468
    .line 469
    if-ne v3, v11, :cond_24

    .line 470
    .line 471
    if-eqz v5, :cond_23

    .line 472
    .line 473
    sget-object v3, Lj$/time/format/g0;->NARROW_STANDALONE:Lj$/time/format/g0;

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_23
    sget-object v3, Lj$/time/format/g0;->NARROW:Lj$/time/format/g0;

    .line 477
    .line 478
    :goto_9
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_f

    .line 482
    .line 483
    :cond_24
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :cond_25
    if-eqz v5, :cond_26

    .line 488
    .line 489
    sget-object v3, Lj$/time/format/g0;->FULL_STANDALONE:Lj$/time/format/g0;

    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_26
    sget-object v3, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 493
    .line 494
    :goto_a
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_f

    .line 498
    .line 499
    :cond_27
    if-eqz v5, :cond_28

    .line 500
    .line 501
    sget-object v3, Lj$/time/format/g0;->SHORT_STANDALONE:Lj$/time/format/g0;

    .line 502
    .line 503
    goto :goto_b

    .line 504
    :cond_28
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 505
    .line 506
    :goto_b
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_f

    .line 510
    .line 511
    :cond_29
    const/16 v5, 0x65

    .line 512
    .line 513
    if-ne v4, v5, :cond_2a

    .line 514
    .line 515
    move v5, v3

    .line 516
    new-instance v3, Lj$/time/format/s;

    .line 517
    .line 518
    const/4 v8, 0x0

    .line 519
    move v6, v5

    .line 520
    move v7, v5

    .line 521
    invoke-direct/range {v3 .. v8}, Lj$/time/format/s;-><init>(CIIII)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v3}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_f

    .line 528
    .line 529
    :cond_2a
    const/16 v5, 0x45

    .line 530
    .line 531
    if-ne v4, v5, :cond_2b

    .line 532
    .line 533
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 534
    .line 535
    invoke-virtual {v0, v14, v3}, Lj$/time/format/v;->k(Lj$/time/temporal/p;Lj$/time/format/g0;)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_f

    .line 539
    .line 540
    :cond_2b
    if-ne v3, v9, :cond_2c

    .line 541
    .line 542
    invoke-virtual {v0, v14}, Lj$/time/format/v;->m(Lj$/time/temporal/p;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_f

    .line 546
    .line 547
    :cond_2c
    invoke-virtual {v0, v14, v13}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_f

    .line 551
    .line 552
    :cond_2d
    :pswitch_7
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 553
    .line 554
    invoke-virtual {v0, v14, v3, v5, v4}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_f

    .line 558
    .line 559
    :cond_2e
    if-ne v4, v5, :cond_31

    .line 560
    .line 561
    if-gt v3, v12, :cond_30

    .line 562
    .line 563
    if-ne v3, v12, :cond_2f

    .line 564
    .line 565
    sget-object v3, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 566
    .line 567
    new-instance v4, Lj$/time/format/u;

    .line 568
    .line 569
    invoke-direct {v4, v3, v2}, Lj$/time/format/u;-><init>(Lj$/time/format/g0;Z)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v4}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 573
    .line 574
    .line 575
    goto/16 :goto_f

    .line 576
    .line 577
    :cond_2f
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 578
    .line 579
    new-instance v4, Lj$/time/format/u;

    .line 580
    .line 581
    invoke-direct {v4, v3, v2}, Lj$/time/format/u;-><init>(Lj$/time/format/g0;Z)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v4}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 585
    .line 586
    .line 587
    goto/16 :goto_f

    .line 588
    .line 589
    :cond_30
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :cond_31
    const/16 v5, 0x56

    .line 594
    .line 595
    if-ne v4, v5, :cond_33

    .line 596
    .line 597
    if-ne v3, v13, :cond_32

    .line 598
    .line 599
    new-instance v3, Lj$/time/format/t;

    .line 600
    .line 601
    sget-object v4, Lj$/time/temporal/q;->a:Lj$/desugar/sun/nio/fs/m;

    .line 602
    .line 603
    const-string v5, "ZoneId()"

    .line 604
    .line 605
    invoke-direct {v3, v4, v5}, Lj$/time/format/t;-><init>(Lj$/desugar/sun/nio/fs/m;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v3}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 609
    .line 610
    .line 611
    goto/16 :goto_f

    .line 612
    .line 613
    :cond_32
    const-string v0, "Pattern letter count must be 2: "

    .line 614
    .line 615
    invoke-static {v0, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
    :cond_33
    const/16 v5, 0x76

    .line 620
    .line 621
    if-ne v4, v5, :cond_36

    .line 622
    .line 623
    if-ne v3, v9, :cond_34

    .line 624
    .line 625
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 626
    .line 627
    new-instance v4, Lj$/time/format/u;

    .line 628
    .line 629
    invoke-direct {v4, v3, v9}, Lj$/time/format/u;-><init>(Lj$/time/format/g0;Z)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v4}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 633
    .line 634
    .line 635
    goto/16 :goto_f

    .line 636
    .line 637
    :cond_34
    if-ne v3, v12, :cond_35

    .line 638
    .line 639
    sget-object v3, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 640
    .line 641
    new-instance v4, Lj$/time/format/u;

    .line 642
    .line 643
    invoke-direct {v4, v3, v9}, Lj$/time/format/u;-><init>(Lj$/time/format/g0;Z)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v4}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 647
    .line 648
    .line 649
    goto/16 :goto_f

    .line 650
    .line 651
    :cond_35
    const-string v0, "Wrong number of  pattern letters: "

    .line 652
    .line 653
    invoke-static {v0, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :cond_36
    const-string v5, "Z"

    .line 658
    .line 659
    const-string v6, "+0000"

    .line 660
    .line 661
    if-ne v4, v7, :cond_3a

    .line 662
    .line 663
    if-ge v3, v12, :cond_37

    .line 664
    .line 665
    const-string v3, "+HHMM"

    .line 666
    .line 667
    invoke-virtual {v0, v3, v6}, Lj$/time/format/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    goto/16 :goto_f

    .line 671
    .line 672
    :cond_37
    if-ne v3, v12, :cond_38

    .line 673
    .line 674
    sget-object v3, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 675
    .line 676
    invoke-virtual {v0, v3}, Lj$/time/format/v;->g(Lj$/time/format/g0;)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_f

    .line 680
    .line 681
    :cond_38
    if-ne v3, v11, :cond_39

    .line 682
    .line 683
    const-string v3, "+HH:MM:ss"

    .line 684
    .line 685
    invoke-virtual {v0, v3, v5}, Lj$/time/format/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_f

    .line 689
    .line 690
    :cond_39
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    :cond_3a
    const/16 v7, 0x4f

    .line 695
    .line 696
    if-ne v4, v7, :cond_3d

    .line 697
    .line 698
    if-ne v3, v9, :cond_3b

    .line 699
    .line 700
    sget-object v3, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 701
    .line 702
    invoke-virtual {v0, v3}, Lj$/time/format/v;->g(Lj$/time/format/g0;)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_f

    .line 706
    .line 707
    :cond_3b
    if-ne v3, v12, :cond_3c

    .line 708
    .line 709
    sget-object v3, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 710
    .line 711
    invoke-virtual {v0, v3}, Lj$/time/format/v;->g(Lj$/time/format/g0;)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_f

    .line 715
    .line 716
    :cond_3c
    const-string v0, "Pattern letter count must be 1 or 4: "

    .line 717
    .line 718
    invoke-static {v0, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 719
    .line 720
    .line 721
    return-void

    .line 722
    :cond_3d
    const/16 v7, 0x58

    .line 723
    .line 724
    if-ne v4, v7, :cond_40

    .line 725
    .line 726
    if-gt v3, v11, :cond_3f

    .line 727
    .line 728
    sget-object v4, Lj$/time/format/k;->d:[Ljava/lang/String;

    .line 729
    .line 730
    if-ne v3, v9, :cond_3e

    .line 731
    .line 732
    move v6, v2

    .line 733
    goto :goto_c

    .line 734
    :cond_3e
    move v6, v9

    .line 735
    :goto_c
    add-int/2addr v3, v6

    .line 736
    aget-object v3, v4, v3

    .line 737
    .line 738
    invoke-virtual {v0, v3, v5}, Lj$/time/format/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_f

    .line 742
    .line 743
    :cond_3f
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 744
    .line 745
    .line 746
    return-void

    .line 747
    :cond_40
    const/16 v5, 0x78

    .line 748
    .line 749
    if-ne v4, v5, :cond_45

    .line 750
    .line 751
    if-gt v3, v11, :cond_44

    .line 752
    .line 753
    if-ne v3, v9, :cond_41

    .line 754
    .line 755
    const-string v6, "+00"

    .line 756
    .line 757
    goto :goto_d

    .line 758
    :cond_41
    rem-int/lit8 v4, v3, 0x2

    .line 759
    .line 760
    if-nez v4, :cond_42

    .line 761
    .line 762
    goto :goto_d

    .line 763
    :cond_42
    const-string v6, "+00:00"

    .line 764
    .line 765
    :goto_d
    sget-object v4, Lj$/time/format/k;->d:[Ljava/lang/String;

    .line 766
    .line 767
    if-ne v3, v9, :cond_43

    .line 768
    .line 769
    move v5, v2

    .line 770
    goto :goto_e

    .line 771
    :cond_43
    move v5, v9

    .line 772
    :goto_e
    add-int/2addr v3, v5

    .line 773
    aget-object v3, v4, v3

    .line 774
    .line 775
    invoke-virtual {v0, v3, v6}, Lj$/time/format/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    goto :goto_f

    .line 779
    :cond_44
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 780
    .line 781
    .line 782
    return-void

    .line 783
    :cond_45
    const/16 v5, 0x57

    .line 784
    .line 785
    if-ne v4, v5, :cond_47

    .line 786
    .line 787
    if-gt v3, v9, :cond_46

    .line 788
    .line 789
    move v5, v3

    .line 790
    new-instance v3, Lj$/time/format/s;

    .line 791
    .line 792
    const/4 v8, 0x0

    .line 793
    move v6, v5

    .line 794
    move v7, v5

    .line 795
    invoke-direct/range {v3 .. v8}, Lj$/time/format/s;-><init>(CIIII)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v3}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 799
    .line 800
    .line 801
    goto :goto_f

    .line 802
    :cond_46
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 803
    .line 804
    .line 805
    return-void

    .line 806
    :cond_47
    move v5, v3

    .line 807
    const/16 v3, 0x77

    .line 808
    .line 809
    if-ne v4, v3, :cond_49

    .line 810
    .line 811
    if-gt v5, v13, :cond_48

    .line 812
    .line 813
    new-instance v3, Lj$/time/format/s;

    .line 814
    .line 815
    const/4 v7, 0x2

    .line 816
    const/4 v8, 0x0

    .line 817
    move v6, v5

    .line 818
    invoke-direct/range {v3 .. v8}, Lj$/time/format/s;-><init>(CIIII)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v3}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 822
    .line 823
    .line 824
    goto :goto_f

    .line 825
    :cond_48
    invoke-static {v15, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :cond_49
    const/16 v3, 0x59

    .line 830
    .line 831
    if-ne v4, v3, :cond_4b

    .line 832
    .line 833
    if-ne v5, v13, :cond_4a

    .line 834
    .line 835
    new-instance v3, Lj$/time/format/s;

    .line 836
    .line 837
    const/4 v7, 0x2

    .line 838
    const/4 v8, 0x0

    .line 839
    move v6, v5

    .line 840
    invoke-direct/range {v3 .. v8}, Lj$/time/format/s;-><init>(CIIII)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0, v3}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 844
    .line 845
    .line 846
    goto :goto_f

    .line 847
    :cond_4a
    new-instance v3, Lj$/time/format/s;

    .line 848
    .line 849
    const/16 v7, 0x13

    .line 850
    .line 851
    const/4 v8, 0x0

    .line 852
    move v6, v5

    .line 853
    invoke-direct/range {v3 .. v8}, Lj$/time/format/s;-><init>(CIIII)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, v3}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 857
    .line 858
    .line 859
    :goto_f
    add-int/lit8 v3, v10, -0x1

    .line 860
    .line 861
    goto/16 :goto_12

    .line 862
    .line 863
    :cond_4b
    const-string v0, "Unknown pattern letter: "

    .line 864
    .line 865
    invoke-static {v0, v4}, Lj$/nio/file/m;->l(Ljava/lang/String;I)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :cond_4c
    const-string v5, "\'"

    .line 870
    .line 871
    const/16 v6, 0x27

    .line 872
    .line 873
    if-ne v4, v6, :cond_51

    .line 874
    .line 875
    add-int/lit8 v3, v3, 0x1

    .line 876
    .line 877
    move v4, v3

    .line 878
    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 879
    .line 880
    .line 881
    move-result v7

    .line 882
    if-ge v4, v7, :cond_4e

    .line 883
    .line 884
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 885
    .line 886
    .line 887
    move-result v7

    .line 888
    if-ne v7, v6, :cond_4d

    .line 889
    .line 890
    add-int/lit8 v7, v4, 0x1

    .line 891
    .line 892
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 893
    .line 894
    .line 895
    move-result v8

    .line 896
    if-ge v7, v8, :cond_4e

    .line 897
    .line 898
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 899
    .line 900
    .line 901
    move-result v8

    .line 902
    if-ne v8, v6, :cond_4e

    .line 903
    .line 904
    move v4, v7

    .line 905
    :cond_4d
    add-int/2addr v4, v9

    .line 906
    goto :goto_10

    .line 907
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 908
    .line 909
    .line 910
    move-result v7

    .line 911
    if-ge v4, v7, :cond_50

    .line 912
    .line 913
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 918
    .line 919
    .line 920
    move-result v7

    .line 921
    if-eqz v7, :cond_4f

    .line 922
    .line 923
    invoke-virtual {v0, v6}, Lj$/time/format/v;->d(C)V

    .line 924
    .line 925
    .line 926
    goto :goto_11

    .line 927
    :cond_4f
    const-string v6, "\'\'"

    .line 928
    .line 929
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    invoke-virtual {v0, v3}, Lj$/time/format/v;->e(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    :goto_11
    move v3, v4

    .line 937
    goto :goto_12

    .line 938
    :cond_50
    const-string v0, "Pattern ends with an incomplete string literal: "

    .line 939
    .line 940
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    return-void

    .line 948
    :cond_51
    const/16 v6, 0x5b

    .line 949
    .line 950
    if-ne v4, v6, :cond_52

    .line 951
    .line 952
    invoke-virtual {v0}, Lj$/time/format/v;->q()V

    .line 953
    .line 954
    .line 955
    goto :goto_12

    .line 956
    :cond_52
    const/16 v6, 0x5d

    .line 957
    .line 958
    if-ne v4, v6, :cond_54

    .line 959
    .line 960
    iget-object v4, v0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 961
    .line 962
    iget-object v4, v4, Lj$/time/format/v;->b:Lj$/time/format/v;

    .line 963
    .line 964
    if-eqz v4, :cond_53

    .line 965
    .line 966
    invoke-virtual {v0}, Lj$/time/format/v;->p()V

    .line 967
    .line 968
    .line 969
    goto :goto_12

    .line 970
    :cond_53
    const-string v0, "Pattern invalid as it contains ] without previous ["

    .line 971
    .line 972
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    return-void

    .line 976
    :cond_54
    const/16 v6, 0x7b

    .line 977
    .line 978
    if-eq v4, v6, :cond_55

    .line 979
    .line 980
    const/16 v6, 0x7d

    .line 981
    .line 982
    if-eq v4, v6, :cond_55

    .line 983
    .line 984
    const/16 v6, 0x23

    .line 985
    .line 986
    if-eq v4, v6, :cond_55

    .line 987
    .line 988
    invoke-virtual {v0, v4}, Lj$/time/format/v;->d(C)V

    .line 989
    .line 990
    .line 991
    :goto_12
    add-int/2addr v3, v9

    .line 992
    goto/16 :goto_0

    .line 993
    .line 994
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 995
    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    .line 997
    .line 998
    const-string v2, "Pattern includes reserved character: \'"

    .line 999
    .line 1000
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    throw v0

    .line 1017
    :cond_56
    return-void

    .line 1018
    nop

    .line 1019
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final j(Lj$/time/temporal/a;Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "textLookup"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 17
    .line 18
    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lj$/time/format/a0;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lj$/time/format/a0;-><init>(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lj$/time/format/a;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lj$/time/format/a;-><init>(Lj$/time/format/a0;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lj$/time/format/r;

    .line 33
    .line 34
    invoke-direct {v1, p1, p2, v0}, Lj$/time/format/r;-><init>(Lj$/time/temporal/p;Lj$/time/format/g0;Lj$/time/format/b0;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final k(Lj$/time/temporal/p;Lj$/time/format/g0;)V
    .locals 2

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "textStyle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lj$/time/format/r;

    .line 12
    .line 13
    sget-object v1, Lj$/time/format/b0;->c:Lj$/time/format/b0;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, v1}, Lj$/time/format/r;-><init>(Lj$/time/temporal/p;Lj$/time/format/g0;Lj$/time/format/b0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final l(Lj$/time/format/j;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 2
    .line 3
    iget v1, v0, Lj$/time/format/v;->g:I

    .line 4
    .line 5
    if-ltz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lj$/time/format/j;

    .line 16
    .line 17
    iget v2, p1, Lj$/time/format/j;->b:I

    .line 18
    .line 19
    iget v3, p1, Lj$/time/format/j;->c:I

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    iget-object v2, p1, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 24
    .line 25
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 26
    .line 27
    if-ne v2, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lj$/time/format/j;->e(I)Lj$/time/format/j;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lj$/time/format/j;->d()Lj$/time/format/j;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 41
    .line 42
    iput v1, p1, Lj$/time/format/v;->g:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lj$/time/format/j;->d()Lj$/time/format/j;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, v2, Lj$/time/format/v;->g:I

    .line 56
    .line 57
    :goto_0
    iget-object p0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 58
    .line 59
    iget-object p0, p0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 60
    .line 61
    check-cast p0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    iput p0, v0, Lj$/time/format/v;->g:I

    .line 72
    .line 73
    return-void
.end method

.method public final m(Lj$/time/temporal/p;)V
    .locals 4

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/time/format/j;

    .line 7
    .line 8
    const/16 v1, 0x13

    .line 9
    .line 10
    sget-object v2, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, p1, v3, v1, v2}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final n(Lj$/time/temporal/p;I)V
    .locals 2

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p2, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x13

    .line 10
    .line 11
    if-gt p2, v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lj$/time/format/j;

    .line 14
    .line 15
    sget-object v1, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p2, v1}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "The width must be from 1 to 19 inclusive but was "

    .line 25
    .line 26
    invoke-static {p0, p2}, Lj$/nio/file/m;->n(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final o(Lj$/time/temporal/p;IILj$/time/format/f0;)V
    .locals 2

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    sget-object v0, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 4
    .line 5
    if-ne p4, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "field"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v0, "signStyle"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-lt p2, v0, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x13

    .line 25
    .line 26
    if-gt p2, v1, :cond_3

    .line 27
    .line 28
    if-lt p3, v0, :cond_2

    .line 29
    .line 30
    if-gt p3, v1, :cond_2

    .line 31
    .line 32
    if-lt p3, p2, :cond_1

    .line 33
    .line 34
    new-instance v0, Lj$/time/format/j;

    .line 35
    .line 36
    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lj$/time/format/v;->l(Lj$/time/format/j;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p4, "The maximum width must exceed or equal the minimum width but "

    .line 48
    .line 49
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p3, " < "

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    const-string p0, "The maximum width must be from 1 to 19 inclusive but was "

    .line 72
    .line 73
    invoke-static {p0, p3}, Lj$/nio/file/m;->n(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    const-string p0, "The minimum width must be from 1 to 19 inclusive but was "

    .line 78
    .line 79
    invoke-static {p0, p2}, Lj$/nio/file/m;->n(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 2
    .line 3
    iget-object v1, v0, Lj$/time/format/v;->b:Lj$/time/format/v;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lj$/time/format/d;

    .line 20
    .line 21
    iget-object v2, v1, Lj$/time/format/v;->c:Ljava/util/List;

    .line 22
    .line 23
    iget-boolean v1, v1, Lj$/time/format/v;->d:Z

    .line 24
    .line 25
    invoke-direct {v0, v2, v1}, Lj$/time/format/d;-><init>(Ljava/util/List;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 29
    .line 30
    iget-object v1, v1, Lj$/time/format/v;->b:Lj$/time/format/v;

    .line 31
    .line 32
    iput-object v1, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, v1, Lj$/time/format/v;->b:Lj$/time/format/v;

    .line 39
    .line 40
    iput-object v0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lj$/time/format/v;->g:I

    .line 5
    .line 6
    new-instance v1, Lj$/time/format/v;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lj$/time/format/v;-><init>(Lj$/time/format/v;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 12
    .line 13
    return-void
.end method

.method public final r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lj$/time/format/v;->s(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final s(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;
    .locals 7

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/format/v;

    .line 7
    .line 8
    iget-object v0, v0, Lj$/time/format/v;->b:Lj$/time/format/v;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lj$/time/format/v;->p()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Lj$/time/format/d;

    .line 17
    .line 18
    iget-object p0, p0, Lj$/time/format/v;->c:Ljava/util/List;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v2, p0, v0}, Lj$/time/format/d;-><init>(Ljava/util/List;Z)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lj$/time/format/DateTimeFormatter;

    .line 25
    .line 26
    sget-object v4, Lj$/time/format/c0;->a:Lj$/time/format/c0;

    .line 27
    .line 28
    move-object v3, p1

    .line 29
    move-object v5, p2

    .line 30
    move-object v6, p3

    .line 31
    invoke-direct/range {v1 .. v6}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/c0;Lj$/time/format/e0;Lj$/time/chrono/l;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method
