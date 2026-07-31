.class public final Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect;


# instance fields
.field public final isEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;->isEnabled:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;->isEnabled:Z

    .line 12
    .line 13
    iget-boolean p1, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;->isEnabled:Z

    .line 14
    .line 15
    if-eq p0, p1, :cond_2

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;->isEnabled:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x4cf

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/16 p0, 0x4d5

    .line 9
    .line 10
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "ToggleSaveButtonEnabled(isEnabled="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;->isEnabled:Z

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
