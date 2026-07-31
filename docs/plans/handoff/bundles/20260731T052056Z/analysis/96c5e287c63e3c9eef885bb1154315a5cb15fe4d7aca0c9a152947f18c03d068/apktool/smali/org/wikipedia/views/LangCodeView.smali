.class public final Lorg/wikipedia/views/LangCodeView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u000f\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0015\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/wikipedia/views/LangCodeView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "langCode",
        "",
        "setLangCode",
        "(Ljava/lang/String;)V",
        "",
        "textColor",
        "setTextColor",
        "(I)V",
        "Landroid/content/res/ColorStateList;",
        "colors",
        "(Landroid/content/res/ColorStateList;)V",
        "tintColor",
        "setBackgroundTint",
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
.field public final binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0c05d0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f09031e

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/TextView;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    new-instance v0, Lorg/wikipedia/databinding/ViewLangCodeBinding;

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/databinding/ViewLangCodeBinding;-><init>(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    .line 35
    .line 36
    new-instance v0, Landroid/util/TypedValue;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const v4, 0x7f04051a

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object v0, v2

    .line 57
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 60
    .line 61
    sget-object v2, Lorg/wikipedia/R$styleable;->LangCodeView:[I

    .line 62
    .line 63
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x2

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .line 86
    .line 87
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    const/high16 v3, 0x42400000    # 48.0f

    .line 90
    .line 91
    invoke-static {v3}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/4 v4, -0x1

    .line 96
    invoke-direct {p1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lorg/wikipedia/views/LangCodeView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/LangCodeView;->setBackgroundTint(I)V

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    const p1, 0x7f080303

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    const p1, 0x7f080302

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    const-string p0, "Attribute not found; ID=2130969882"

    .line 125
    .line 126
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v2

    .line 130
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    const-string p1, "Missing required view with ID: "

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v2
.end method


# virtual methods
.method public final setBackgroundTint(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object p0, p0, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    iget-object p0, p0, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setLangCode(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "-"

    .line 18
    .line 19
    const-string v2, "-\n"

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    .line 29
    .line 30
    const/16 p1, 0xa

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {p0, v1, p1, v0}, Lkotlin/uuid/UuidKt;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;III)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 12
    iget-object p0, p0, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    iget-object p0, p0, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
