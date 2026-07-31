.class public final synthetic Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field public final synthetic f$1:Lus/shandian/giga/get/DownloadMission;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;->f$1:Lus/shandian/giga/get/DownloadMission;

    .line 7
    .line 8
    iput p3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;->f$2:I

    .line 2
    .line 3
    sget-object p2, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    .line 4
    .line 5
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 6
    .line 7
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;->f$1:Lus/shandian/giga/get/DownloadMission;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p2, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
