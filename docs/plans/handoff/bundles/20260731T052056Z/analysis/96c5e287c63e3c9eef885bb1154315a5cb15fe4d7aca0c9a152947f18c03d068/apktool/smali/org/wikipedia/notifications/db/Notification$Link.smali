.class public final Lorg/wikipedia/notifications/db/Notification$Link;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/notifications/db/Notification$Link$Companion;


# instance fields
.field public final description:Ljava/lang/String;

.field public final icon:Lkotlinx/serialization/json/JsonElement;

.field public final label:Ljava/lang/String;

.field public final tooltip:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/notifications/db/Notification$Link$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/notifications/db/Notification$Link;->Companion:Lorg/wikipedia/notifications/db/Notification$Link$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V
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
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Link;->description:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/notifications/db/Notification$Link;->description:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 20
    .line 21
    move-object p3, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 24
    .line 25
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput-object v1, p0, Lorg/wikipedia/notifications/db/Notification$Link;->tooltip:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/notifications/db/Notification$Link;->tooltip:Ljava/lang/String;

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    iput-object p2, p0, Lorg/wikipedia/notifications/db/Notification$Link;->icon:Lkotlinx/serialization/json/JsonElement;

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/notifications/db/Notification$Link;->icon:Lkotlinx/serialization/json/JsonElement;

    .line 52
    .line 53
    :goto_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :try_start_0
    const-string p1, "+"

    .line 57
    .line 58
    const-string p4, "%2B"

    .line 59
    .line 60
    invoke-static {p3, p1, p4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p4, "UTF-8"

    .line 65
    .line 66
    invoke-static {p1, p4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    move-object p3, p1

    .line 74
    goto :goto_5

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :catch_1
    const-string p1, "URL decoding failed. String was: "

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_5
    iput-object p3, p0, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 90
    .line 91
    const-string p1, "//"

    .line 92
    .line 93
    const/4 p2, 0x0

    .line 94
    invoke-static {p3, p1, p2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    if-eqz p4, :cond_6

    .line 99
    .line 100
    const/4 p4, 0x2

    .line 101
    invoke-static {p3, p1, p2, p2, p4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-gez p2, :cond_5

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    add-int/2addr p1, p2

    .line 113
    const-string p4, "https://"

    .line 114
    .line 115
    invoke-static {p3, p2, p1, p4}, Lkotlin/text/StringsKt;->replaceRange(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    :goto_6
    iput-object p3, p0, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 124
    .line 125
    :cond_6
    return-void
.end method
