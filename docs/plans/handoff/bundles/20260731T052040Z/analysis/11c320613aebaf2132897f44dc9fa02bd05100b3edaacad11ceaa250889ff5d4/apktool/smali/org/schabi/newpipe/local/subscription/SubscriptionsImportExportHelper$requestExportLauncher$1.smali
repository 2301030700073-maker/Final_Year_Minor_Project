.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Landroidx/activity/result/ActivityResultCallback;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->getFunctionDelegate()Lkotlin/Function;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 20
    .line 21
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_0
    return v1

    .line 30
    :pswitch_0
    instance-of v0, p1, Landroidx/activity/result/ActivityResultCallback;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->getFunctionDelegate()Lkotlin/Function;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 43
    .line 44
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_1
    return v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 7
    .line 8
    const-string v7, "requestImportResult(Landroidx/activity/result/ActivityResult;)V"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const-class v4, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 13
    .line 14
    iget-object v5, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 15
    .line 16
    const-string v6, "requestImportResult"

    .line 17
    .line 18
    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    new-instance v2, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 23
    .line 24
    const-string v8, "requestExportResult(Landroidx/activity/result/ActivityResult;)V"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    const-class v5, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 29
    .line 30
    iget-object v6, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 31
    .line 32
    const-string v7, "requestExportResult"

    .line 33
    .line 34
    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->getFunctionDelegate()Lkotlin/Function;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->getFunctionDelegate()Lkotlin/Function;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 26
    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    new-instance p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;

    .line 32
    .line 33
    invoke-direct {p1, v2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;->show(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 56
    .line 57
    if-ne p1, v1, :cond_3

    .line 58
    .line 59
    sget-object p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$Companion;

    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lkotlin/Pair;

    .line 74
    .line 75
    const-string v1, "exportPath"

    .line 76
    .line 77
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    new-array v1, p1, [Lkotlin/Pair;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    aput-object v0, v1, v2

    .line 85
    .line 86
    new-instance v0, Landroidx/work/Data$Builder;

    .line 87
    .line 88
    invoke-direct {v0, v2}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 89
    .line 90
    .line 91
    aget-object v1, v1, v2

    .line 92
    .line 93
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1, v3}, Landroidx/work/Data$Builder;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 111
    .line 112
    const-class v3, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

    .line 113
    .line 114
    invoke-direct {v1, v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(ILjava/lang/Class;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v1, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 118
    .line 119
    iput-object v0, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 120
    .line 121
    iput-boolean p1, v2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 122
    .line 123
    sget-object p1, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 124
    .line 125
    iput-object p1, v2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 132
    .line 133
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {p1}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    new-instance v0, Landroidx/work/impl/WorkContinuationImpl;

    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    const-string v2, "exportSubscriptions"

    .line 145
    .line 146
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 147
    .line 148
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/SystemClock;

    .line 152
    .line 153
    .line 154
    :cond_3
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
