.class public final synthetic Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

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
    .locals 8

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->mutableChangeLogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 10
    .line 11
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, v3, v1}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lkotlinx/coroutines/flow/SubscribedSharedFlow;

    .line 18
    .line 19
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/flow/SubscribedSharedFlow;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Lokio/PriorityQueue;

    .line 34
    .line 35
    const v5, 0x7f110001

    .line 36
    .line 37
    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    invoke-direct {v4, v5, v6, v3}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lokio/PriorityQueue;

    .line 44
    .line 45
    const/high16 v7, 0x7f110000

    .line 46
    .line 47
    invoke-direct {v5, v7, v6, v3}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    .line 51
    .line 52
    const/16 v6, 0x17

    .line 53
    .line 54
    invoke-direct {v3, v6, v4, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lde/cketti/changelog/ChangeLog;

    .line 58
    .line 59
    invoke-direct {v4, v0, v2, v3}, Lde/cketti/changelog/ChangeLog;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/zxing/BinaryBitmap;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "ckChangeLog_first_version_code"

    .line 63
    .line 64
    const/4 v5, -0x1

    .line 65
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iput v6, v4, Lde/cketti/changelog/ChangeLog;->firstVersionCode:I

    .line 70
    .line 71
    const-string v6, "ckChangeLog_last_version_code"

    .line 72
    .line 73
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    iput v7, v4, Lde/cketti/changelog/ChangeLog;->lastVersionCode:I

    .line 78
    .line 79
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 92
    .line 93
    iput v0, v4, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iput v5, v4, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I

    .line 98
    .line 99
    const-string v1, "ckChangeLog"

    .line 100
    .line 101
    const-string v7, "Could not get version information from manifest!"

    .line 102
    .line 103
    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :goto_0
    iget v0, v4, Lde/cketti/changelog/ChangeLog;->firstVersionCode:I

    .line 107
    .line 108
    if-ne v0, v5, :cond_1

    .line 109
    .line 110
    iget v0, v4, Lde/cketti/changelog/ChangeLog;->lastVersionCode:I

    .line 111
    .line 112
    if-eq v0, v5, :cond_0

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_0
    iget v0, v4, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I

    .line 116
    .line 117
    :goto_1
    iput v0, v4, Lde/cketti/changelog/ChangeLog;->firstVersionCode:I

    .line 118
    .line 119
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget v1, v4, Lde/cketti/changelog/ChangeLog;->firstVersionCode:I

    .line 124
    .line 125
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    iget v1, v4, Lde/cketti/changelog/ChangeLog;->firstVersionCode:I

    .line 129
    .line 130
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    .line 135
    .line 136
    :cond_1
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->mutableChangeLogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 137
    .line 138
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    return-object v4

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
