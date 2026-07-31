.class public final synthetic Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/get/DownloadMission;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/get/DownloadMission;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const-string v0, "Post-processing failed. "

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x3ef

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x2

    .line 32
    :try_start_0
    iget-object v7, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 33
    .line 34
    invoke-virtual {v7, p0}, Lus/shandian/giga/postprocessing/Postprocessing;->run(Lus/shandian/giga/get/DownloadMission;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 38
    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    move v5, v6

    .line 42
    :cond_0
    invoke-virtual {p0, v5}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_3

    .line 48
    :catch_0
    move-exception v7

    .line 49
    :try_start_1
    const-string v8, "DownloadMission"

    .line 50
    .line 51
    iget-object v9, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 52
    .line 53
    invoke-virtual {v9}, Lus/shandian/giga/postprocessing/Postprocessing;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v8, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    instance-of v0, v7, Ljava/io/InterruptedIOException;

    .line 65
    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    instance-of v0, v7, Ljava/nio/channels/ClosedByInterruptException;

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 80
    .line 81
    if-ne v0, v1, :cond_2

    .line 82
    .line 83
    iput v4, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    :cond_2
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 86
    .line 87
    if-ne v0, v1, :cond_3

    .line 88
    .line 89
    move v5, v6

    .line 90
    :cond_3
    invoke-virtual {p0, v5}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 91
    .line 92
    .line 93
    move-object v2, v7

    .line 94
    :goto_0
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 95
    .line 96
    if-eq v0, v1, :cond_5

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 101
    .line 102
    :cond_4
    invoke-virtual {p0, v4, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    :goto_1
    const/16 v0, 0x3f0

    .line 111
    .line 112
    :try_start_2
    invoke-virtual {p0, v0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 116
    .line 117
    if-ne v0, v1, :cond_7

    .line 118
    .line 119
    move v5, v6

    .line 120
    :cond_7
    invoke-virtual {p0, v5}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void

    .line 124
    :goto_3
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 125
    .line 126
    if-ne v2, v1, :cond_8

    .line 127
    .line 128
    move v5, v6

    .line 129
    :cond_8
    invoke-virtual {p0, v5}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
