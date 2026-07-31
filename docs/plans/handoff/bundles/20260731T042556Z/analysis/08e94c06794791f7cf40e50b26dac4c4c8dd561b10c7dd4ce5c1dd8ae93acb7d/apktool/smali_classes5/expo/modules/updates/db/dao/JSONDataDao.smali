.class public abstract Lexpo/modules/updates/db/dao/JSONDataDao;
.super Ljava/lang/Object;
.source "JSONDataDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSONDataDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONDataDao.kt\nexpo/modules/updates/db/dao/JSONDataDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1557#2:75\n1628#2,3:76\n*S KotlinDebug\n*F\n+ 1 JSONDataDao.kt\nexpo/modules/updates/db/dao/JSONDataDao\n*L\n71#1:75\n71#1:76,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H%J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006H%J\u0018\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H%J\u0016\u0010\u000e\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005H%J\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0008J \u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0017J$\u0010\u0014\u001a\u00020\u000b2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00080\u00162\u0006\u0010\t\u001a\u00020\u0008H\u0017J=\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00082#\u0010\u0018\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0008\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u00080\u0019H\u0017J\u0016\u0010\u001d\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0005H\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/updates/db/dao/JSONDataDao;",
        "",
        "<init>",
        "()V",
        "loadJSONDataForKeyInternal",
        "",
        "Lexpo/modules/updates/db/entity/JSONDataEntity;",
        "key",
        "",
        "scopeKey",
        "insertJSONDataInternal",
        "",
        "jsonDataEntity",
        "deleteJSONDataForKeyInternal",
        "deleteJSONDataForKeysForAllScopeKeysInternal",
        "keys",
        "loadJSONStringForKey",
        "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
        "setJSONStringForKey",
        "value",
        "setMultipleFields",
        "fields",
        "",
        "updateJSONStringForKey",
        "updater",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "previousValue",
        "deleteJSONDataForKeysForAllScopeKeys",
        "JSONDataKey",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract deleteJSONDataForKeyInternal(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public deleteJSONDataForKeysForAllScopeKeys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    check-cast p1, Ljava/lang/Iterable;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    .line 71
    invoke-virtual {v1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 71
    invoke-virtual {p0, v0}, Lexpo/modules/updates/db/dao/JSONDataDao;->deleteJSONDataForKeysForAllScopeKeysInternal(Ljava/util/List;)V

    return-void
.end method

.method protected abstract deleteJSONDataForKeysForAllScopeKeysInternal(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract insertJSONDataInternal(Lexpo/modules/updates/db/entity/JSONDataEntity;)V
.end method

.method protected abstract loadJSONDataForKeyInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/JSONDataEntity;",
            ">;"
        }
    .end annotation
.end method

.method public final loadJSONStringForKey(Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/db/dao/JSONDataDao;->loadJSONDataForKeyInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/db/entity/JSONDataEntity;

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/JSONDataEntity;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setJSONStringForKey(Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lexpo/modules/updates/db/dao/JSONDataDao;->deleteJSONDataForKeyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lexpo/modules/updates/db/entity/JSONDataEntity;

    invoke-virtual {p1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, p1, p2, v1, p3}, Lexpo/modules/updates/db/entity/JSONDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lexpo/modules/updates/db/dao/JSONDataDao;->insertJSONDataInternal(Lexpo/modules/updates/db/entity/JSONDataEntity;)V

    return-void
.end method

.method public setMultipleFields(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    invoke-virtual {v1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lexpo/modules/updates/db/dao/JSONDataDao;->deleteJSONDataForKeyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lexpo/modules/updates/db/entity/JSONDataEntity;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    invoke-virtual {v2}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v0, v3, p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lexpo/modules/updates/db/dao/JSONDataDao;->insertJSONDataInternal(Lexpo/modules/updates/db/entity/JSONDataEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateJSONStringForKey(Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updater"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/db/dao/JSONDataDao;->loadJSONStringForKey(Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lexpo/modules/updates/db/dao/JSONDataDao;->deleteJSONDataForKeyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lexpo/modules/updates/db/entity/JSONDataEntity;

    invoke-virtual {p1}, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p1, p3, v0, p2}, Lexpo/modules/updates/db/entity/JSONDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lexpo/modules/updates/db/dao/JSONDataDao;->insertJSONDataInternal(Lexpo/modules/updates/db/entity/JSONDataEntity;)V

    return-void
.end method
