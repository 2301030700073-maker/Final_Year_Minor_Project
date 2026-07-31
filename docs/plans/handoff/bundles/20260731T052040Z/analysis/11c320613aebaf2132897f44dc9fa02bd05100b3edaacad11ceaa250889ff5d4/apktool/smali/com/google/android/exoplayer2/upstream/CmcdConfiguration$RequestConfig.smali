.class public interface abstract Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestConfig"
.end annotation


# virtual methods
.method public abstract getCustomData()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap;"
        }
    .end annotation
.end method

.method public abstract getRequestedMaximumThroughputKbps(I)I
.end method

.method public abstract isKeyAllowed(Ljava/lang/String;)Z
.end method
