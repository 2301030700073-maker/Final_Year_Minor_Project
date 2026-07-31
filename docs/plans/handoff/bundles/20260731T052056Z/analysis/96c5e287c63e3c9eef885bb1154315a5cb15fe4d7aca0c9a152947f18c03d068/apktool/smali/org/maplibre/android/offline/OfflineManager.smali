.class public final Lorg/maplibre/android/offline/OfflineManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;,
        Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;,
        Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;,
        Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;,
        Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u00020\u0001:\u000589:;<J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087 \u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0087 \u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0004H\u0085 \u00a2\u0006\u0004\u0008\u000b\u0010\u000cJF\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u0007H\u0087 \u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0083 \u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ \u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001bH\u0083 \u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ(\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020 H\u0083 \u00a2\u0006\u0004\u0008!\u0010\"J0\u0010\'\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020&H\u0083 \u00a2\u0006\u0004\u0008\'\u0010(J(\u0010+\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020*H\u0083 \u00a2\u0006\u0004\u0008+\u0010,J\u001a\u0010.\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010-H\u0083 \u00a2\u0006\u0004\u0008.\u0010/J\u001a\u00100\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010-H\u0083 \u00a2\u0006\u0004\u00080\u0010/J\u001a\u00101\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010-H\u0083 \u00a2\u0006\u0004\u00081\u0010/J\u001a\u00102\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010-H\u0083 \u00a2\u0006\u0004\u00082\u0010/J\"\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010-H\u0083 \u00a2\u0006\u0004\u00084\u00105R\u0014\u00106\u001a\u00020\u00028\u0002X\u0083D\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006="
    }
    d2 = {
        "Lorg/maplibre/android/offline/OfflineManager;",
        "",
        "",
        "limit",
        "",
        "setOfflineMapboxTileCountLimit",
        "(J)V",
        "",
        "autopack",
        "runPackDatabaseAutomatically",
        "(Z)V",
        "finalize",
        "()V",
        "",
        "url",
        "",
        "data",
        "modified",
        "expires",
        "etag",
        "mustRevalidate",
        "putResourceWithUrl",
        "(Ljava/lang/String;[BJJLjava/lang/String;Z)V",
        "Lorg/maplibre/android/storage/FileSource;",
        "fileSource",
        "initialize",
        "(Lorg/maplibre/android/storage/FileSource;)V",
        "Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;",
        "callback",
        "listOfflineRegions",
        "(Lorg/maplibre/android/storage/FileSource;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V",
        "regionID",
        "Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;",
        "getOfflineRegion",
        "(Lorg/maplibre/android/storage/FileSource;JLorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;)V",
        "Lorg/maplibre/android/offline/OfflineRegionDefinition;",
        "definition",
        "metadata",
        "Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;",
        "createOfflineRegion",
        "(Lorg/maplibre/android/storage/FileSource;Lorg/maplibre/android/offline/OfflineRegionDefinition;[BLorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;)V",
        "path",
        "Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;",
        "mergeOfflineRegions",
        "(Lorg/maplibre/android/storage/FileSource;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V",
        "Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;",
        "nativeResetDatabase",
        "(Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V",
        "nativePackDatabase",
        "nativeInvalidateAmbientCache",
        "nativeClearAmbientCache",
        "size",
        "nativeSetMaximumAmbientCacheSize",
        "(JLorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V",
        "nativePtr",
        "J",
        "ListOfflineRegionsCallback",
        "GetOfflineRegionCallback",
        "CreateOfflineRegionCallback",
        "MergeOfflineRegionsCallback",
        "FileSourceCallback",
        "MapLibreAndroid_vulkanRelease"
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
.field private final nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/maplibre/android/LibraryLoader;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final native createOfflineRegion(Lorg/maplibre/android/storage/FileSource;Lorg/maplibre/android/offline/OfflineRegionDefinition;[BLorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;)V
.end method

.method private final native getOfflineRegion(Lorg/maplibre/android/storage/FileSource;JLorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;)V
.end method

.method private final native initialize(Lorg/maplibre/android/storage/FileSource;)V
.end method

.method private final native listOfflineRegions(Lorg/maplibre/android/storage/FileSource;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V
.end method

.method private final native mergeOfflineRegions(Lorg/maplibre/android/storage/FileSource;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V
.end method

.method private final native nativeClearAmbientCache(Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
.end method

.method private final native nativeInvalidateAmbientCache(Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
.end method

.method private final native nativePackDatabase(Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
.end method

.method private final native nativeResetDatabase(Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
.end method

.method private final native nativeSetMaximumAmbientCacheSize(JLorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
.end method


# virtual methods
.method public final native finalize()V
.end method

.method public final native putResourceWithUrl(Ljava/lang/String;[BJJLjava/lang/String;Z)V
.end method

.method public final native runPackDatabaseAutomatically(Z)V
.end method

.method public final native setOfflineMapboxTileCountLimit(J)V
.end method
