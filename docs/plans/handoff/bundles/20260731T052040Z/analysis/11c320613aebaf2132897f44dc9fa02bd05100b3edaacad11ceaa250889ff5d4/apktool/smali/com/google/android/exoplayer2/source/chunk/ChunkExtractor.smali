.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getChunkIndex()Lcom/google/android/exoplayer2/extractor/ChunkIndex;
.end method

.method public abstract getSampleFormats()[Lcom/google/android/exoplayer2/Format;
.end method

.method public abstract init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
.end method

.method public abstract read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
.end method

.method public abstract release()V
.end method
