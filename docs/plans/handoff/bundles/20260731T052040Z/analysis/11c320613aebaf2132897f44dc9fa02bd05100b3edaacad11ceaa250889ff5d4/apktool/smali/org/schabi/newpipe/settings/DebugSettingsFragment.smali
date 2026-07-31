.class public Lorg/schabi/newpipe/settings/DebugSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreatePreferences()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f130025

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f1304a0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f130096

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f1300c8

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const v4, 0x7f130494

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const v5, 0x7f1300cc

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v5}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    :try_start_0
    const-string v6, "org.schabi.newpipe.settings.DebugSettingsBVDLeakCanary"

    .line 47
    .line 48
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-nez v6, :cond_0

    .line 62
    .line 63
    invoke-static {v7}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v6, Ljava/lang/ClassCastException;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/lang/ClassCastException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    :goto_0
    invoke-virtual {v6}, Lj$/util/Optional;->isPresent()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lj$/util/Optional;->isPresent()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-virtual {v1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Lj$/util/Optional;->isPresent()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    iget-object v6, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    const v7, 0x7f13023d

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/16 v1, 0x16

    .line 140
    .line 141
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iput-object v0, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 145
    .line 146
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/16 v1, 0x17

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 151
    .line 152
    .line 153
    iput-object v0, v3, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 154
    .line 155
    new-instance v0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;I)V

    .line 159
    .line 160
    .line 161
    iput-object v0, v4, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 162
    .line 163
    new-instance v0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;I)V

    .line 167
    .line 168
    .line 169
    iput-object v0, v5, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 170
    .line 171
    return-void
.end method
