.class public abstract Lorg/maplibre/android/LibraryLoader;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static loaded:Z

.field public static volatile loader:Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getModuleProvider()Lorg/maplibre/android/ModuleProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/wikipedia/login/LoginClient;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/maplibre/android/LibraryLoader;->loader:Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;

    .line 16
    .line 17
    return-void
.end method

.method public static declared-synchronized load()V
    .locals 4

    .line 1
    const-class v0, Lorg/maplibre/android/LibraryLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lorg/maplibre/android/LibraryLoader;->loaded:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lorg/maplibre/android/LibraryLoader;->loaded:Z

    .line 10
    .line 11
    sget-object v1, Lorg/maplibre/android/LibraryLoader;->loader:Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;

    .line 12
    .line 13
    const-string v2, "maplibre"

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_1
    sput-boolean v2, Lorg/maplibre/android/LibraryLoader;->loaded:Z

    .line 27
    .line 28
    const-string v2, "Failed to load native shared library."

    .line 29
    .line 30
    const-string v3, "Mbgl-LibraryLoader"

    .line 31
    .line 32
    invoke-static {v3, v2, v1}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Lkotlin/text/UStringsKt;->strictModeViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    const-string v2, "org.junit.Test"

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_1
    :try_start_3
    const-string v2, "org.robolectric.Robolectric"

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_2
    :try_start_4
    const-string v2, "android.os.Build"

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    :catch_3
    :cond_0
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 59
    throw v1
.end method
