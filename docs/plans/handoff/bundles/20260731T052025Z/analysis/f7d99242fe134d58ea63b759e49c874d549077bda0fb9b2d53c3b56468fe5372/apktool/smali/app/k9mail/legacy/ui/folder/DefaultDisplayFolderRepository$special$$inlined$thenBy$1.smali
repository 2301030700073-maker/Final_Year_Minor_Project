.class public final Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final $comparator:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final $this_thenBy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/util/Rational;Landroid/util/Rational;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Landroid/util/Rational;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {p2, v0, v1}, Landroid/util/Rational;-><init>(II)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-object p2, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$comparator:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->getTransformedMappingArea(Landroid/util/Rational;)Landroid/graphics/RectF;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$this_thenBy:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;Ljava/text/Collator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$r8$classId:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$this_thenBy:Ljava/lang/Object;

    iput-object p2, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$comparator:Ljava/lang/Object;

    return-void
.end method

.method public static getOverlappingAreaSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpg-float v0, v0, v1

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    cmpg-float v1, v1, v2

    .line 31
    .line 32
    if-gez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    :goto_1
    mul-float/2addr v0, p0

    .line 44
    return v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$this_thenBy:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/util/Rational;

    .line 9
    .line 10
    check-cast p2, Landroid/util/Rational;

    .line 11
    .line 12
    check-cast v1, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->getTransformedMappingArea(Landroid/util/Rational;)Landroid/graphics/RectF;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p2}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->getTransformedMappingArea(Landroid/util/Rational;)Landroid/graphics/RectF;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    cmpl-float p2, p2, v0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-ltz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    cmpl-float p2, p2, v3

    .line 53
    .line 54
    if-ltz p2, :cond_1

    .line 55
    .line 56
    move p2, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move p2, v2

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    cmpl-float v3, v3, v4

    .line 68
    .line 69
    if-ltz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    cmpl-float v3, v3, v4

    .line 80
    .line 81
    if-ltz v3, :cond_2

    .line 82
    .line 83
    move v2, v0

    .line 84
    :cond_2
    if-eqz p2, :cond_3

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    mul-float/2addr p1, p2

    .line 97
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    mul-float/2addr p0, p2

    .line 106
    sub-float/2addr p1, p0

    .line 107
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    float-to-int v2, p0

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    if-eqz p2, :cond_4

    .line 114
    .line 115
    const/4 v2, -0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    if-eqz v2, :cond_5

    .line 118
    .line 119
    move v2, v0

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-static {p1, v1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->getOverlappingAreaSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-static {p0, v1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->getOverlappingAreaSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    sub-float/2addr p1, p0

    .line 130
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    float-to-int p0, p0

    .line 135
    neg-int v2, p0

    .line 136
    :goto_1
    return v2

    .line 137
    :pswitch_0
    check-cast v1, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 138
    .line 139
    invoke-virtual {v1, p1, p2}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$comparator:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Ljava/text/Collator;

    .line 149
    .line 150
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 151
    .line 152
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 153
    .line 154
    iget-object p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 155
    .line 156
    check-cast p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 157
    .line 158
    iget-object p2, p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 159
    .line 160
    iget-object p2, p2, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    :goto_2
    return v0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getTransformedMappingArea(Landroid/util/Rational;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;->$comparator:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/util/Rational;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-float p0, p0

    .line 30
    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    cmpl-float v0, v0, v2

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    int-to-float v3, v3

    .line 58
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    int-to-float p0, p0

    .line 63
    mul-float/2addr v3, p0

    .line 64
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    int-to-float p0, p0

    .line 69
    div-float/2addr v3, p0

    .line 70
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    int-to-float v2, v2

    .line 81
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    int-to-float v3, v3

    .line 86
    mul-float/2addr v2, v3

    .line 87
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    div-float/2addr v2, p1

    .line 93
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    int-to-float p0, p0

    .line 98
    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    .line 100
    .line 101
    return-object v0
.end method
