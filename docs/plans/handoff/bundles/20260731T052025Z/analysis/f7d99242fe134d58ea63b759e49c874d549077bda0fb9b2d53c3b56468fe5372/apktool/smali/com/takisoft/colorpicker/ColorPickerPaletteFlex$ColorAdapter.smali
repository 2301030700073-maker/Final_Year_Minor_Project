.class public final Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final colorSelectedListener:Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

.field public final description:Ljava/lang/String;

.field public final descriptionSelected:Ljava/lang/String;

.field public final params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;


# direct methods
.method public constructor <init>(Lcom/takisoft/colorpicker/ColorPickerDialog$Params;Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->colorSelectedListener:Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->description:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->descriptionSelected:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorHolder;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Lcom/takisoft/colorpicker/ColorPickerSwatch;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 8
    .line 9
    iget v1, v0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColor:I

    .line 10
    .line 11
    iget-object v2, v0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 12
    .line 13
    aget v2, v2, p2

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_0
    invoke-virtual {p1, v2}, Lcom/takisoft/colorpicker/ColorPickerSwatch;->setColor(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/takisoft/colorpicker/ColorPickerSwatch;->setChecked(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 33
    .line 34
    iget v5, v0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColumns:I

    .line 35
    .line 36
    if-lez v5, :cond_1

    .line 37
    .line 38
    rem-int v5, p2, v5

    .line 39
    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    iput-boolean v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iput-boolean v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    .line 46
    .line 47
    :goto_1
    iget-object v0, v0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColorContentDescriptions:[Ljava/lang/CharSequence;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    array-length v2, v0

    .line 52
    if-le v2, p2, :cond_2

    .line 53
    .line 54
    aget-object p0, v0, p2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/2addr p2, v4

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-array v0, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p2, v0, v3

    .line 67
    .line 68
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->descriptionSelected:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    new-array v0, v4, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p2, v0, v3

    .line 82
    .line 83
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->description:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p2, Lcom/takisoft/colorpicker/ColorPickerSwatch;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0c00f8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f090140

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object v0, p2, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    .line 30
    .line 31
    const v0, 0x7f09013f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p2, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    .line 41
    .line 42
    const v1, 0x7f08008a

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->colorSelectedListener:Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/takisoft/colorpicker/ColorPickerSwatch;->setOnColorSelectedListener(Lcom/takisoft/colorpicker/OnColorSelectedListener;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;->params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 63
    .line 64
    iget v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSwatchLength:I

    .line 65
    .line 66
    invoke-direct {p1, v0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mMarginSize:I

    .line 70
    .line 71
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    iput p0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 76
    .line 77
    iput p0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorHolder;

    .line 83
    .line 84
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method
