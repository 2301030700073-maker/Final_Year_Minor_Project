.class public final Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;
.super Landroidx/camera/camera2/pipe/OutputStream$Config;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final outputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;


# direct methods
.method public constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p5

    .line 9
    move-object v5, p6

    .line 10
    move-object/from16 v6, p7

    .line 11
    .line 12
    move-object/from16 v7, p8

    .line 13
    .line 14
    move-object/from16 v8, p9

    .line 15
    .line 16
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/OutputStream$Config;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iput-object p4, p0, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;->outputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 20
    .line 21
    return-void
.end method
