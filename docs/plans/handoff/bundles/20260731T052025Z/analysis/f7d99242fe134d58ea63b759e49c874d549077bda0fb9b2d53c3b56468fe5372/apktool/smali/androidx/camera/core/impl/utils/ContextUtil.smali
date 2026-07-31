.class public abstract Landroidx/camera/core/impl/utils/ContextUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CACHED_CONTEXTS:Ljava/util/HashMap;

.field public static final CACHE_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/utils/ContextUtil;->CACHE_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/camera/core/impl/utils/ContextUtil;->CACHED_CONTEXTS:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public static getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x22

    .line 17
    .line 18
    if-lt v2, v4, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/camera/camera2/compat/Api34Compat;->getDeviceId$1(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v5, v3

    .line 26
    :goto_0
    const/4 v6, 0x0

    .line 27
    const/16 v7, 0x1e

    .line 28
    .line 29
    if-lt v2, v7, :cond_1

    .line 30
    .line 31
    invoke-static {p0}, Landroidx/core/os/BuildCompat$Api30Impl;->getAttributionTag(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v8, v6

    .line 37
    :goto_1
    const-string v9, "%d-%d-%s"

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v10, 0x3

    .line 48
    new-array v10, v10, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v1, v10, v3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    aput-object v5, v10, v1

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    aput-object v8, v10, v1

    .line 57
    .line 58
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v3, Landroidx/camera/core/impl/utils/ContextUtil;->CACHE_LOCK:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v3

    .line 65
    :try_start_0
    sget-object v5, Landroidx/camera/core/impl/utils/ContextUtil;->CACHED_CONTEXTS:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    if-eqz v8, :cond_3

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroid/content/Context;

    .line 80
    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    move-object v6, v8

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 89
    .line 90
    monitor-exit v3

    .line 91
    return-object v6

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    if-lt v2, v4, :cond_5

    .line 95
    .line 96
    invoke-static {p0}, Landroidx/camera/camera2/compat/Api34Compat;->getDeviceId$1(Landroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v0, v4}, Landroidx/camera/camera2/compat/Api34Compat;->createDeviceContext(Landroid/content/Context;I)Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_5
    if-lt v2, v7, :cond_6

    .line 105
    .line 106
    invoke-static {p0}, Landroidx/core/os/BuildCompat$Api30Impl;->getAttributionTag(Landroid/content/Context;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v0}, Landroidx/core/os/BuildCompat$Api30Impl;->getAttributionTag(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {p0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_6

    .line 119
    .line 120
    invoke-static {v0, p0}, Landroidx/core/os/BuildCompat$Api30Impl;->createAttributionContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :cond_6
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 125
    .line 126
    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    monitor-exit v3

    .line 133
    return-object v0

    .line 134
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p0
.end method
