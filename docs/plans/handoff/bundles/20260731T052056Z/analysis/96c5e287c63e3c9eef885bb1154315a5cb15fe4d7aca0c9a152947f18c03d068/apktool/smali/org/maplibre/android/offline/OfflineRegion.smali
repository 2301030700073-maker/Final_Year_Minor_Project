.class public final Lorg/maplibre/android/offline/OfflineRegion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0005()*+,B1\u0008\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ \u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0083 \u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0083 \u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0083 \u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0018H\u0083 \u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u001bH\u0083 \u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ \u0010\u001f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u001eH\u0083 \u00a2\u0006\u0004\u0008\u001f\u0010 J\u0018\u0010\"\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020!H\u0083 \u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\rH\u0085 \u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\u00028\u0002X\u0083D\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006-"
    }
    d2 = {
        "Lorg/maplibre/android/offline/OfflineRegion;",
        "",
        "",
        "offlineRegionPtr",
        "Lorg/maplibre/android/storage/FileSource;",
        "fileSource",
        "idParam",
        "Lorg/maplibre/android/offline/OfflineRegionDefinition;",
        "definition",
        "",
        "metadata",
        "<init>",
        "(JLorg/maplibre/android/storage/FileSource;JLorg/maplibre/android/offline/OfflineRegionDefinition;[B)V",
        "",
        "initialize",
        "(JLorg/maplibre/android/storage/FileSource;)V",
        "Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;",
        "callback",
        "setOfflineRegionObserver",
        "(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V",
        "",
        "offlineRegionDownloadState",
        "setOfflineRegionDownloadState",
        "(I)V",
        "Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;",
        "getOfflineRegionStatus",
        "(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V",
        "Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;",
        "deleteOfflineRegion",
        "(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V",
        "Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;",
        "updateOfflineRegionMetadata",
        "([BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V",
        "Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;",
        "invalidateOfflineRegion",
        "(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V",
        "finalize",
        "()V",
        "nativePtr",
        "J",
        "OfflineRegionObserver",
        "OfflineRegionStatusCallback",
        "OfflineRegionDeleteCallback",
        "OfflineRegionInvalidateCallback",
        "OfflineRegionUpdateMetadataCallback",
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
.field public final definition:Lorg/maplibre/android/offline/OfflineRegionDefinition;

.field public final fileSource:Lorg/maplibre/android/storage/FileSource;

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

.method private constructor <init>(JLorg/maplibre/android/storage/FileSource;JLorg/maplibre/android/offline/OfflineRegionDefinition;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    .line 17
    .line 18
    iput-object p6, p0, Lorg/maplibre/android/offline/OfflineRegion;->definition:Lorg/maplibre/android/offline/OfflineRegionDefinition;

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/offline/OfflineRegion;->initialize(JLorg/maplibre/android/storage/FileSource;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final native deleteOfflineRegion(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V
.end method

.method private final native getOfflineRegionStatus(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V
.end method

.method private final native initialize(JLorg/maplibre/android/storage/FileSource;)V
.end method

.method private final native invalidateOfflineRegion(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V
.end method

.method private final native setOfflineRegionDownloadState(I)V
.end method

.method private final native setOfflineRegionObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V
.end method

.method private final native updateOfflineRegionMetadata([BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
.end method


# virtual methods
.method public final native finalize()V
.end method
