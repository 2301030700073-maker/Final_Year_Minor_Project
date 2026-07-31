.class public final Lcom/takisoft/colorpicker/ColorPickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/colorpicker/OnColorSelectedListener;


# instance fields
.field public final listener:Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;

.field public final mPalette:Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

.field public final params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;Lcom/takisoft/colorpicker/ColorPickerDialog$Params;)V
    .locals 5

    .line 1
    const v0, 0x7f1303e0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p2, p0, Lcom/takisoft/colorpicker/ColorPickerDialog;->listener:Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/takisoft/colorpicker/ColorPickerDialog;->params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 20
    .line 21
    iget-object p2, p2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 22
    .line 23
    const v0, 0x7f0c00f7

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 31
    .line 32
    iput-object p1, p2, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p2, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 36
    .line 37
    const p2, 0x102000d

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/widget/ProgressBar;

    .line 45
    .line 46
    const v1, 0x7f09013e

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerDialog;->mPalette:Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->setOnColorSelectedListener(Lcom/takisoft/colorpicker/OnColorSelectedListener;)V

    .line 58
    .line 59
    .line 60
    iget p0, p3, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColumns:I

    .line 61
    .line 62
    if-lez p0, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    add-int/2addr v2, v1

    .line 77
    iget v1, p3, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColumns:I

    .line 78
    .line 79
    iget v3, p3, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSwatchLength:I

    .line 80
    .line 81
    iget v4, p3, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mMarginSize:I

    .line 82
    .line 83
    mul-int/lit8 v4, v4, 0x2

    .line 84
    .line 85
    add-int/2addr v4, v3

    .line 86
    mul-int/2addr v4, v1

    .line 87
    add-int/2addr v4, v2

    .line 88
    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    .line 90
    :cond_0
    iget-object p0, p3, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 91
    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    const/16 p0, 0x8

    .line 97
    .line 98
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p3, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 102
    .line 103
    if-eqz p0, :cond_1

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->setup(Lcom/takisoft/colorpicker/ColorPickerDialog$Params;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public final onColorSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog;->listener:Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;->onColorSelected(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog;->params:Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 9
    .line 10
    iget v1, v0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColor:I

    .line 11
    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    iput p1, v0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColor:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerDialog;->mPalette:Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/takisoft/colorpicker/ColorPickerPaletteFlex;->setup(Lcom/takisoft/colorpicker/ColorPickerDialog$Params;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
