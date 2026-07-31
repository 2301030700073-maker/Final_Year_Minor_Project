.class Lorg/maplibre/android/net/NativeConnectivityListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/net/ConnectivityListener;


# instance fields
.field private invalidated:Z

.field private nativePtr:J


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

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/maplibre/android/net/NativeConnectivityListener;->nativePtr:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public native finalize()V
.end method

.method public native initialize()V
.end method

.method public native nativeOnConnectivityStateChanged(Z)V
.end method
