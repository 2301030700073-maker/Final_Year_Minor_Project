.class public Lcom/takisoft/preferencex/SwitchPreferenceCompat;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ATTRS:[I


# instance fields
.field public final contentClickListener:Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

.field public final widgetClickListener:Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

.field public final withSeparator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f040189

    .line 2
    .line 3
    .line 4
    const v1, 0x7f040121

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->ATTRS:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;-><init>(Lcom/takisoft/preferencex/SwitchPreferenceCompat;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->contentClickListener:Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

    .line 11
    .line 12
    new-instance p1, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;-><init>(Lcom/takisoft/preferencex/SwitchPreferenceCompat;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->widgetClickListener:Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

    .line 19
    .line 20
    iput-boolean p2, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->withSeparator:Z

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    move p2, v0

    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iput-boolean p2, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->withSeparator:Z

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const p1, 0x7f0c031d

    .line 35
    .line 36
    .line 37
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const p1, 0x7f0c031c

    .line 41
    .line 42
    .line 43
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iget-boolean v2, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->withSeparator:Z

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    const v3, 0x1020018

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->widgetClickListener:Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    const v3, 0x7f090341

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->contentClickListener:Lcom/takisoft/preferencex/SwitchPreferenceCompat$1;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->ATTRS:[I

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-lez v5, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    invoke-static {v4, v6}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const v6, 0x7f09040e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    new-array p0, v1, [I

    .line 89
    .line 90
    const v6, 0x101009e

    .line 91
    .line 92
    .line 93
    aput v6, p0, v5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-array p0, v1, [I

    .line 97
    .line 98
    const v6, -0x101009e

    .line 99
    .line 100
    .line 101
    aput v6, p0, v5

    .line 102
    .line 103
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v4, p0, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    const v4, 0x7f090343

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    .line 123
    .line 124
    :cond_3
    xor-int/lit8 p0, v2, 0x1

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    .line 127
    .line 128
    .line 129
    xor-int/lit8 p0, v2, 0x1

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final onClick()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->withSeparator:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
