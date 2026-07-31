.class public final Lnet/thunderbird/feature/notification/NotificationVibration;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT:Lnet/thunderbird/feature/notification/NotificationVibration;


# instance fields
.field public final isEnabled:Z

.field public final pattern:Lnet/thunderbird/feature/notification/VibratePattern;

.field public final repeatCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/feature/notification/VibratePattern;->Default:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v1, v2}, Lnet/thunderbird/feature/notification/NotificationVibration;-><init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lnet/thunderbird/feature/notification/NotificationVibration;->DEFAULT:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 10
    .line 11
    iput p3, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 12
    .line 13
    iget-boolean v1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 21
    .line 22
    iget-object v3, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget p0, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 28
    .line 29
    iget p1, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 30
    .line 31
    if-eq p0, p1, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget p0, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 22
    .line 23
    add-int/2addr v1, p0

    .line 24
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationVibration(isEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", pattern="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", repeatCount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget p0, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
