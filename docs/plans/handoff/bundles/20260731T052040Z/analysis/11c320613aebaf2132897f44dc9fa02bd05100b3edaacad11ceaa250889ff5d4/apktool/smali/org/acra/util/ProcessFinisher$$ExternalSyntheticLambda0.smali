.class public final synthetic Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

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
    .locals 11

    .line 1
    iget v0, p0, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_9

    .line 13
    .line 14
    sget-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    .line 15
    .line 16
    sget-object v1, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v3, 0x1c

    .line 21
    .line 22
    if-lt v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    const/16 v3, 0x1b

    .line 30
    .line 31
    const/16 v4, 0x1a

    .line 32
    .line 33
    if-eq v2, v4, :cond_1

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    :cond_1
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    sget-object v5, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    sget-object v5, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_3
    :try_start_0
    sget-object v5, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    .line 52
    .line 53
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_4
    sget-object v6, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    .line 62
    .line 63
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-nez v6, :cond_5

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    new-instance v8, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 75
    .line 76
    invoke-direct {v8, p0}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v8}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 80
    .line 81
    .line 82
    new-instance v9, Landroidx/core/app/ActivityRecreator$1;

    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    invoke-direct {v9, v8, v5, v10}, Landroidx/core/app/ActivityRecreator$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .line 90
    .line 91
    const/4 v9, 0x1

    .line 92
    if-eq v2, v4, :cond_7

    .line 93
    .line 94
    if-ne v2, v3, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    move v2, v10

    .line 98
    goto :goto_1

    .line 99
    :cond_7
    :goto_0
    move v2, v9

    .line 100
    :goto_1
    if-eqz v2, :cond_8

    .line 101
    .line 102
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/16 v3, 0x9

    .line 107
    .line 108
    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v5, v3, v10

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    aput-object v4, v3, v9

    .line 114
    .line 115
    const/4 v5, 0x2

    .line 116
    aput-object v4, v3, v5

    .line 117
    .line 118
    const/4 v5, 0x3

    .line 119
    aput-object v2, v3, v5

    .line 120
    .line 121
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    .line 123
    const/4 v5, 0x4

    .line 124
    aput-object v2, v3, v5

    .line 125
    .line 126
    const/4 v5, 0x5

    .line 127
    aput-object v4, v3, v5

    .line 128
    .line 129
    const/4 v5, 0x6

    .line 130
    aput-object v4, v3, v5

    .line 131
    .line 132
    const/4 v4, 0x7

    .line 133
    aput-object v2, v3, v4

    .line 134
    .line 135
    const/16 v4, 0x8

    .line 136
    .line 137
    aput-object v2, v3, v4

    .line 138
    .line 139
    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catchall_0
    move-exception v1

    .line 144
    goto :goto_3

    .line 145
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    :goto_2
    :try_start_2
    new-instance v1, Landroidx/core/app/ActivityRecreator$1;

    .line 149
    .line 150
    invoke-direct {v1, v9, v7, v8, v10}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :goto_3
    new-instance v2, Landroidx/core/app/ActivityRecreator$1;

    .line 158
    .line 159
    invoke-direct {v2, v9, v7, v8, v10}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    .line 164
    .line 165
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :catchall_1
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_5
    return-void

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 171
    .line 172
    .line 173
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 174
    .line 175
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
