.class public final Lorg/schabi/newpipe/views/player/SecondsView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/views/player/SecondsView$Companion;


# instance fields
.field public final animationsEnabled:Z

.field public final binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

.field public cycleDuration:J

.field public final fifthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

.field public final firstAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

.field public final fourthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

.field public final secondAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

.field public seconds:I

.field public final thirdAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/views/player/SecondsView;->Companion:Lorg/schabi/newpipe/views/player/SecondsView$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x2ee

    .line 8
    .line 9
    iput-wide v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->cycleDuration:J

    .line 10
    .line 11
    sget-boolean p2, Lorg/schabi/newpipe/util/DeviceUtils;->SAMSUNG:Z

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "animator_duration_scale"

    .line 18
    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 v0, 0x0

    .line 26
    cmpl-float p2, p2, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    move p2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p2, v0

    .line 35
    :goto_0
    iput-boolean p2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->animationsEnabled:Z

    .line 36
    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const p2, 0x7f0d00db

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    const p1, 0x7f0a01cb

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    move-object v4, p2

    .line 55
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    const p1, 0x7f0a01cc

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    move-object v5, p2

    .line 67
    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    const p1, 0x7f0a01cd

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    move-object v6, p2

    .line 79
    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    const p1, 0x7f0a0414

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    move-object v7, p2

    .line 91
    check-cast v7, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    const p1, 0x7f0a0415

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    move-object v8, p2

    .line 103
    check-cast v8, Landroid/widget/TextView;

    .line 104
    .line 105
    if-eqz v8, :cond_1

    .line 106
    .line 107
    new-instance v2, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 108
    .line 109
    move-object v3, p0

    .line 110
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 111
    .line 112
    .line 113
    iput-object v2, v3, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    .line 117
    .line 118
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    const/4 p1, -0x1

    .line 121
    const/4 p2, -0x2

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    new-instance p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 129
    .line 130
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    invoke-direct {p1, v3, v0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;

    .line 136
    .line 137
    const/4 v2, 0x3

    .line 138
    invoke-direct {p2, v3, v2}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 139
    .line 140
    .line 141
    new-instance v4, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    const/16 v5, 0x8

    .line 144
    .line 145
    invoke-direct {v4, v3, v5}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v3, p1, p2, v4}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 149
    .line 150
    .line 151
    iput-object p0, v3, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 152
    .line 153
    new-instance p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 154
    .line 155
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/16 p2, 0x9

    .line 158
    .line 159
    invoke-direct {p1, v3, p2}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 160
    .line 161
    .line 162
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;

    .line 163
    .line 164
    const/4 v4, 0x4

    .line 165
    invoke-direct {p2, v3, v4}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 166
    .line 167
    .line 168
    new-instance v5, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-direct {v5, v3, v1}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v3, p1, p2, v5}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 174
    .line 175
    .line 176
    iput-object p0, v3, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 177
    .line 178
    new-instance p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 179
    .line 180
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    const/4 p2, 0x2

    .line 183
    invoke-direct {p1, v3, p2}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 184
    .line 185
    .line 186
    new-instance v5, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;

    .line 187
    .line 188
    invoke-direct {v5, v3, v1}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    invoke-direct {v1, v3, v2}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v3, p1, v5, v1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 197
    .line 198
    .line 199
    iput-object p0, v3, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 200
    .line 201
    new-instance p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 202
    .line 203
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    invoke-direct {p1, v3, v4}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;

    .line 209
    .line 210
    invoke-direct {v1, v3, v0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    const/4 v2, 0x5

    .line 216
    invoke-direct {v0, v3, v2}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p0, v3, p1, v1, v0}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 220
    .line 221
    .line 222
    iput-object p0, v3, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 223
    .line 224
    new-instance p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 225
    .line 226
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    const/4 v0, 0x6

    .line 229
    invoke-direct {p1, v3, v0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;

    .line 233
    .line 234
    invoke-direct {v0, v3, p2}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 235
    .line 236
    .line 237
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    const/4 v1, 0x7

    .line 240
    invoke-direct {p2, v3, v1}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, v3, p1, v0, p2}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 244
    .line 245
    .line 246
    iput-object p0, v3, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 247
    .line 248
    return-void

    .line 249
    :cond_1
    move-object v3, p0

    .line 250
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    const-string p1, "Missing required view with ID: "

    .line 259
    .line 260
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/4 p0, 0x0

    .line 268
    throw p0
.end method


# virtual methods
.method public final getBinding()Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCycleDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->cycleDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSeconds()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->seconds:I

    .line 2
    .line 3
    return p0
.end method

.method public final setCycleDuration(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x5

    .line 2
    .line 3
    div-long v0, p1, v0

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    iput-wide p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->cycleDuration:J

    .line 31
    .line 32
    return-void
.end method

.method public final setForwarding(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->triangleContainer:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setSeconds(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->tvSeconds:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v2, v3, v4

    .line 22
    .line 23
    const v2, 0x7f11000f

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iput p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->seconds:I

    .line 34
    .line 35
    return-void
.end method

.method public final stopAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
