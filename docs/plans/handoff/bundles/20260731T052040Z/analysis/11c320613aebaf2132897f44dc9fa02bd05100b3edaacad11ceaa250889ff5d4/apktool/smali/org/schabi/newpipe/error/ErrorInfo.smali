.class public final Lorg/schabi/newpipe/error/ErrorInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/schabi/newpipe/error/ErrorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;


# instance fields
.field public final isReportable:Z

.field public final isRetryable:Z

.field public final message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

.field public final openInBrowserUrl:Ljava/lang/String;

.field public final recaptchaUrl:Ljava/lang/String;

.field public final request:Ljava/lang/String;

.field public final serviceId:Ljava/lang/Integer;

.field public final stackTraces:[Ljava/lang/String;

.field public final userAction:Lorg/schabi/newpipe/error/UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo$Creator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Creator;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V
    .locals 6

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 6

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 240
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    invoke-static {p1}, Lkotlin/ResultKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {p1, p2, p4}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    move-result-object v6

    .line 244
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-static {v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isContentSurelyNotAvailable(Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 245
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    move v7, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v3

    .line 247
    :goto_2
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-static {v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isContentSurelyNotAvailable(Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move v8, v1

    goto :goto_5

    .line 248
    :cond_5
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    move v8, v3

    .line 249
    :goto_5
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    goto :goto_6

    :cond_7
    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v10, p5

    move-object v9, v1

    move-object v1, p0

    .line 250
    invoke-direct/range {v1 .. v10}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 254
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Throwable;

    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/ResultKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    new-array v2, v1, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v3, v0

    .line 58
    check-cast v3, [Ljava/lang/String;

    .line 59
    .line 60
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Throwable;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-object/from16 v6, p4

    .line 72
    .line 73
    invoke-static {v2, p2, v6}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x1

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    :cond_1
    move v8, v1

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/Throwable;

    .line 101
    .line 102
    if-nez v4, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    instance-of v5, v4, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    check-cast v4, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 110
    .line 111
    invoke-static {v4}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isContentSurelyNotAvailable(Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    instance-of v5, v4, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    .line 119
    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    instance-of v4, v4, Ljava/net/UnknownHostException;

    .line 124
    .line 125
    if-eqz v4, :cond_7

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    :goto_2
    move v8, v2

    .line 129
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_c

    .line 134
    .line 135
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_8

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_b

    .line 153
    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Ljava/lang/Throwable;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    instance-of v9, v5, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 164
    .line 165
    if-eqz v9, :cond_a

    .line 166
    .line 167
    check-cast v5, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 168
    .line 169
    invoke-static {v5}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isContentSurelyNotAvailable(Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_9

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_a
    instance-of v5, v5, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    .line 177
    .line 178
    if-eqz v5, :cond_c

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_b
    :goto_5
    move v9, v1

    .line 182
    goto :goto_7

    .line 183
    :cond_c
    :goto_6
    move v9, v2

    .line 184
    :goto_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    const/4 v1, 0x0

    .line 193
    if-eqz v0, :cond_f

    .line 194
    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Ljava/lang/Throwable;

    .line 200
    .line 201
    instance-of v2, v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    .line 202
    .line 203
    if-eqz v2, :cond_e

    .line 204
    .line 205
    check-cast v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_e
    move-object v0, v1

    .line 209
    :goto_8
    if-eqz v0, :cond_d

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_f
    move-object v0, v1

    .line 213
    :goto_9
    if-eqz v0, :cond_10

    .line 214
    .line 215
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->getUrl()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :cond_10
    move-object v2, p0

    .line 220
    move-object v4, p2

    .line 221
    move-object v5, p3

    .line 222
    move-object/from16 v11, p5

    .line 223
    .line 224
    move-object v10, v1

    .line 225
    invoke-direct/range {v2 .. v11}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 255
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 10

    .line 252
    new-instance v5, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {v5, v0, p5}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 253
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    .line 233
    iput-object p3, p0, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    .line 234
    iput-object p4, p0, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 235
    iput-object p5, p0, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 236
    iput-boolean p6, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    .line 237
    iput-boolean p7, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable:Z

    .line 238
    iput-object p8, p0, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    .line 239
    iput-object p9, p0, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable:Z

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
