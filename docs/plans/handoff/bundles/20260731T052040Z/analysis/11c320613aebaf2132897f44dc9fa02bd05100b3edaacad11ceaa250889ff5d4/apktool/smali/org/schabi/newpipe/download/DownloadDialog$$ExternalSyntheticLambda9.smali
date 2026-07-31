.class public final synthetic Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/download/DownloadDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

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
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$clinit:I

    .line 11
    .line 12
    const v0, 0x7f13011c

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "video"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickFolderResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    sget v0, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$clinit:I

    .line 27
    .line 28
    const v0, 0x7f130116

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "audio"

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickFolderResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(Lorg/schabi/newpipe/download/DownloadDialog;Landroidx/activity/result/ActivityResult;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
