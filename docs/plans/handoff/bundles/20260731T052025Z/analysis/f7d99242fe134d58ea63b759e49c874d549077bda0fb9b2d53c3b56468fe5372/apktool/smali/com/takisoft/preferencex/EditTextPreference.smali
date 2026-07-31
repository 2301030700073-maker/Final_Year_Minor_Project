.class public Lcom/takisoft/preferencex/EditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final disableMessagePaddingFix:Z

.field public final editTextAttributes:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04020f

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/takisoft/preferencex/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/takisoft/preferencex/EditTextPreference;->editTextAttributes:Landroidx/collection/SparseArrayCompat;

    .line 11
    .line 12
    sget-object v0, Lcom/takisoft/preferencex/R$styleable;->EditTextPreference:[I

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iput-boolean p3, p0, Lcom/takisoft/preferencex/EditTextPreference;->disableMessagePaddingFix:Z

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    move p3, v1

    .line 35
    :goto_0
    if-ge p3, p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p2, p3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    invoke-interface {p2, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sparse-switch p4, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    goto :goto_2

    .line 50
    :sswitch_0
    new-instance v2, Landroid/util/TypedValue;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 53
    .line 54
    .line 55
    iput v0, v2, Landroid/util/TypedValue;->resourceId:I

    .line 56
    .line 57
    invoke-interface {p2, p3, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, v2, Landroid/util/TypedValue;->data:I

    .line 62
    .line 63
    const/16 v0, 0x12

    .line 64
    .line 65
    iput v0, v2, Landroid/util/TypedValue;->type:I

    .line 66
    .line 67
    :goto_1
    move-object v0, v2

    .line 68
    goto :goto_2

    .line 69
    :sswitch_1
    new-instance v2, Landroid/util/TypedValue;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 72
    .line 73
    .line 74
    iput v0, v2, Landroid/util/TypedValue;->resourceId:I

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-interface {p2, p3, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, v2, Landroid/util/TypedValue;->data:I

    .line 82
    .line 83
    const/16 v0, 0x11

    .line 84
    .line 85
    iput v0, v2, Landroid/util/TypedValue;->type:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :sswitch_2
    new-instance v2, Landroid/util/TypedValue;

    .line 89
    .line 90
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .line 92
    .line 93
    iput v0, v2, Landroid/util/TypedValue;->resourceId:I

    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-interface {p2, p3, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, v2, Landroid/util/TypedValue;->data:I

    .line 101
    .line 102
    const/16 v0, 0x10

    .line 103
    .line 104
    iput v0, v2, Landroid/util/TypedValue;->type:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_2
    if-eqz v0, :cond_1

    .line 108
    .line 109
    iget-object v2, p0, Lcom/takisoft/preferencex/EditTextPreference;->editTextAttributes:Landroidx/collection/SparseArrayCompat;

    .line 110
    .line 111
    invoke-virtual {v2, p4, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    :goto_3
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 118
    .line 119
    const/16 p2, 0x16

    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->mOnBindEditTextListener:Lokhttp3/ConnectionPool;

    .line 125
    .line 126
    return-void

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1010153 -> :sswitch_2
        0x1010154 -> :sswitch_2
        0x1010156 -> :sswitch_2
        0x1010157 -> :sswitch_2
        0x1010158 -> :sswitch_2
        0x101015a -> :sswitch_2
        0x1010220 -> :sswitch_1
        0x101038c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
