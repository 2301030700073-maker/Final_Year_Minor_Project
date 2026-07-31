.class public final Lorg/wikipedia/dataclient/discussiontools/ThreadItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/dataclient/discussiontools/ThreadItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/dataclient/discussiontools/ThreadItem$Companion;


# instance fields
.field public final author:Ljava/lang/String;

.field public final date:Ljava/util/Date;

.field public final headingLevel:I

.field public final html:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public isExpanded:Z

.field public isFirstTopLevel:Z

.field public isLastSibling:Z

.field public final level:I

.field public final name:Ljava/lang/String;

.field public final othercontent:Ljava/lang/String;

.field public final placeholderHeading:Z

.field public final plainOtherContent:Ljava/lang/String;

.field public final plainText:Ljava/lang/String;

.field public final replies:Ljava/util/List;

.field public seen:Z

.field public final timestamp:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->Companion:Lorg/wikipedia/dataclient/discussiontools/ThreadItem$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 9
    .line 10
    const/16 v1, 0x11

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v2, 0x7

    .line 22
    invoke-direct {v1, v2}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0xb

    .line 30
    .line 31
    new-array v1, v1, [Lkotlin/Lazy;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v4, v1, v3

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    aput-object v4, v1, v3

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    aput-object v4, v1, v3

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    aput-object v4, v1, v3

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    aput-object v4, v1, v3

    .line 48
    .line 49
    const/4 v3, 0x5

    .line 50
    aput-object v4, v1, v3

    .line 51
    .line 52
    const/4 v3, 0x6

    .line 53
    aput-object v4, v1, v3

    .line 54
    .line 55
    aput-object v4, v1, v2

    .line 56
    .line 57
    const/16 v2, 0x8

    .line 58
    .line 59
    aput-object v4, v1, v2

    .line 60
    .line 61
    const/16 v2, 0x9

    .line 62
    .line 63
    aput-object v0, v1, v2

    .line 64
    .line 65
    const/16 v0, 0xa

    .line 66
    .line 67
    aput-object v4, v1, v0

    .line 68
    .line 69
    sput-object v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->$childSerializers:[Lkotlin/Lazy;

    .line 70
    .line 71
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->type:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->type:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iput v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iput p3, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 24
    .line 25
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 48
    .line 49
    move-object p6, v1

    .line 50
    goto :goto_4

    .line 51
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 52
    .line 53
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 54
    .line 55
    if-nez p2, :cond_5

    .line 56
    .line 57
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 61
    .line 62
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 63
    .line 64
    if-nez p2, :cond_6

    .line 65
    .line 66
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 67
    .line 68
    move-object p8, v1

    .line 69
    goto :goto_6

    .line 70
    :cond_6
    iput-object p8, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 71
    .line 72
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 73
    .line 74
    if-nez p2, :cond_7

    .line 75
    .line 76
    iput v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->headingLevel:I

    .line 77
    .line 78
    goto :goto_7

    .line 79
    :cond_7
    iput p9, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->headingLevel:I

    .line 80
    .line 81
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 82
    .line 83
    if-nez p2, :cond_8

    .line 84
    .line 85
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->placeholderHeading:Z

    .line 86
    .line 87
    goto :goto_8

    .line 88
    :cond_8
    iput-boolean p10, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->placeholderHeading:Z

    .line 89
    .line 90
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 91
    .line 92
    if-nez p2, :cond_9

    .line 93
    .line 94
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 95
    .line 96
    iput-object p2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 97
    .line 98
    goto :goto_9

    .line 99
    :cond_9
    iput-object p11, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 100
    .line 101
    :goto_9
    and-int/lit16 p1, p1, 0x400

    .line 102
    .line 103
    if-nez p1, :cond_a

    .line 104
    .line 105
    iput-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 106
    .line 107
    move-object p12, v1

    .line 108
    goto :goto_a

    .line 109
    :cond_a
    iput-object p12, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 110
    .line 111
    :goto_a
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 113
    .line 114
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isFirstTopLevel:Z

    .line 115
    .line 116
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isLastSibling:Z

    .line 117
    .line 118
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 119
    .line 120
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 121
    .line 122
    invoke-static {p6}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainText:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {p12}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainOtherContent:Ljava/lang/String;

    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-nez p2, :cond_b

    .line 156
    .line 157
    goto :goto_c

    .line 158
    :cond_b
    const-string p2, "T"

    .line 159
    .line 160
    invoke-static {p8, p2, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_c

    .line 165
    .line 166
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 167
    .line 168
    invoke-static {p8}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_c

    .line 173
    :catch_0
    move-exception p2

    .line 174
    goto :goto_b

    .line 175
    :cond_c
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 176
    .line 177
    invoke-static {p8}, Lorg/wikipedia/util/DateUtil;->dbDateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 178
    .line 179
    .line 180
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_c

    .line 182
    :goto_b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :goto_c
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 186
    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->type:Ljava/lang/String;

    .line 190
    iput p2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 191
    iput-object p3, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 193
    iput-object p5, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 194
    iput-object p6, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 195
    iput-object p7, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 196
    iput p8, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->headingLevel:I

    .line 197
    iput-boolean p9, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->placeholderHeading:Z

    .line 198
    iput-object p10, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 199
    iput-object p11, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 201
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    invoke-static {p5}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainText:Ljava/lang/String;

    .line 202
    invoke-static {p11}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainOtherContent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 203
    :try_start_0
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    const-string p2, "T"

    const/4 p3, 0x0

    .line 205
    invoke-static {p7, p2, p3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 206
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p7}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    .line 207
    :cond_1
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p7}, Lorg/wikipedia/util/DateUtil;->dbDateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    :goto_1
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

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

.method public final getAllReplies()Lkotlin/io/LinesSequence;
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;-><init>(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Lkotlin/io/LinesSequence;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {p0, v1, v0}, Lkotlin/io/LinesSequence;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->type:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->headingLevel:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->placeholderHeading:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 73
    .line 74
    invoke-virtual {v1, p1, p2}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
