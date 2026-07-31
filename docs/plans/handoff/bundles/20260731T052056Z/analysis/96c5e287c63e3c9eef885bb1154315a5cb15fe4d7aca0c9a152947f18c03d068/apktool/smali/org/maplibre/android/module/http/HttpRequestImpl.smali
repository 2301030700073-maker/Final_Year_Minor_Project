.class public final Lorg/maplibre/android/module/http/HttpRequestImpl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/http/HttpRequest;


# static fields
.field public static final DEFAULT_CLIENT:Lokhttp3/OkHttpClient;

.field public static client:Lokhttp3/OkHttpClient;

.field public static final userAgentString:Ljava/lang/String;


# instance fields
.field public call:Lokhttp3/internal/connection/RealCall;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23
    .line 24
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "/"

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, " ("

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ")"

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lkotlin/text/UStringsKt;->strictModeViolation(Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    const-string v0, ""

    .line 65
    .line 66
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 69
    .line 70
    aget-object v3, v3, v1

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, " MapLibre Android/13.0.2 (6849681) Android/"

    .line 78
    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, " ("

    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, ")"

    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    move v3, v1

    .line 107
    :goto_1
    if-ge v3, v2, :cond_3

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/16 v5, 0x7f

    .line 114
    .line 115
    const/16 v6, 0x1f

    .line 116
    .line 117
    if-le v4, v6, :cond_0

    .line 118
    .line 119
    if-ge v4, v5, :cond_0

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    add-int/2addr v3, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_0
    new-instance v4, Lokio/Buffer;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v1, v3, v0}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    if-ge v3, v2, :cond_2

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-le v1, v6, :cond_1

    .line 142
    .line 143
    if-ge v1, v5, :cond_1

    .line 144
    .line 145
    move v7, v1

    .line 146
    goto :goto_3

    .line 147
    :cond_1
    const/16 v7, 0x3f

    .line 148
    .line 149
    :goto_3
    invoke-virtual {v4, v7}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v3, v1

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :cond_3
    sput-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->userAgentString:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 165
    .line 166
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v1, Lokhttp3/Dispatcher;

    .line 170
    .line 171
    invoke-direct {v1}, Lokhttp3/Dispatcher;-><init>()V

    .line 172
    .line 173
    .line 174
    monitor-enter v1

    .line 175
    const/16 v2, 0x14

    .line 176
    .line 177
    :try_start_1
    iput v2, v1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    monitor-exit v1

    .line 180
    const/4 v2, 0x7

    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-static {v1, v3, v3, v3, v2}, Lokhttp3/Dispatcher;->promoteAndExecute$default(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 183
    .line 184
    .line 185
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 186
    .line 187
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 190
    .line 191
    .line 192
    sput-object v1, Lorg/maplibre/android/module/http/HttpRequestImpl;->DEFAULT_CLIENT:Lokhttp3/OkHttpClient;

    .line 193
    .line 194
    sput-object v1, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    .line 195
    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    monitor-exit v1

    .line 199
    throw v0
.end method
