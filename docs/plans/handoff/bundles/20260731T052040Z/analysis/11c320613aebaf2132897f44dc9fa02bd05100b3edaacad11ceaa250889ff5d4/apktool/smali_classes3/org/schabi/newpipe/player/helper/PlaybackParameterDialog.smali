.class public Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

.field public static final SEMITONE_STRATEGY:Lokio/Path$Companion;


# instance fields
.field public binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

.field public callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

.field initialPitchPercent:D

.field initialSkipSilence:Z

.field initialTempo:D

.field pitchPercent:D

.field skipSilence:Z

.field tempo:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

    .line 7
    .line 8
    new-instance v0, Lokio/Path$Companion;

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->SEMITONE_STRATEGY:Lokio/Path$Companion;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 14
    .line 15
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 16
    .line 17
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 18
    .line 19
    return-void
.end method

.method public static newInstance(DDZLorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;)Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p5, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 7
    .line 8
    iput-wide p0, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 9
    .line 10
    iput-wide p2, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 11
    .line 12
    iput-boolean p4, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 13
    .line 14
    iput-wide p0, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 15
    .line 16
    iput-wide p2, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 17
    .line 18
    iput-boolean p4, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 19
    .line 20
    return-object v0
.end method

.method public static setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V
    .locals 0

    .line 1
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final changePitchControlMode(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPitchControlModeComponentMappings()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const v5, 0x7f040185

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x101030e

    .line 45
    .line 46
    .line 47
    invoke-static {v5, v6}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    aput-object v4, v2, v1

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    aput-object v5, v2, v4

    .line 57
    .line 58
    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 65
    .line 66
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentControl:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    move v3, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move v3, v1

    .line 75
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 79
    .line 80
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneControl:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    move v2, v1

    .line 85
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 91
    .line 92
    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    cmpg-double p1, v2, v4

    .line 98
    .line 99
    if-gez p1, :cond_3

    .line 100
    .line 101
    :goto_1
    move-wide v2, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 104
    .line 105
    cmpl-double p1, v2, v4

    .line 106
    .line 107
    if-lez p1, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const v0, 0x7f1303c9

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-static {v2, v3}, Lkotlin/text/UStringsKt;->percentToSemitones(D)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/16 v0, -0xc

    .line 137
    .line 138
    const/16 v1, 0xc

    .line 139
    .line 140
    invoke-static {p1, v0, v1}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    int-to-double v0, p1

    .line 145
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 146
    .line 147
    div-double/2addr v0, v2

    .line 148
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 149
    .line 150
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    :goto_3
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 155
    .line 156
    cmpl-double p1, v0, v2

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->onPitchPercentSliderUpdated(D)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_6
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 170
    .line 171
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_7

    .line 178
    .line 179
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 180
    .line 181
    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 182
    .line 183
    cmpl-double p1, v0, v2

    .line 184
    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 188
    .line 189
    .line 190
    move-result-wide v0

    .line 191
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 198
    .line 199
    .line 200
    :cond_7
    return-void
.end method

.method public final getPitchControlModeComponentMappings()Ljava/util/Map;
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 6
    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeSemitone:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 10
    .line 11
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 12
    .line 13
    invoke-direct {v3, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 17
    .line 18
    invoke-direct {v0, v2, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    new-array v1, p0, [Ljava/util/Map$Entry;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object v0, v1, v3

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    if-ge v2, p0, :cond_1

    .line 36
    .line 37
    aget-object v3, v1, v2

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string p0, "duplicate key: "

    .line 63
    .line 64
    invoke-static {v4, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return-object p0

    .line 73
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public final getStepSizeComponentMappings()Ljava/util/Map;
    .locals 10

    .line 1
    const-wide v0, 0x3f847ae140000000L    # 0.009999999776482582

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeOnePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 13
    .line 14
    const-wide v2, 0x3fa99999a0000000L    # 0.05000000074505806

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 24
    .line 25
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 26
    .line 27
    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-object v5, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 37
    .line 38
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeTenPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 39
    .line 40
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 41
    .line 42
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-object v7, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 47
    .line 48
    iget-object v7, v7, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeTwentyFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 49
    .line 50
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 51
    .line 52
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 57
    .line 58
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeOneHundredPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 59
    .line 60
    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    .line 61
    .line 62
    invoke-direct {v9, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 66
    .line 67
    invoke-direct {v0, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 71
    .line 72
    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 76
    .line 77
    invoke-direct {v2, v6, v7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 81
    .line 82
    invoke-direct {v3, v8, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x5

    .line 86
    new-array v4, p0, [Ljava/util/Map$Entry;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    aput-object v9, v4, v5

    .line 90
    .line 91
    const/4 v6, 0x1

    .line 92
    aput-object v0, v4, v6

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    aput-object v1, v4, v0

    .line 96
    .line 97
    const/4 v0, 0x3

    .line 98
    aput-object v2, v4, v0

    .line 99
    .line 100
    const/4 v0, 0x4

    .line 101
    aput-object v3, v4, v0

    .line 102
    .line 103
    new-instance v0, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    if-ge v5, p0, :cond_1

    .line 109
    .line 110
    aget-object v1, v4, v5

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const-string p0, "duplicate key: "

    .line 136
    .line 137
    invoke-static {v2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 p0, 0x0

    .line 145
    return-object p0

    .line 146
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v2, 0x7f0d0038

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f0a0058

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    const v2, 0x7f0a02db

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const v2, 0x7f0a02dc

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    move-object v9, v4

    .line 49
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 50
    .line 51
    if-eqz v9, :cond_0

    .line 52
    .line 53
    const v2, 0x7f0a02dd

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object v10, v4

    .line 61
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 62
    .line 63
    if-eqz v10, :cond_0

    .line 64
    .line 65
    const v2, 0x7f0a02de

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    move-object v11, v4

    .line 73
    check-cast v11, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    if-eqz v11, :cond_0

    .line 76
    .line 77
    const v2, 0x7f0a02df

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 85
    .line 86
    if-eqz v4, :cond_0

    .line 87
    .line 88
    const v2, 0x7f0a02e0

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    move-object v12, v4

    .line 96
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    const v2, 0x7f0a02e1

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    move-object v13, v4

    .line 108
    check-cast v13, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 109
    .line 110
    if-eqz v13, :cond_0

    .line 111
    .line 112
    const v2, 0x7f0a02e2

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    if-eqz v4, :cond_0

    .line 122
    .line 123
    const v2, 0x7f0a02e3

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    move-object v14, v4

    .line 131
    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 132
    .line 133
    if-eqz v14, :cond_0

    .line 134
    .line 135
    const v2, 0x7f0a02e4

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    move-object v15, v4

    .line 143
    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 144
    .line 145
    if-eqz v15, :cond_0

    .line 146
    .line 147
    const v2, 0x7f0a02e5

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    move-object/from16 v16, v4

    .line 155
    .line 156
    check-cast v16, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 157
    .line 158
    if-eqz v16, :cond_0

    .line 159
    .line 160
    const v2, 0x7f0a02e6

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    move-object/from16 v17, v4

    .line 168
    .line 169
    check-cast v17, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 170
    .line 171
    if-eqz v17, :cond_0

    .line 172
    .line 173
    const v2, 0x7f0a02e7

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    move-object/from16 v18, v4

    .line 181
    .line 182
    check-cast v18, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 183
    .line 184
    if-eqz v18, :cond_0

    .line 185
    .line 186
    const v2, 0x7f0a02e8

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    move-object/from16 v19, v4

    .line 194
    .line 195
    check-cast v19, Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    if-eqz v19, :cond_0

    .line 198
    .line 199
    const v2, 0x7f0a02e9

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    move-object/from16 v20, v4

    .line 207
    .line 208
    check-cast v20, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 209
    .line 210
    if-eqz v20, :cond_0

    .line 211
    .line 212
    const v2, 0x7f0a02ea

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 220
    .line 221
    if-eqz v4, :cond_0

    .line 222
    .line 223
    const v2, 0x7f0a02eb

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 231
    .line 232
    if-eqz v4, :cond_0

    .line 233
    .line 234
    const v2, 0x7f0a02ec

    .line 235
    .line 236
    .line 237
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 242
    .line 243
    if-eqz v4, :cond_0

    .line 244
    .line 245
    const v2, 0x7f0a02ed

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    move-object/from16 v21, v4

    .line 253
    .line 254
    check-cast v21, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 255
    .line 256
    if-eqz v21, :cond_0

    .line 257
    .line 258
    const v2, 0x7f0a02ee

    .line 259
    .line 260
    .line 261
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    move-object/from16 v22, v4

    .line 266
    .line 267
    check-cast v22, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 268
    .line 269
    if-eqz v22, :cond_0

    .line 270
    .line 271
    const v2, 0x7f0a02ef

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    move-object/from16 v23, v4

    .line 279
    .line 280
    check-cast v23, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 281
    .line 282
    if-eqz v23, :cond_0

    .line 283
    .line 284
    const v2, 0x7f0a02f0

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    move-object/from16 v24, v4

    .line 292
    .line 293
    check-cast v24, Landroid/widget/ImageView;

    .line 294
    .line 295
    if-eqz v24, :cond_0

    .line 296
    .line 297
    const v2, 0x7f0a0302

    .line 298
    .line 299
    .line 300
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 305
    .line 306
    if-eqz v4, :cond_0

    .line 307
    .line 308
    const v2, 0x7f0a0368

    .line 309
    .line 310
    .line 311
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v25

    .line 315
    if-eqz v25, :cond_0

    .line 316
    .line 317
    const v2, 0x7f0a0369

    .line 318
    .line 319
    .line 320
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v26

    .line 324
    if-eqz v26, :cond_0

    .line 325
    .line 326
    const v2, 0x7f0a036a

    .line 327
    .line 328
    .line 329
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v27

    .line 333
    if-eqz v27, :cond_0

    .line 334
    .line 335
    const v2, 0x7f0a0378

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    move-object/from16 v28, v4

    .line 343
    .line 344
    check-cast v28, Landroid/widget/CheckBox;

    .line 345
    .line 346
    if-eqz v28, :cond_0

    .line 347
    .line 348
    const v2, 0x7f0a039b

    .line 349
    .line 350
    .line 351
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    move-object/from16 v29, v4

    .line 356
    .line 357
    check-cast v29, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 358
    .line 359
    if-eqz v29, :cond_0

    .line 360
    .line 361
    const v2, 0x7f0a039c

    .line 362
    .line 363
    .line 364
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    move-object/from16 v30, v4

    .line 369
    .line 370
    check-cast v30, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 371
    .line 372
    if-eqz v30, :cond_0

    .line 373
    .line 374
    const v2, 0x7f0a039d

    .line 375
    .line 376
    .line 377
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    move-object/from16 v31, v4

    .line 382
    .line 383
    check-cast v31, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 384
    .line 385
    if-eqz v31, :cond_0

    .line 386
    .line 387
    const v2, 0x7f0a039e

    .line 388
    .line 389
    .line 390
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    check-cast v4, Landroid/widget/LinearLayout;

    .line 395
    .line 396
    if-eqz v4, :cond_0

    .line 397
    .line 398
    const v2, 0x7f0a039f

    .line 399
    .line 400
    .line 401
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    move-object/from16 v32, v4

    .line 406
    .line 407
    check-cast v32, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 408
    .line 409
    if-eqz v32, :cond_0

    .line 410
    .line 411
    const v2, 0x7f0a03a0

    .line 412
    .line 413
    .line 414
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    move-object/from16 v33, v4

    .line 419
    .line 420
    check-cast v33, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 421
    .line 422
    if-eqz v33, :cond_0

    .line 423
    .line 424
    const v2, 0x7f0a03d3

    .line 425
    .line 426
    .line 427
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 432
    .line 433
    if-eqz v4, :cond_0

    .line 434
    .line 435
    const v2, 0x7f0a03d4

    .line 436
    .line 437
    .line 438
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 443
    .line 444
    if-eqz v4, :cond_0

    .line 445
    .line 446
    const v2, 0x7f0a03d5

    .line 447
    .line 448
    .line 449
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    move-object/from16 v34, v4

    .line 454
    .line 455
    check-cast v34, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 456
    .line 457
    if-eqz v34, :cond_0

    .line 458
    .line 459
    const v2, 0x7f0a03d6

    .line 460
    .line 461
    .line 462
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    move-object/from16 v35, v4

    .line 467
    .line 468
    check-cast v35, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 469
    .line 470
    if-eqz v35, :cond_0

    .line 471
    .line 472
    const v2, 0x7f0a03d7

    .line 473
    .line 474
    .line 475
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    move-object/from16 v36, v4

    .line 480
    .line 481
    check-cast v36, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 482
    .line 483
    if-eqz v36, :cond_0

    .line 484
    .line 485
    const v2, 0x7f0a03d8

    .line 486
    .line 487
    .line 488
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    move-object/from16 v37, v4

    .line 493
    .line 494
    check-cast v37, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 495
    .line 496
    if-eqz v37, :cond_0

    .line 497
    .line 498
    const v2, 0x7f0a03d9

    .line 499
    .line 500
    .line 501
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    move-object/from16 v38, v4

    .line 506
    .line 507
    check-cast v38, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 508
    .line 509
    if-eqz v38, :cond_0

    .line 510
    .line 511
    const v2, 0x7f0a03da

    .line 512
    .line 513
    .line 514
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    move-object/from16 v39, v4

    .line 519
    .line 520
    check-cast v39, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 521
    .line 522
    if-eqz v39, :cond_0

    .line 523
    .line 524
    const v2, 0x7f0a0417

    .line 525
    .line 526
    .line 527
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    move-object/from16 v40, v4

    .line 532
    .line 533
    check-cast v40, Landroid/widget/CheckBox;

    .line 534
    .line 535
    if-eqz v40, :cond_0

    .line 536
    .line 537
    new-instance v7, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 538
    .line 539
    move-object v8, v0

    .line 540
    check-cast v8, Landroid/widget/ScrollView;

    .line 541
    .line 542
    invoke-direct/range {v7 .. v40}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;-><init>(Landroid/widget/ScrollView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/CheckBox;)V

    .line 543
    .line 544
    .line 545
    move-object/from16 v4, v36

    .line 546
    .line 547
    iput-object v7, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 548
    .line 549
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 550
    .line 551
    invoke-direct {v0, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 552
    .line 553
    .line 554
    const-wide v7, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    invoke-static {v4, v0, v7, v8}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 563
    .line 564
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 565
    .line 566
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 567
    .line 568
    invoke-direct {v2, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 569
    .line 570
    .line 571
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 572
    .line 573
    invoke-static {v0, v2, v9, v10}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 574
    .line 575
    .line 576
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 577
    .line 578
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 579
    .line 580
    sget-object v11, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

    .line 581
    .line 582
    invoke-virtual {v11, v9, v10}, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->progressOf(D)I

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 587
    .line 588
    .line 589
    iget-wide v2, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 590
    .line 591
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 592
    .line 593
    .line 594
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 595
    .line 596
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 597
    .line 598
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 599
    .line 600
    const/4 v12, 0x1

    .line 601
    invoke-direct {v2, v1, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 602
    .line 603
    .line 604
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;

    .line 605
    .line 606
    invoke-direct {v3, v1, v2, v11}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Lorg/schabi/newpipe/util/SliderStrategy;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 610
    .line 611
    .line 612
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 613
    .line 614
    iget-object v13, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 615
    .line 616
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    .line 617
    .line 618
    invoke-direct {v3, v1, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 619
    .line 620
    .line 621
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 622
    .line 623
    invoke-direct {v2, v1, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 624
    .line 625
    .line 626
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;

    .line 627
    .line 628
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 629
    .line 630
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    .line 635
    .line 636
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 637
    .line 638
    iget-object v13, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 639
    .line 640
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    .line 641
    .line 642
    const/4 v14, 0x2

    .line 643
    invoke-direct {v3, v1, v14}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 644
    .line 645
    .line 646
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 647
    .line 648
    invoke-direct {v2, v1, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 649
    .line 650
    .line 651
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;

    .line 652
    .line 653
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 654
    .line 655
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    .line 660
    .line 661
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 662
    .line 663
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchToogleControlModes:Landroid/widget/ImageView;

    .line 664
    .line 665
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;

    .line 666
    .line 667
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPitchControlModeComponentMappings()Ljava/util/Map;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;

    .line 678
    .line 679
    invoke-direct {v2, v1, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 680
    .line 681
    .line 682
    invoke-static {v0, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 686
    .line 687
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 688
    .line 689
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 690
    .line 691
    invoke-direct {v2, v14}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 692
    .line 693
    .line 694
    invoke-static {v0, v2, v7, v8}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 695
    .line 696
    .line 697
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 698
    .line 699
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 700
    .line 701
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 702
    .line 703
    invoke-direct {v2, v14}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 704
    .line 705
    .line 706
    invoke-static {v0, v2, v9, v10}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 707
    .line 708
    .line 709
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 710
    .line 711
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 712
    .line 713
    invoke-virtual {v11, v9, v10}, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->progressOf(D)I

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 718
    .line 719
    .line 720
    iget-wide v2, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 721
    .line 722
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 723
    .line 724
    .line 725
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 726
    .line 727
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 728
    .line 729
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 730
    .line 731
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 732
    .line 733
    .line 734
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;

    .line 735
    .line 736
    invoke-direct {v3, v1, v2, v11}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Lorg/schabi/newpipe/util/SliderStrategy;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 740
    .line 741
    .line 742
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 743
    .line 744
    iget-object v7, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 745
    .line 746
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    .line 747
    .line 748
    invoke-direct {v3, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 749
    .line 750
    .line 751
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 752
    .line 753
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 754
    .line 755
    .line 756
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;

    .line 757
    .line 758
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 759
    .line 760
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    .line 765
    .line 766
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 767
    .line 768
    iget-object v7, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 769
    .line 770
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    .line 771
    .line 772
    const/4 v8, 0x3

    .line 773
    invoke-direct {v3, v1, v8}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 774
    .line 775
    .line 776
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 777
    .line 778
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 779
    .line 780
    .line 781
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;

    .line 782
    .line 783
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 784
    .line 785
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    .line 790
    .line 791
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 792
    .line 793
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 794
    .line 795
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 796
    .line 797
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 798
    .line 799
    .line 800
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;

    .line 801
    .line 802
    sget-object v4, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->SEMITONE_STRATEGY:Lokio/Path$Companion;

    .line 803
    .line 804
    invoke-direct {v3, v1, v2, v4}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Lorg/schabi/newpipe/util/SliderStrategy;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 808
    .line 809
    .line 810
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 811
    .line 812
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 813
    .line 814
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 815
    .line 816
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 817
    .line 818
    .line 819
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;

    .line 820
    .line 821
    const/4 v4, -0x1

    .line 822
    invoke-direct {v3, v1, v2, v4}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    .line 827
    .line 828
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 829
    .line 830
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 831
    .line 832
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    .line 833
    .line 834
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 835
    .line 836
    .line 837
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;

    .line 838
    .line 839
    invoke-direct {v3, v1, v2, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;I)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepSizeComponentMappings()Ljava/util/Map;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;

    .line 850
    .line 851
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 852
    .line 853
    .line 854
    invoke-static {v0, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    const v2, 0x7f130021

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    const/high16 v3, 0x3e800000    # 0.25f

    .line 873
    .line 874
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    float-to-double v2, v0

    .line 879
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setStepSizeToUI(D)V

    .line 880
    .line 881
    .line 882
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 883
    .line 884
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    .line 885
    .line 886
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 887
    .line 888
    invoke-direct {v2, v1, v8}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    const v4, 0x7f1303d2

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    invoke-interface {v3, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 911
    .line 912
    .line 913
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 918
    .line 919
    .line 920
    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;

    .line 921
    .line 922
    invoke-direct {v3, v1, v2, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 926
    .line 927
    .line 928
    iget-boolean v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 929
    .line 930
    iput-boolean v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 931
    .line 932
    iget-object v2, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 933
    .line 934
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    .line 935
    .line 936
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 937
    .line 938
    .line 939
    iget-object v0, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 940
    .line 941
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    .line 942
    .line 943
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda11;

    .line 944
    .line 945
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    const v2, 0x7f1303c9

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->changePitchControlMode(Z)V

    .line 971
    .line 972
    .line 973
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 974
    .line 975
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 980
    .line 981
    .line 982
    iget-object v2, v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 983
    .line 984
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->rootView:Landroid/widget/ScrollView;

    .line 985
    .line 986
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 991
    .line 992
    iput-boolean v12, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 993
    .line 994
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;

    .line 995
    .line 996
    invoke-direct {v2, v1, v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 997
    .line 998
    .line 999
    const v3, 0x7f130076

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;

    .line 1007
    .line 1008
    invoke-direct {v2, v1, v12}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 1009
    .line 1010
    .line 1011
    const v3, 0x7f1303cc

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1015
    .line 1016
    .line 1017
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;

    .line 1018
    .line 1019
    invoke-direct {v2, v1, v14}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 1020
    .line 1021
    .line 1022
    const v1, 0x7f130397

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    return-object v0

    .line 1034
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    const-string v1, "Missing required view with ID: "

    .line 1043
    .line 1044
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    return-object v3
.end method

.method public final onPitchPercentSliderUpdated(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setAndUpdatePitch(D)V
    .locals 4

    .line 1
    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpg-double v2, p1, v0

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    :goto_0
    move-wide p1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 13
    .line 14
    cmpl-double v2, p1, v0

    .line 15
    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f1303c9

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0xc

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-static {p1, p2}, Lkotlin/text/UStringsKt;->percentToSemitones(D)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/16 p2, -0xc

    .line 49
    .line 50
    invoke-static {p1, p2, v1}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    int-to-double p1, p1

    .line 55
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 56
    .line 57
    div-double/2addr p1, v2

    .line 58
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 59
    .line 60
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    :goto_2
    iput-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 65
    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 67
    .line 68
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 69
    .line 70
    sget-object v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

    .line 71
    .line 72
    invoke-virtual {v2, p1, p2}, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->progressOf(D)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 80
    .line 81
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 82
    .line 83
    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 84
    .line 85
    sget-object p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->SEMITONE_STRATEGY:Lokio/Path$Companion;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v3}, Lkotlin/text/UStringsKt;->percentToSemitones(D)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    add-int/2addr p2, v1

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 99
    .line 100
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 101
    .line 102
    new-instance p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    invoke-direct {p2, v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 109
    .line 110
    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 114
    .line 115
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 116
    .line 117
    new-instance p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 118
    .line 119
    const/4 v0, 0x3

    .line 120
    invoke-direct {p2, v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 121
    .line 122
    .line 123
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 124
    .line 125
    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final setAndUpdateTempo(D)V
    .locals 3

    .line 1
    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpg-double v2, p1, v0

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    :goto_0
    move-wide p1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 13
    .line 14
    cmpl-double v2, p1, v0

    .line 15
    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    iput-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 24
    .line 25
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->progressOf(D)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 35
    .line 36
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    .line 38
    new-instance p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p2, v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 45
    .line 46
    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setStepSizeToUI(D)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepSizeComponentMappings()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f040185

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const v4, 0x101030e

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x2

    .line 51
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    aput-object v2, v4, v5

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    aput-object v3, v4, v2

    .line 58
    .line 59
    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "+"

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatPitch(D)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 91
    .line 92
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v3, "-"

    .line 97
    .line 98
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatPitch(D)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 116
    .line 117
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatPitch(D)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 139
    .line 140
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatPitch(D)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final updateCallback()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    iget-wide v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 9
    .line 10
    double-to-float v1, v1

    .line 11
    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 12
    .line 13
    double-to-float v2, v2

    .line 14
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 15
    .line 16
    invoke-interface {v0, v1, v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;->onPlaybackParameterChanged(FFZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
