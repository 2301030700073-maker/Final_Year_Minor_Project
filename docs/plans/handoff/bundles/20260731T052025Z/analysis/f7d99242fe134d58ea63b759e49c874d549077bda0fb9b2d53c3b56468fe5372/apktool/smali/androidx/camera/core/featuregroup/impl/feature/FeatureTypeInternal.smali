.class public final enum Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field public static final enum DYNAMIC_RANGE:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field public static final enum FPS_RANGE:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field public static final enum IMAGE_FORMAT:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field public static final enum VIDEO_STABILIZATION:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 2
    .line 3
    const-string v1, "DYNAMIC_RANGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->DYNAMIC_RANGE:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 10
    .line 11
    new-instance v1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 12
    .line 13
    const-string v3, "FPS_RANGE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->FPS_RANGE:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 20
    .line 21
    new-instance v3, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 22
    .line 23
    const-string v5, "VIDEO_STABILIZATION"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->VIDEO_STABILIZATION:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 30
    .line 31
    new-instance v5, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 32
    .line 33
    const-string v7, "IMAGE_FORMAT"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->IMAGE_FORMAT:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 40
    .line 41
    new-instance v7, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 42
    .line 43
    const-string v9, "RECORDING_QUALITY"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const/4 v9, 0x5

    .line 50
    new-array v9, v9, [Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 51
    .line 52
    aput-object v0, v9, v2

    .line 53
    .line 54
    aput-object v1, v9, v4

    .line 55
    .line 56
    aput-object v3, v9, v6

    .line 57
    .line 58
    aput-object v5, v9, v8

    .line 59
    .line 60
    aput-object v7, v9, v10

    .line 61
    .line 62
    sput-object v9, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->$VALUES:[Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 63
    .line 64
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 65
    .line 66
    invoke-direct {v0, v9}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 70
    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->$VALUES:[Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 8
    .line 9
    return-object v0
.end method
