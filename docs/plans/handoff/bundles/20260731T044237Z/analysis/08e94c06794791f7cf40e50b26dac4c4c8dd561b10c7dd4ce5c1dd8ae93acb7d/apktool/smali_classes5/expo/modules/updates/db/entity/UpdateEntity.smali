.class public final Lexpo/modules/updates/db/entity/UpdateEntity;
.super Ljava/lang/Object;
.source "UpdateEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010@\u001a\u00020\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010,\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0011\u00102\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0016R\u001e\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0012\"\u0004\u00086\u0010\u0014R\u001e\u00107\u001a\u0002088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001e\u0010=\u001a\u0002088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010:\"\u0004\u0008?\u0010<\u00a8\u0006A"
    }
    d2 = {
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "",
        "id",
        "Ljava/util/UUID;",
        "commitTime",
        "Ljava/util/Date;",
        "runtimeVersion",
        "",
        "scopeKey",
        "manifest",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V",
        "getId",
        "()Ljava/util/UUID;",
        "setId",
        "(Ljava/util/UUID;)V",
        "getCommitTime",
        "()Ljava/util/Date;",
        "setCommitTime",
        "(Ljava/util/Date;)V",
        "getRuntimeVersion",
        "()Ljava/lang/String;",
        "setRuntimeVersion",
        "(Ljava/lang/String;)V",
        "getScopeKey",
        "setScopeKey",
        "getManifest",
        "()Lorg/json/JSONObject;",
        "setManifest",
        "(Lorg/json/JSONObject;)V",
        "launchAssetId",
        "",
        "getLaunchAssetId",
        "()Ljava/lang/Long;",
        "setLaunchAssetId",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "status",
        "Lexpo/modules/updates/db/enums/UpdateStatus;",
        "getStatus",
        "()Lexpo/modules/updates/db/enums/UpdateStatus;",
        "setStatus",
        "(Lexpo/modules/updates/db/enums/UpdateStatus;)V",
        "keep",
        "",
        "getKeep",
        "()Z",
        "setKeep",
        "(Z)V",
        "loggingId",
        "getLoggingId",
        "lastAccessed",
        "getLastAccessed",
        "setLastAccessed",
        "successfulLaunchCount",
        "",
        "getSuccessfulLaunchCount",
        "()I",
        "setSuccessfulLaunchCount",
        "(I)V",
        "failedLaunchCount",
        "getFailedLaunchCount",
        "setFailedLaunchCount",
        "debugInfo",
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
.field private commitTime:Ljava/util/Date;

.field private failedLaunchCount:I

.field private id:Ljava/util/UUID;

.field private keep:Z

.field private lastAccessed:Ljava/util/Date;

.field private launchAssetId:Ljava/lang/Long;

.field private manifest:Lorg/json/JSONObject;

.field private runtimeVersion:Ljava/lang/String;

.field private scopeKey:Ljava/lang/String;

.field private status:Lexpo/modules/updates/db/enums/UpdateStatus;

.field private successfulLaunchCount:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commitTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->id:Ljava/util/UUID;

    .line 37
    iput-object p2, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->commitTime:Ljava/util/Date;

    .line 38
    iput-object p3, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->runtimeVersion:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->scopeKey:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->manifest:Lorg/json/JSONObject;

    .line 45
    sget-object p1, Lexpo/modules/updates/db/enums/UpdateStatus;->PENDING:Lexpo/modules/updates/db/enums/UpdateStatus;

    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->status:Lexpo/modules/updates/db/enums/UpdateStatus;

    .line 55
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->lastAccessed:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final debugInfo()Ljava/lang/String;
    .locals 4

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    iget-object v2, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->id:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->status:Lexpo/modules/updates/db/enums/UpdateStatus;

    invoke-virtual {v2}, Lexpo/modules/updates/db/enums/UpdateStatus;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCommitTime()Ljava/util/Date;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->commitTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getFailedLaunchCount()I
    .locals 1

    .line 60
    iget v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->failedLaunchCount:I

    return v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final getKeep()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->keep:Z

    return v0
.end method

.method public final getLastAccessed()Ljava/util/Date;
    .locals 1

    .line 54
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->lastAccessed:Ljava/util/Date;

    return-object v0
.end method

.method public final getLaunchAssetId()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->launchAssetId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLoggingId()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getManifest()Lorg/json/JSONObject;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->manifest:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRuntimeVersion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->runtimeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopeKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->scopeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lexpo/modules/updates/db/enums/UpdateStatus;
    .locals 1

    .line 45
    iget-object v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->status:Lexpo/modules/updates/db/enums/UpdateStatus;

    return-object v0
.end method

.method public final getSuccessfulLaunchCount()I
    .locals 1

    .line 57
    iget v0, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->successfulLaunchCount:I

    return v0
.end method

.method public final setCommitTime(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->commitTime:Ljava/util/Date;

    return-void
.end method

.method public final setFailedLaunchCount(I)V
    .locals 0

    .line 60
    iput p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->failedLaunchCount:I

    return-void
.end method

.method public final setId(Ljava/util/UUID;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->id:Ljava/util/UUID;

    return-void
.end method

.method public final setKeep(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->keep:Z

    return-void
.end method

.method public final setLastAccessed(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->lastAccessed:Ljava/util/Date;

    return-void
.end method

.method public final setLaunchAssetId(Ljava/lang/Long;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->launchAssetId:Ljava/lang/Long;

    return-void
.end method

.method public final setManifest(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->manifest:Lorg/json/JSONObject;

    return-void
.end method

.method public final setRuntimeVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->runtimeVersion:Ljava/lang/String;

    return-void
.end method

.method public final setScopeKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->scopeKey:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->status:Lexpo/modules/updates/db/enums/UpdateStatus;

    return-void
.end method

.method public final setSuccessfulLaunchCount(I)V
    .locals 0

    .line 57
    iput p1, p0, Lexpo/modules/updates/db/entity/UpdateEntity;->successfulLaunchCount:I

    return-void
.end method
