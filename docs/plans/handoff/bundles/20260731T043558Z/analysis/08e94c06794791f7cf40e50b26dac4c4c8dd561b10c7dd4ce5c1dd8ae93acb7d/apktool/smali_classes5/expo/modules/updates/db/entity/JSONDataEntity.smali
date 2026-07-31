.class public final Lexpo/modules/updates/db/entity/JSONDataEntity;
.super Ljava/lang/Object;
.source "JSONDataEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\rR\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/updates/db/entity/JSONDataEntity;",
        "",
        "key",
        "",
        "value",
        "lastUpdated",
        "Ljava/util/Date;",
        "scopeKey",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
        "getValue",
        "setValue",
        "getLastUpdated",
        "()Ljava/util/Date;",
        "setLastUpdated",
        "(Ljava/util/Date;)V",
        "getScopeKey",
        "setScopeKey",
        "id",
        "",
        "getId",
        "()J",
        "setId",
        "(J)V",
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
.field private id:J

.field private key:Ljava/lang/String;

.field private lastUpdated:Ljava/util/Date;

.field private scopeKey:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastUpdated"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->key:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->value:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->lastUpdated:Ljava/util/Date;

    .line 24
    iput-object p4, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->scopeKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->id:J

    return-wide v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUpdated()Ljava/util/Date;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public final getScopeKey()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->scopeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->id:J

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public final setLastUpdated(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->lastUpdated:Ljava/util/Date;

    return-void
.end method

.method public final setScopeKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->scopeKey:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lexpo/modules/updates/db/entity/JSONDataEntity;->value:Ljava/lang/String;

    return-void
.end method
