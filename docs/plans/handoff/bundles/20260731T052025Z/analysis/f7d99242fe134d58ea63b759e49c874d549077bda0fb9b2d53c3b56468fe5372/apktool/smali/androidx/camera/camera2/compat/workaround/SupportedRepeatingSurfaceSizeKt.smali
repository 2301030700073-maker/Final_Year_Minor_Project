.class public abstract Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

.field public static final SIZE_COMPARATOR:Landroidx/camera/core/impl/utils/CompareSizesByArea;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    .line 2
    .line 3
    const/16 v1, 0x140

    .line 4
    .line 5
    const/16 v2, 0xf0

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

    .line 11
    .line 12
    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->SIZE_COMPARATOR:Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 19
    .line 20
    return-void
.end method
