.class public final synthetic Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lus/shandian/giga/postprocessing/Postprocessing;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/postprocessing/Postprocessing;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->f$0:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public report(J)V
    .locals 4

    .line 1
    iget v0, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->f$0:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 9
    .line 10
    iput-wide p1, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 14
    .line 15
    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget-wide v2, v1, v2

    .line 19
    .line 20
    sub-long/2addr p1, v2

    .line 21
    iget-wide v0, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 22
    .line 23
    cmp-long v0, p1, v0

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 28
    .line 29
    iput-wide p1, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
