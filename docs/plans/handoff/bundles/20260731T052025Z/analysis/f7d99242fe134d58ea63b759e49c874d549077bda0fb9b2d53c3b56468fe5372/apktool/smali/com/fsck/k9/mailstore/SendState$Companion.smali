.class public final Lcom/fsck/k9/mailstore/SendState$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/MessageDate;


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/mailstore/SendState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/mailstore/SendState$Companion;->INSTANCE:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public static fromDatabaseValue(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    invoke-direct {v1, v2, v0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;->databaseValue:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v2

    .line 39
    :goto_0
    check-cast v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    const-string v0, "Unknown database value: "

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v2
.end method

.method public static fromPreviewType(I)Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    sget-object v1, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v3, v1

    .line 26
    check-cast v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 27
    .line 28
    iget v3, v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;->previewType:I

    .line 29
    .line 30
    if-ne v3, p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v0

    .line 34
    :goto_0
    check-cast v1, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    const/4 v1, 0x1

    .line 40
    if-eq p0, v1, :cond_6

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    if-eq p0, v1, :cond_5

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    if-eq p0, v1, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    if-eq p0, v1, :cond_3

    .line 50
    .line 51
    const-string p0, "null"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string p0, "ERROR"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string p0, "ENCRYPTED"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    const-string p0, "TEXT"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_6
    const-string p0, "NONE"

    .line 64
    .line 65
    :goto_1
    const-string v1, "Unknown preview type: "

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_7
    throw v0
.end method


# virtual methods
.method public declared-synchronized getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    sget-object v0, Lcom/fsck/k9/mailstore/MessageListCache;->instances:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/mailstore/MessageListCache;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/fsck/k9/mailstore/MessageListCache;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    check-cast v1, Lcom/fsck/k9/mailstore/MessageListCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v1

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method
