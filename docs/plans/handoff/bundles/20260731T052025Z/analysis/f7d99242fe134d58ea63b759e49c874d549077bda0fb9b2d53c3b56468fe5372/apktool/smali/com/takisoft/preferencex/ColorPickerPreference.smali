.class public Lcom/takisoft/preferencex/ColorPickerPreference;
.super Landroidx/preference/DialogPreference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public color:I

.field public final colorDescriptions:[Ljava/lang/CharSequence;

.field public colorWidget:Landroid/widget/ImageView;

.field public final colors:[I

.field public final columns:I

.field public final size:I

.field public final sortColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/takisoft/preferencex/ColorPickerPreference;

    .line 2
    .line 3
    const-class v1, Lcom/takisoft/preferencex/ColorPickerPreferenceDialogFragmentCompat;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->registerPreferenceFragment(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/takisoft/preferencex/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401cd

    const v1, 0x1010091

    .line 75
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/CamUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/preferencex/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/takisoft/preferencex/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    sget-object p4, Lcom/takisoft/preferencex/colorpicker/R$styleable;->ColorPickerPreference:[I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 p3, 0x1

    .line 12
    const p4, 0x7f03000a

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->colors:[I

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->colorDescriptions:[Ljava/lang/CharSequence;

    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->color:I

    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    iput p3, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->columns:I

    .line 50
    .line 51
    const/4 p3, 0x4

    .line 52
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->size:I

    .line 57
    .line 58
    const/4 p1, 0x5

    .line 59
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->sortColors:Z

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0c0323

    .line 69
    .line 70
    .line 71
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f090141

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->colorWidget:Landroid/widget/ImageView;

    .line 14
    .line 15
    iget v0, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->color:I

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const v1, 0x7f08008c

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object p1, v1, v2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->colorWidget:Landroid/widget/ImageView;

    .line 36
    .line 37
    new-instance p1, Lcom/takisoft/colorpicker/ColorStateDrawable;

    .line 38
    .line 39
    invoke-direct {p1, v1, v0}, Lcom/takisoft/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    check-cast p1, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    iget p1, p1, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;->color:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/preferencex/ColorPickerPreference;->setInternalColor(IZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;-><init>()V

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->color:I

    .line 17
    .line 18
    iput p0, v0, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;->color:I

    .line 19
    .line 20
    return-object v0
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/preferencex/ColorPickerPreference;->setInternalColor(IZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setInternalColor(IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p2, :cond_2

    .line 10
    .line 11
    :goto_0
    iput p1, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->color:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->colorWidget:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object p2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const v1, 0x7f08008c

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    aput-object p2, v1, v0

    .line 34
    .line 35
    iget-object p2, p0, Lcom/takisoft/preferencex/ColorPickerPreference;->colorWidget:Landroid/widget/ImageView;

    .line 36
    .line 37
    new-instance v0, Lcom/takisoft/colorpicker/ColorStateDrawable;

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Lcom/takisoft/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
