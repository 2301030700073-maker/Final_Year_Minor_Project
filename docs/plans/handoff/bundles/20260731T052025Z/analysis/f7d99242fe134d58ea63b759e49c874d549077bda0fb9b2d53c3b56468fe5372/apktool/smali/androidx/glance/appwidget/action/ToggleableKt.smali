.class public abstract Landroidx/glance/appwidget/action/ToggleableKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/action/ActionParameters$Key;

    .line 2
    .line 3
    const-string v1, "android.widget.extra.CHECKED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/glance/action/ActionParameters$Key;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/appwidget/action/ToggleableKt;->ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;

    .line 9
    .line 10
    return-void
.end method

.method public static final launchTrampolineAction(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const-string v0, "ACTION_INTENT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    check-cast v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "android.widget.extra.CHECKED"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v1, "ACTION_TYPE"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_d

    .line 34
    .line 35
    const-string v2, "ACTIVITY_OPTIONS"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v5, 0x1f

    .line 48
    .line 49
    if-lt v4, v5, :cond_1

    .line 50
    .line 51
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 52
    .line 53
    invoke-direct {v4, v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    .line 54
    .line 55
    .line 56
    sget-object v5, Landroidx/glance/appwidget/action/StrictModeVmPolicyApi31Impl;->INSTANCE:Landroidx/glance/appwidget/action/StrictModeVmPolicyApi31Impl;

    .line 57
    .line 58
    invoke-virtual {v5, v4}, Landroidx/glance/appwidget/action/StrictModeVmPolicyApi31Impl;->permitUnsafeIntentLaunch(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 68
    .line 69
    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_0
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x4

    .line 80
    const/4 v5, 0x3

    .line 81
    const/4 v6, 0x2

    .line 82
    const/4 v7, 0x1

    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    const-string v8, "ACTIVITY"

    .line 86
    .line 87
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_2

    .line 92
    .line 93
    move v3, v7

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-string v8, "BROADCAST"

    .line 96
    .line 97
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_3

    .line 102
    .line 103
    move v3, v6

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const-string v8, "SERVICE"

    .line 106
    .line 107
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_4

    .line 112
    .line 113
    move v3, v5

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const-string v8, "FOREGROUND_SERVICE"

    .line 116
    .line 117
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_5

    .line 122
    .line 123
    move v3, v4

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const-string v8, "CALLBACK"

    .line 126
    .line 127
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_6

    .line 132
    .line 133
    const/4 v3, 0x5

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    const-string v8, "No enum constant androidx.glance.appwidget.action.ActionTrampolineType."

    .line 136
    .line 137
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    const-string v1, "Name is null"

    .line 146
    .line 147
    invoke-static {v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-static {v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_c

    .line 155
    .line 156
    if-eq v1, v7, :cond_b

    .line 157
    .line 158
    if-eq v1, v6, :cond_a

    .line 159
    .line 160
    if-eq v1, v5, :cond_8

    .line 161
    .line 162
    if-eq v1, v4, :cond_b

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 166
    .line 167
    const/16 v1, 0x1a

    .line 168
    .line 169
    if-lt p1, v1, :cond_9

    .line 170
    .line 171
    sget-object p1, Landroidx/glance/appwidget/action/ListAdapterTrampolineApi26Impl;->INSTANCE:Landroidx/glance/appwidget/action/ListAdapterTrampolineApi26Impl;

    .line 172
    .line 173
    invoke-virtual {p1, p0, v0}, Landroidx/glance/appwidget/action/ListAdapterTrampolineApi26Impl;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_9
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_a
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_c
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    :goto_2
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_d
    const-string p0, "List adapter activity trampoline invoked without trampoline type"

    .line 200
    .line 201
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_e
    const-string p0, "List adapter activity trampoline invoked without specifying target intent."

    .line 206
    .line 207
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method
