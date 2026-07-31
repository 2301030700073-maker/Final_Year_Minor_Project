.class public final Lexpo/modules/updates/db/Converters;
.super Ljava/lang/Object;
.source "Converters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/db/Converters$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u000cJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0007J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0007J\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0007J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0016H\u0007J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001aH\u0007J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\n\u001a\u00020!H\u0007J\u0012\u0010\"\u001a\u00020!2\u0008\u0010#\u001a\u0004\u0018\u00010 H\u0007J\u0010\u0010$\u001a\u00020%2\u0006\u0010\n\u001a\u00020!H\u0007J\u0012\u0010&\u001a\u00020!2\u0008\u0010\'\u001a\u0004\u0018\u00010%H\u0007R\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006("
    }
    d2 = {
        "Lexpo/modules/updates/db/Converters;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "longToDate",
        "Ljava/util/Date;",
        "value",
        "",
        "(Ljava/lang/Long;)Ljava/util/Date;",
        "dateToLong",
        "date",
        "(Ljava/util/Date;)Ljava/lang/Long;",
        "stringToUri",
        "Landroid/net/Uri;",
        "string",
        "uriToString",
        "uri",
        "stringToJsonObject",
        "Lorg/json/JSONObject;",
        "jsonObjectToString",
        "jsonObject",
        "bytesToUuid",
        "Ljava/util/UUID;",
        "bytes",
        "",
        "uuidToBytes",
        "uuid",
        "intToStatus",
        "Lexpo/modules/updates/db/enums/UpdateStatus;",
        "",
        "statusToInt",
        "status",
        "intToHashType",
        "Lexpo/modules/updates/db/enums/HashType;",
        "hashTypeToInt",
        "hashType",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "Converters"

    iput-object v0, p0, Lexpo/modules/updates/db/Converters;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bytesToUuid([B)Ljava/util/UUID;
    .locals 4

    .line 56
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 59
    new-instance p1, Ljava/util/UUID;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p1
.end method

.method public final dateToLong(Ljava/util/Date;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final hashTypeToInt(Lexpo/modules/updates/db/enums/HashType;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final intToHashType(I)Lexpo/modules/updates/db/enums/HashType;
    .locals 0

    .line 99
    sget-object p1, Lexpo/modules/updates/db/enums/HashType;->SHA256:Lexpo/modules/updates/db/enums/HashType;

    return-object p1
.end method

.method public final intToStatus(I)Lexpo/modules/updates/db/enums/UpdateStatus;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 81
    sget-object p1, Lexpo/modules/updates/db/enums/UpdateStatus;->DEVELOPMENT:Lexpo/modules/updates/db/enums/UpdateStatus;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid UpdateStatus value in database: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 80
    :cond_1
    sget-object p1, Lexpo/modules/updates/db/enums/UpdateStatus;->EMBEDDED:Lexpo/modules/updates/db/enums/UpdateStatus;

    goto :goto_0

    .line 79
    :cond_2
    sget-object p1, Lexpo/modules/updates/db/enums/UpdateStatus;->PENDING:Lexpo/modules/updates/db/enums/UpdateStatus;

    goto :goto_0

    .line 78
    :cond_3
    sget-object p1, Lexpo/modules/updates/db/enums/UpdateStatus;->READY:Lexpo/modules/updates/db/enums/UpdateStatus;

    :goto_0
    return-object p1
.end method

.method public final jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final longToDate(Ljava/lang/Long;)Ljava/util/Date;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final statusToInt(Lexpo/modules/updates/db/enums/UpdateStatus;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lexpo/modules/updates/db/Converters$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/updates/db/enums/UpdateStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid UpdateStatus value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public final stringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lexpo/modules/updates/db/Converters;->TAG:Ljava/lang/String;

    const-string v1, "Could not convert string to JSONObject"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final stringToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final uuidToBytes(Ljava/util/UUID;)[B
    .locals 3

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 64
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v0, "array(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
