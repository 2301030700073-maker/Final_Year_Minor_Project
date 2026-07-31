.class public Lorg/ocpsoft/prettytime/i18n/Resources_uk;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;
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
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk;->OBJECTS:[[Ljava/lang/Object;

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
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk;->OBJECTS:[[Ljava/lang/Object;

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
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$1;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_uk;)V

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
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 16
    .line 17
    const-string/jumbo p1, "\u0441\u0442\u043e\u043b\u0456\u0442\u0442\u044c"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "\u0441\u0442\u043e\u043b\u0456\u0442\u0442\u044f"

    .line 21
    .line 22
    .line 23
    filled-new-array {v0, v0, p1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Day;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 36
    .line 37
    const-string/jumbo p1, "\u0434\u043d\u0456"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v0, "\u0434\u043d\u0456\u0432"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "\u0434\u0435\u043d\u044c"

    .line 44
    .line 45
    .line 46
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 59
    .line 60
    const-string/jumbo p1, "\u0434\u0435\u0441\u044f\u0442\u0438\u043b\u0456\u0442\u044c"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "\u0434\u0435\u0441\u044f\u0442\u0438\u043b\u0456\u0442\u0442\u044f"

    .line 64
    .line 65
    .line 66
    filled-new-array {v0, v0, p1}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_3
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    .line 75
    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 79
    .line 80
    const-string/jumbo p1, "\u0433\u043e\u0434\u0438\u043d\u0438"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v0, "\u0433\u043e\u0434\u0438\u043d"

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "\u0433\u043e\u0434\u0438\u043d\u0443"

    .line 87
    .line 88
    .line 89
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_4
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    .line 98
    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 102
    .line 103
    const-string/jumbo p1, "\u0442\u0438\u0441\u044f\u0447\u043e\u043b\u0456\u0442\u044c"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v0, "\u0442\u0438\u0441\u044f\u0447\u043e\u043b\u0456\u0442\u0442\u044f"

    .line 107
    .line 108
    .line 109
    filled-new-array {v0, v0, p1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_5
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    .line 118
    .line 119
    if-eqz p0, :cond_6

    .line 120
    .line 121
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 122
    .line 123
    const-string/jumbo p1, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    .line 124
    .line 125
    .line 126
    const-string/jumbo v0, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434"

    .line 127
    .line 128
    .line 129
    const-string/jumbo v1, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    .line 130
    .line 131
    .line 132
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object p0

    .line 140
    :cond_6
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    .line 141
    .line 142
    if-eqz p0, :cond_7

    .line 143
    .line 144
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 145
    .line 146
    const-string/jumbo p1, "\u0445\u0432\u0438\u043b\u0438\u043d\u0438"

    .line 147
    .line 148
    .line 149
    const-string/jumbo v0, "\u0445\u0432\u0438\u043b\u0438\u043d"

    .line 150
    .line 151
    .line 152
    const-string/jumbo v1, "\u0445\u0432\u0438\u043b\u0438\u043d\u0443"

    .line 153
    .line 154
    .line 155
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object p0

    .line 163
    :cond_7
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Month;

    .line 164
    .line 165
    if-eqz p0, :cond_8

    .line 166
    .line 167
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 168
    .line 169
    const-string/jumbo p1, "\u043c\u0456\u0441\u044f\u0446\u0456"

    .line 170
    .line 171
    .line 172
    const-string/jumbo v0, "\u043c\u0456\u0441\u044f\u0446\u0456\u0432"

    .line 173
    .line 174
    .line 175
    const-string/jumbo v1, "\u043c\u0456\u0441\u044f\u0446\u044c"

    .line 176
    .line 177
    .line 178
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_8
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Second;

    .line 187
    .line 188
    if-eqz p0, :cond_9

    .line 189
    .line 190
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 191
    .line 192
    const-string/jumbo p1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    .line 193
    .line 194
    .line 195
    const-string/jumbo v0, "\u0441\u0435\u043a\u0443\u043d\u0434"

    .line 196
    .line 197
    .line 198
    const-string/jumbo v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    .line 199
    .line 200
    .line 201
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :cond_9
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Week;

    .line 210
    .line 211
    if-eqz p0, :cond_a

    .line 212
    .line 213
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 214
    .line 215
    const-string/jumbo p1, "\u0442\u0438\u0436\u043d\u0456"

    .line 216
    .line 217
    .line 218
    const-string/jumbo v0, "\u0442\u0438\u0436\u043d\u0456\u0432"

    .line 219
    .line 220
    .line 221
    const-string/jumbo v1, "\u0442\u0438\u0436\u0434\u0435\u043d\u044c"

    .line 222
    .line 223
    .line 224
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-object p0

    .line 232
    :cond_a
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Year;

    .line 233
    .line 234
    if-eqz p0, :cond_b

    .line 235
    .line 236
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    .line 237
    .line 238
    const-string/jumbo p1, "\u0440\u043e\u043a\u0438"

    .line 239
    .line 240
    .line 241
    const-string/jumbo v0, "\u0440\u043e\u043a\u0456\u0432"

    .line 242
    .line 243
    .line 244
    const-string/jumbo v1, "\u0440\u0456\u043a"

    .line 245
    .line 246
    .line 247
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return-object p0

    .line 255
    :cond_b
    const/4 p0, 0x0

    .line 256
    return-object p0
.end method
