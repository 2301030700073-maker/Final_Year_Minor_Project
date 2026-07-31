.class public final Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;


# static fields
.field public static final COMPAT_INSTANCE:Landroidx/biometric/BiometricPrompt;

.field public static final SDR_ONLY:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    invoke-direct {v0, v2, v1}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->COMPAT_INSTANCE:Landroidx/biometric/BiometricPrompt;

    .line 14
    .line 15
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->SDR_ONLY:Ljava/util/Set;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/core/DynamicRange;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "DynamicRange is not supported: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, p0}, Landroidx/room/util/RelationUtil;->checkArgument(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->SDR_ONLY:Ljava/util/Set;

    .line 28
    .line 29
    return-object p0
.end method

.method public final getSupportedDynamicRanges()Ljava/util/Set;
    .locals 0

    .line 1
    sget-object p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->SDR_ONLY:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final unwrap()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
