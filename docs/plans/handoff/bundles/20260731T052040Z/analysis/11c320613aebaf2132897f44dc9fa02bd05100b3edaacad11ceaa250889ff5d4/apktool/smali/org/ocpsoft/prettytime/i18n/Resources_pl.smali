.class public Lorg/ocpsoft/prettytime/i18n/Resources_pl;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final polishPluralForms:I = 0x3

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
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl;->OBJECTS:[[Ljava/lang/Object;

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
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl;->OBJECTS:[[Ljava/lang/Object;

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
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_pl;)V

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
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 16
    .line 17
    const-string/jumbo p1, "wieki"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "wiek\u00f3w"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "wiek"

    .line 24
    .line 25
    .line 26
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

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
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 39
    .line 40
    const-string p1, "dzie\u0144"

    .line 41
    .line 42
    const-string v0, "dni"

    .line 43
    .line 44
    filled-new-array {p1, v0, v0}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 57
    .line 58
    const-string p1, "dekady"

    .line 59
    .line 60
    const-string v0, "dekad"

    .line 61
    .line 62
    const-string v1, "dekad\u0119"

    .line 63
    .line 64
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_3
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    .line 73
    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 77
    .line 78
    const-string p1, "godziny"

    .line 79
    .line 80
    const-string v0, "godzin"

    .line 81
    .line 82
    const-string v1, "godzin\u0119"

    .line 83
    .line 84
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_4
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    .line 93
    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 97
    .line 98
    const-string p1, "milenia"

    .line 99
    .line 100
    const-string v0, "mileni\u00f3w"

    .line 101
    .line 102
    const-string v1, "milenium"

    .line 103
    .line 104
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_5
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    .line 113
    .line 114
    if-eqz p0, :cond_6

    .line 115
    .line 116
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 117
    .line 118
    const-string p1, "milisekundy"

    .line 119
    .line 120
    const-string v0, "milisekund"

    .line 121
    .line 122
    const-string v1, "milisekund\u0119"

    .line 123
    .line 124
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_6
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    .line 133
    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 137
    .line 138
    const-string p1, "minuty"

    .line 139
    .line 140
    const-string v0, "minut"

    .line 141
    .line 142
    const-string v1, "minut\u0119"

    .line 143
    .line 144
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_7
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Month;

    .line 153
    .line 154
    if-eqz p0, :cond_8

    .line 155
    .line 156
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 157
    .line 158
    const-string p1, "miesi\u0105ce"

    .line 159
    .line 160
    const-string v0, "miesi\u0119cy"

    .line 161
    .line 162
    const-string v1, "miesi\u0105c"

    .line 163
    .line 164
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_8
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Second;

    .line 173
    .line 174
    if-eqz p0, :cond_9

    .line 175
    .line 176
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 177
    .line 178
    const-string p1, "sekundy"

    .line 179
    .line 180
    const-string v0, "sekund"

    .line 181
    .line 182
    const-string v1, "sekund\u0119"

    .line 183
    .line 184
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-object p0

    .line 192
    :cond_9
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Week;

    .line 193
    .line 194
    if-eqz p0, :cond_a

    .line 195
    .line 196
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 197
    .line 198
    const-string/jumbo p1, "tygodnie"

    .line 199
    .line 200
    .line 201
    const-string/jumbo v0, "tygodni"

    .line 202
    .line 203
    .line 204
    const-string/jumbo v1, "tydzie\u0144"

    .line 205
    .line 206
    .line 207
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-object p0

    .line 215
    :cond_a
    instance-of p0, p1, Lorg/ocpsoft/prettytime/units/Year;

    .line 216
    .line 217
    if-eqz p0, :cond_b

    .line 218
    .line 219
    new-instance p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    .line 220
    .line 221
    const-string p1, "lata"

    .line 222
    .line 223
    const-string v0, "lat"

    .line 224
    .line 225
    const-string v1, "rok"

    .line 226
    .line 227
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-object p0

    .line 235
    :cond_b
    const/4 p0, 0x0

    .line 236
    return-object p0
.end method
