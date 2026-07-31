.class public final Lnet/thunderbird/core/common/cache/InMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/common/cache/Cache;


# instance fields
.field public final synthetic $r8$classId:I

.field public final cache:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->$r8$classId:I

    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/common/cache/ExpiringCache;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 14
    .line 15
    invoke-virtual {p0}, Lnet/thunderbird/core/common/cache/ExpiringCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/common/cache/ExpiringCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/common/cache/ExpiringCache;->hasKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Lnet/thunderbird/core/common/mail/EmailAddress;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/common/cache/ExpiringCache;->set(Lnet/thunderbird/core/common/mail/EmailAddress;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/InMemoryCache;->cache:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
