.class public Lorg/ocpsoft/prettytime/i18n/Resources_be;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final slavicPluralForms:I = 0x3

.field private static final tolerance:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    aput v2, v0, v2

    .line 9
    .line 10
    const-class v1, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [[Ljava/lang/Object;

    .line 17
    .line 18
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_be;->OBJECTS:[[Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_be;->OBJECTS:[[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_be$1;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_be;)V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Century;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 16
    .line 17
    const-string/jumbo p1, "\u0441\u0442\u0430\u0433\u043e\u0434\u0434\u0437\u0456"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "\u0441\u0442\u0430\u0433\u043e\u0434\u0434\u0437\u044f\u045e"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "\u0441\u0442\u0430\u0433\u043e\u0434\u0434\u0437\u0435"

    .line 24
    .line 25
    .line 26
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Day;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 39
    .line 40
    const-string/jumbo p1, "\u0434\u043d\u0456"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "\u0434\u0437\u0451\u043d"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "\u0434\u0437\u0435\u043d\u044c"

    .line 47
    .line 48
    .line 49
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 62
    .line 63
    const-string/jumbo p1, "\u0434\u0437\u0435\u0441\u044f\u0446\u0456\u0433\u043e\u0434\u0434\u0437\u0456"

    .line 64
    .line 65
    .line 66
    const-string/jumbo v0, "\u0434\u0437\u0435\u0441\u044f\u0446\u0456\u0433\u043e\u0434\u0434\u0437\u044f\u045e"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "\u0434\u0437\u0435\u0441\u044f\u0446\u0456\u0433\u043e\u0434\u0434\u0437\u0435"

    .line 70
    .line 71
    .line 72
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 85
    .line 86
    const-string/jumbo p1, "\u0433\u0430\u0434\u0437\u0456\u043d\u044b"

    .line 87
    .line 88
    .line 89
    const-string/jumbo v0, "\u0433\u0430\u0434\u0437\u0456\u043d"

    .line 90
    .line 91
    .line 92
    const-string/jumbo v1, "\u0433\u0430\u0434\u0437\u0456\u043d\u0443"

    .line 93
    .line 94
    .line 95
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_4
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    .line 104
    .line 105
    if-eqz p0, :cond_5

    .line 106
    .line 107
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 108
    .line 109
    const-string/jumbo p1, "\u0442\u044b\u0441\u044f\u0447\u0430\u0433\u043e\u0434\u0434\u0437\u0456"

    .line 110
    .line 111
    .line 112
    const-string/jumbo v0, "\u0442\u044b\u0441\u044f\u0447\u0430\u0433\u043e\u0434\u0434\u0437\u044f\u045e"

    .line 113
    .line 114
    .line 115
    const-string/jumbo v1, "\u0442\u044b\u0441\u044f\u0447\u0430\u0433\u043e\u0434\u0434\u0437\u0435"

    .line 116
    .line 117
    .line 118
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_5
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    .line 127
    .line 128
    if-eqz p0, :cond_6

    .line 129
    .line 130
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 131
    .line 132
    const-string/jumbo p1, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    .line 133
    .line 134
    .line 135
    const-string/jumbo v0, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434"

    .line 136
    .line 137
    .line 138
    const-string/jumbo v1, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    .line 139
    .line 140
    .line 141
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_6
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    .line 150
    .line 151
    if-eqz p0, :cond_7

    .line 152
    .line 153
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 154
    .line 155
    const-string/jumbo p1, "\u0445\u0432\u0456\u043b\u0456\u043d\u044b"

    .line 156
    .line 157
    .line 158
    const-string/jumbo v0, "\u0445\u0432\u0456\u043b\u0456\u043d"

    .line 159
    .line 160
    .line 161
    const-string/jumbo v1, "\u0445\u0432\u0456\u043b\u0456\u043d\u0443"

    .line 162
    .line 163
    .line 164
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_7
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Month;

    .line 173
    .line 174
    if-eqz p0, :cond_8

    .line 175
    .line 176
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 177
    .line 178
    const-string/jumbo p1, "\u043c\u0435\u0441\u044f\u0446\u044b"

    .line 179
    .line 180
    .line 181
    const-string/jumbo v0, "\u043c\u0435\u0441\u044f\u0446\u0430\u045e"

    .line 182
    .line 183
    .line 184
    const-string/jumbo v1, "\u043c\u0435\u0441\u044f\u0446"

    .line 185
    .line 186
    .line 187
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object p0

    .line 195
    :cond_8
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Second;

    .line 196
    .line 197
    if-eqz p0, :cond_9

    .line 198
    .line 199
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 200
    .line 201
    const-string/jumbo p1, "\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    .line 202
    .line 203
    .line 204
    const-string/jumbo v0, "\u0441\u0435\u043a\u0443\u043d\u0434"

    .line 205
    .line 206
    .line 207
    const-string/jumbo v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    .line 208
    .line 209
    .line 210
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-object p0

    .line 218
    :cond_9
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Week;

    .line 219
    .line 220
    if-eqz p0, :cond_a

    .line 221
    .line 222
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 223
    .line 224
    const-string/jumbo p1, "\u0442\u044b\u0434\u043d\u0456"

    .line 225
    .line 226
    .line 227
    const-string/jumbo v0, "\u0442\u044b\u0434\u043d\u044f\u045e"

    .line 228
    .line 229
    .line 230
    const-string/jumbo v1, "\u0442\u044b\u0434\u0437\u0435\u043d\u044c"

    .line 231
    .line 232
    .line 233
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-object p0

    .line 241
    :cond_a
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Year;

    .line 242
    .line 243
    if-eqz p0, :cond_b

    .line 244
    .line 245
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    .line 246
    .line 247
    const-string/jumbo p1, "\u0433\u0430\u0434\u044b"

    .line 248
    .line 249
    .line 250
    const-string/jumbo v0, "\u0433\u0430\u0434\u043e\u045e"

    .line 251
    .line 252
    .line 253
    const-string/jumbo v1, "\u0433\u043e\u0434"

    .line 254
    .line 255
    .line 256
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :cond_b
    const/4 p0, 0x0

    .line 265
    return-object p0
.end method
