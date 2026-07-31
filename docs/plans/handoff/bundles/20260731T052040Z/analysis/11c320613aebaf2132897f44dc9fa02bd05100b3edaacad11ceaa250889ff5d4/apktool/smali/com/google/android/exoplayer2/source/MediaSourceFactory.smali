.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSourceFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSUPPORTED:Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaSourceFactory$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->UNSUPPORTED:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 7
    .line 8
    return-void
.end method
