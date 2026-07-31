.class public final synthetic Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;->f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;->f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string v1, "accountUuid"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p0, v0

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string p0, "accountUuid == null"

    .line 28
    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-object v0

    .line 33
    :pswitch_0
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    aput-object p0, v0, v1

    .line 40
    .line 41
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
