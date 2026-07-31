.class public abstract Landroidx/camera/camera2/impl/TagsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

.field public static final USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/HashMap;

    .line 2
    .line 3
    const-class v0, Landroidx/camera/core/impl/TagBundle;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "camerax.tag_bundle"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->create(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/camera/camera2/impl/TagsKt;->CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 16
    .line 17
    const-class v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "use_case_camera_state.tag"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->create(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 31
    .line 32
    return-void
.end method
