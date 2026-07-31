.class public final synthetic Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/settings/DownloadSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/settings/DownloadSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/settings/DownloadSettingsFragment;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadPathResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadPathResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
