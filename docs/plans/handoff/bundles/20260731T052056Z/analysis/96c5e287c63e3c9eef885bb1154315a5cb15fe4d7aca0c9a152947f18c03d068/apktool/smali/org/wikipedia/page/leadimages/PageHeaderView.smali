.class public final Lorg/wikipedia/page/leadimages/PageHeaderView;
.super Lorg/wikipedia/views/LinearLayoutOverWebView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R.\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u001b\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001f\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lorg/wikipedia/page/leadimages/PageHeaderView;",
        "Lorg/wikipedia/views/LinearLayoutOverWebView;",
        "Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "value",
        "callToActionText",
        "Ljava/lang/String;",
        "getCallToActionText",
        "()Ljava/lang/String;",
        "setCallToActionText",
        "(Ljava/lang/String;)V",
        "Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;",
        "callback",
        "Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;)V",
        "",
        "getDonationReminderCardViewHeight",
        "()I",
        "donationReminderCardViewHeight",
        "Lorg/wikipedia/views/FaceAndColorDetectImageView;",
        "getImageView",
        "()Lorg/wikipedia/views/FaceAndColorDetectImageView;",
        "imageView",
        "Callback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public callToActionText:Ljava/lang/String;

.field public callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

.field public messageCardViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$JsKPNH6QBiO8bic3lWZDsoafAvo(Lorg/wikipedia/page/leadimages/PageHeaderView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setDonationReminderCard$lambda$0$0(Lorg/wikipedia/page/leadimages/PageHeaderView;)V

    .line 2
    .line 3
    .line 4
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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f0c05e2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0900c2

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    const p2, 0x7f0900c3

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v4, v1

    .line 38
    check-cast v4, Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    const p2, 0x7f0901d5

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v5, v1

    .line 50
    check-cast v5, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    const p2, 0x7f090296

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v6, v1

    .line 62
    check-cast v6, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    const p2, 0x7f09073d

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v7, v1

    .line 74
    check-cast v7, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 75
    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    const p2, 0x7f09073e

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v8, :cond_4

    .line 86
    .line 87
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 88
    .line 89
    move-object v2, p0

    .line 90
    invoke-direct/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, v2, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 94
    .line 95
    new-instance p0, Landroid/util/TypedValue;

    .line 96
    .line 97
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const p2, 0x7f0404da

    .line 105
    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1, p2, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move-object p0, v0

    .line 116
    :goto_0
    if-eqz p0, :cond_3

    .line 117
    .line 118
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 119
    .line 120
    const/16 p1, 0x50

    .line 121
    .line 122
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->getPowerGradient(II)Landroid/graphics/drawable/PaintDrawable;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v8, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    new-instance p0, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    invoke-direct {p0, v2, v1}, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    sget p0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 147
    .line 148
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_1

    .line 153
    .line 154
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iget-boolean p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 159
    .line 160
    if-eqz p0, :cond_2

    .line 161
    .line 162
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    iget-boolean p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 167
    .line 168
    if-eqz p0, :cond_2

    .line 169
    .line 170
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isInEligibleCountry()Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_2

    .line 175
    .line 176
    :cond_1
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 177
    .line 178
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->updateDonationReminderCardContent(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    const/4 p0, 0x4

    .line 189
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    new-instance p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 193
    .line 194
    const/16 p1, 0xb

    .line 195
    .line 196
    invoke-direct {p0, p1, v2}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 200
    .line 201
    .line 202
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_3
    const-string p0, "Attribute not found; ID=2130969818"

    .line 207
    .line 208
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_4
    move-object v2, p0

    .line 213
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-string p1, "Missing required view with ID: "

    .line 222
    .line 223
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0
.end method

.method private static final setDonationReminderCard$lambda$0$0(Lorg/wikipedia/page/leadimages/PageHeaderView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 27
    .line 28
    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/high16 v2, 0x42800000    # 64.0f

    .line 40
    .line 41
    invoke-static {v2}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    float-to-int v2, v2

    .line 46
    add-int/2addr v1, v2

    .line 47
    iput v1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->messageCardViewHeight:I

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final getCallToActionText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCallback()Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDonationReminderCardViewHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget p0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->messageCardViewHeight:I

    .line 15
    .line 16
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    .line 29
    invoke-static {v0}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    float-to-int v2, v0

    .line 34
    :goto_0
    add-int/2addr p0, v2

    .line 35
    return p0

    .line 36
    :cond_1
    return v2
.end method

.method public final getImageView()Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 6
    .line 7
    return-object p0
.end method

.method public final loadImage(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 4
    .line 5
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move/from16 v16, v2

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 16
    .line 17
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v1, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 22
    .line 23
    iget-boolean v4, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget-wide v7, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 30
    .line 31
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    cmp-long v4, v7, v9

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget v4, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 38
    .line 39
    if-lez v4, :cond_2

    .line 40
    .line 41
    iget-boolean v4, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    if-lt v1, v5, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lj$/time/LocalDate;->toEpochDay()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    iget-wide v11, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 57
    .line 58
    sub-long/2addr v7, v11

    .line 59
    cmp-long v4, v7, v9

    .line 60
    .line 61
    if-lez v4, :cond_2

    .line 62
    .line 63
    move/from16 v16, v6

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    move/from16 v16, v2

    .line 67
    .line 68
    :goto_1
    if-eqz v16, :cond_4

    .line 69
    .line 70
    add-int/lit8 v13, v1, 0x1

    .line 71
    .line 72
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lj$/time/LocalDate;->toEpochDay()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    if-ge v13, v5, :cond_3

    .line 81
    .line 82
    move v12, v6

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v12, v2

    .line 85
    :goto_2
    const/4 v14, 0x0

    .line 86
    const/16 v15, 0x13d

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    move-wide v5, v7

    .line 90
    const-wide/16 v7, 0x0

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v11, 0x0

    .line 95
    invoke-static/range {v3 .. v15}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_3
    const/16 v1, 0x8

    .line 103
    .line 104
    iget-object v3, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 105
    .line 106
    if-eqz v16, :cond_5

    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    const/16 v11, 0xfc

    .line 110
    .line 111
    const-string v4, "impression"

    .line 112
    .line 113
    const-string v5, "reminder_milestone"

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v9, 0x0

    .line 119
    invoke-static/range {v4 .. v11}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 123
    .line 124
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v0, v4}, Lorg/wikipedia/page/leadimages/PageHeaderView;->updateDonationReminderCardContent(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 129
    .line 130
    .line 131
    iget-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v4, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    iget-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v4, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 142
    .line 143
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :goto_4
    if-eqz p1, :cond_7

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_6

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    iget-object v1, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Landroid/widget/FrameLayout;

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->show()V

    .line 163
    .line 164
    .line 165
    iget-object v0, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 168
    .line 169
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    sget v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;->$r8$clinit:I

    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_7
    :goto_5
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v3, Landroid/widget/FrameLayout;

    .line 186
    .line 187
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 191
    .line 192
    const/4 v3, -0x1

    .line 193
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->getDonationReminderCardViewHeight()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-direct {v1, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    neg-int p1, p1

    .line 10
    iget-object p2, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-le p2, p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, p2

    .line 28
    :goto_0
    int-to-float p1, p1

    .line 29
    neg-float p1, p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onScrollChanged(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-le p1, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p2, p1

    .line 19
    :goto_0
    int-to-float p1, p2

    .line 20
    neg-float p1, p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final refreshCallToActionVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionText:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 8
    .line 9
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingFocusModeEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionText:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final setCallToActionText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->refreshCallToActionVisibility()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCallback(Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lokio/Okio__OkioKt;->leadImageHeightForDevice(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->getDonationReminderCardViewHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v1

    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-direct {v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final updateDonationReminderCardContent(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v4, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v2, v4, v5

    .line 20
    .line 21
    const v2, 0x7f100008

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/Locale$Builder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/Locale$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :try_start_0
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 45
    .line 46
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v2, v2, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    const/4 v2, 0x0

    .line 72
    :goto_1
    if-nez v2, :cond_2

    .line 73
    .line 74
    const-string v2, ""

    .line 75
    .line 76
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v5}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 92
    .line 93
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget v2, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 98
    .line 99
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget v2, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 108
    .line 109
    const/4 v4, 0x2

    .line 110
    if-ne v2, v3, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-array v6, v4, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v0, v6, v5

    .line 119
    .line 120
    aput-object v1, v6, v3

    .line 121
    .line 122
    const v7, 0x7f120171

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-array v6, v3, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v0, v6, v5

    .line 137
    .line 138
    const v7, 0x7f12018e

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v6, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    new-instance v6, Ljava/util/Date;

    .line 151
    .line 152
    iget-wide v7, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 153
    .line 154
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 155
    .line 156
    .line 157
    invoke-static {v6, v3}, Lorg/wikipedia/util/DateUtil;->getMMMMdYYYY(Ljava/util/Date;Z)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const/4 v7, 0x3

    .line 166
    new-array v8, v7, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object p1, v8, v5

    .line 169
    .line 170
    aput-object v0, v8, v3

    .line 171
    .line 172
    aput-object v1, v8, v4

    .line 173
    .line 174
    const p1, 0x7f120175

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, p1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const v1, 0x7f120177

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const v3, 0x7f120176

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 213
    .line 214
    iget-object v5, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v5, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 217
    .line 218
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v3, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;

    .line 221
    .line 222
    invoke-virtual {v5, v2}, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;->setTitle(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, p1}, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;->setMessage(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    invoke-direct {p1, p0, v4}, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView;I)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;->binding:Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;

    .line 234
    .line 235
    iget-object v4, v2, Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 236
    .line 237
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v2, Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    new-instance p1, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;

    .line 246
    .line 247
    invoke-direct {p1, p0, v7}, Lorg/wikipedia/page/leadimages/PageHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView;I)V

    .line 248
    .line 249
    .line 250
    iget-object p0, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;->binding:Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;

    .line 251
    .line 252
    iget-object v0, p0, Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    .line 258
    .line 259
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    return-void
.end method
