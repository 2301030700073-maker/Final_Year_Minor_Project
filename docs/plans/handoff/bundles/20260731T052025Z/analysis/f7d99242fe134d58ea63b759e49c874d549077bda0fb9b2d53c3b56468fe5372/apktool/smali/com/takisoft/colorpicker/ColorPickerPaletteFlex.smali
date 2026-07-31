.class public Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/colorpicker/OnColorSelectedListener;


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mDescriptionSelected:Ljava/lang/String;

.field public mOnColorSelectedListener:Lcom/takisoft/colorpicker/OnColorSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f120214

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->mDescription:Ljava/lang/String;

    .line 24
    .line 25
    const v1, 0x7f120215

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->mDescriptionSelected:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lorg/minidns/edns/Edns;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lorg/minidns/edns/Edns;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/takisoft/colorpicker/R$styleable;->ColorPickerPaletteFlex:[I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const/4 p3, 0x1

    .line 47
    const v1, 0x7f03000a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-lez p3, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, v0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_0
    const/4 p1, 0x3

    .line 67
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, v0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 72
    .line 73
    const/4 p1, 0x5

    .line 74
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput-boolean p1, v0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 79
    .line 80
    const/4 p1, 0x2

    .line 81
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    iput p3, v0, Lorg/minidns/edns/Edns;->version:I

    .line 86
    .line 87
    const/4 p3, 0x4

    .line 88
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, v0, Lorg/minidns/edns/Edns;->flags:I

    .line 93
    .line 94
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, v0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lorg/minidns/edns/Edns;->build()Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->setup(Lcom/takisoft/colorpicker/ColorPickerDialog$Params;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final onColorSelected(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->mOnColorSelectedListener:Lcom/takisoft/colorpicker/OnColorSelectedListener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/takisoft/colorpicker/OnColorSelectedListener;->onColorSelected(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnColorSelectedListener(Lcom/takisoft/colorpicker/OnColorSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->mOnColorSelectedListener:Lcom/takisoft/colorpicker/OnColorSelectedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setup(Lcom/takisoft/colorpicker/ColorPickerDialog$Params;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->mDescription:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->mDescriptionSelected:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, p1, p0, v1, v2}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex$ColorAdapter;-><init>(Lcom/takisoft/colorpicker/ColorPickerDialog$Params;Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 24
    .line 25
    aget v2, v2, v1

    .line 26
    .line 27
    iget v3, p1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColor:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    const-string p0, "The supplied params ("

    .line 40
    .line 41
    const-string v0, ") does not contain colors."

    .line 42
    .line 43
    invoke-static {p1, v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
