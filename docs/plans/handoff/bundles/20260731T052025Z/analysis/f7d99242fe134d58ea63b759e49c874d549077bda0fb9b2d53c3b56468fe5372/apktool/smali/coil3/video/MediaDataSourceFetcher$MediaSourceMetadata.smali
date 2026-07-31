.class public final Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;
.super Lcoil3/decode/ImageSource$Metadata;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/video/MediaDataSourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceMetadata"
.end annotation


# instance fields
.field private final mediaDataSource:Landroid/media/MediaDataSource;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcoil3/decode/ImageSource$Metadata;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMediaDataSource()Landroid/media/MediaDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 2
    .line 3
    return-object p0
.end method
