.class public final Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event;


# instance fields
.field public final color:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;->color:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;

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
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;

    .line 12
    .line 13
    iget p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;->color:I

    .line 14
    .line 15
    iget p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;->color:I

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;->color:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "OnColorChange(color="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;->color:I

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
