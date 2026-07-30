.class public Lcom/android/contacts/util/MaterialColorMapUtils;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;
    }
.end annotation


# instance fields
.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7f030000

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    const v0, 0x7f030001

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;
    .locals 2

    const v0, 0x7f0600f3

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0600f4

    .line 139
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 141
    new-instance v1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v1, v0, p0}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v1
.end method

.method public static getStatusBarColor(Landroid/app/Activity;)I
    .locals 1

    .line 188
    instance-of v0, p0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .line 189
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f060093

    .line 191
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_1
    const v0, 0x7f0600e6

    .line 192
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static getToolBarColor(Landroid/app/Activity;)I
    .locals 1

    .line 199
    instance-of v0, p0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .line 200
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f060092

    .line 202
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_1
    const v0, 0x7f0600e5

    .line 203
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static hue(I)F
    .locals 7

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v3, v2, v3

    int-to-float v3, v3

    sub-int v5, v2, v0

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-int v6, v2, v1

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-int p0, v2, p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    if-ne v0, v2, :cond_1

    sub-float/2addr p0, v6

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v5, v0

    sub-float p0, v5, p0

    goto :goto_0

    :cond_2
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v6, p0

    sub-float p0, v6, v5

    :goto_0
    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p0, v0

    cmpg-float v0, p0, v4

    if-gez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v4, p0, v0

    goto :goto_1

    :cond_3
    move v4, p0

    :goto_1
    return v4
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;
    .locals 6

    const-string v0, "calculatePrimaryAndSecondaryColor"

    .line 113
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/android/contacts/util/MaterialColorMapUtils;->hue(I)F

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 118
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/android/contacts/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 120
    invoke-static {v4}, Lcom/android/contacts/util/MaterialColorMapUtils;->hue(I)F

    move-result v4

    sub-float/2addr v4, p1

    .line 124
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move v3, v2

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 132
    new-instance p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v1, p0, Lcom/android/contacts/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    .line 133
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object p1
.end method
