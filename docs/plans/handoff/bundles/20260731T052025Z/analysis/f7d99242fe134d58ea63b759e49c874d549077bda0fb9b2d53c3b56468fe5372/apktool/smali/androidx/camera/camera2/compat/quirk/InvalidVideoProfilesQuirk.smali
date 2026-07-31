.class public final Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field public static final AFFECTED_ONE_PLUS_MODELS:Ljava/util/List;

.field public static final AFFECTED_OPPO_MODELS:Ljava/util/List;

.field public static final AFFECTED_PIXEL_MODELS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "pixel 7"

    .line 2
    .line 3
    const-string v10, "pixel 7 pro"

    .line 4
    .line 5
    const-string v0, "pixel 4"

    .line 6
    .line 7
    const-string v1, "pixel 4a"

    .line 8
    .line 9
    const-string v2, "pixel 4a (5g)"

    .line 10
    .line 11
    const-string v3, "pixel 4 xl"

    .line 12
    .line 13
    const-string v4, "pixel 5"

    .line 14
    .line 15
    const-string v5, "pixel 5a"

    .line 16
    .line 17
    const-string v6, "pixel 6"

    .line 18
    .line 19
    const-string v7, "pixel 6a"

    .line 20
    .line 21
    const-string v8, "pixel 6 pro"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    .line 32
    .line 33
    const-string v0, "cph2417"

    .line 34
    .line 35
    const-string v1, "cph2451"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_ONE_PLUS_MODELS:Ljava/util/List;

    .line 46
    .line 47
    const-string v0, "cph2525"

    .line 48
    .line 49
    const-string v1, "pht110"

    .line 50
    .line 51
    const-string v2, "cph2437"

    .line 52
    .line 53
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_OPPO_MODELS:Ljava/util/List;

    .line 62
    .line 63
    return-void
.end method
