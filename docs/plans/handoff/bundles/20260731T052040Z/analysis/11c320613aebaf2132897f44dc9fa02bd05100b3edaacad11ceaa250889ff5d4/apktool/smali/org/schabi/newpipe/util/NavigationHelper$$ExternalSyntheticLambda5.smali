.class public final synthetic Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    sget p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 11
    .line 12
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    sget p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    sget p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_3
    sget p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$clinit:I

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_4
    sget p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$clinit:I

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_5
    sget p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 38
    .line 39
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_6
    const-string p0, "NavigationHelper"

    .line 44
    .line 45
    const-string p1, "You unlocked a secret unicorn."

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
