.class public abstract synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$WhenMappings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolderType;->values()[Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolderType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    :catch_0
    sput-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 13
    .line 14
    return-void
.end method
