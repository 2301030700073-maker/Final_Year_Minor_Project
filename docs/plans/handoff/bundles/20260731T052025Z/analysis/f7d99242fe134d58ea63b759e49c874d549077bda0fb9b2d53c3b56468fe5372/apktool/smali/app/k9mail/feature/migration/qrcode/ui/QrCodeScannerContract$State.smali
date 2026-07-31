.class public final Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

.field public final displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 11
    .line 12
    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 13
    .line 14
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;I)Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;-><init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;)V

    .line 25
    .line 26
    .line 27
    return-object p0
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
    instance-of v1, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

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
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 21
    .line 22
    iget-object p1, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(cameraPermissionState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", displayText="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
