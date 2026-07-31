.class public final Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field public static final PROBLEMATIC_UNI_SOC_MODELS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "sm-f946u1"

    .line 2
    .line 3
    const-string v10, "tecno mobile bf6"

    .line 4
    .line 5
    const-string v0, "itel l6006"

    .line 6
    .line 7
    const-string v1, "itel w6004"

    .line 8
    .line 9
    const-string v2, "moto g(20)"

    .line 10
    .line 11
    const-string v3, "moto e13"

    .line 12
    .line 13
    const-string v4, "moto e20"

    .line 14
    .line 15
    const-string v5, "rmx3231"

    .line 16
    .line 17
    const-string v6, "rmx3511"

    .line 18
    .line 19
    const-string v7, "sm-a032f"

    .line 20
    .line 21
    const-string v8, "sm-a035m"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;->PROBLEMATIC_UNI_SOC_MODELS:Ljava/util/Set;

    .line 32
    .line 33
    return-void
.end method
