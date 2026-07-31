.class public final synthetic Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/settings/DebugSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/settings/DebugSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "Dummy"

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/settings/DebugSettingsFragment;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/16 v7, 0x18

    .line 26
    .line 27
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    .line 28
    .line 29
    const-string v5, "Dummy"

    .line 30
    .line 31
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :pswitch_0
    sget p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->$r8$clinit:I

    .line 39
    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v1, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
