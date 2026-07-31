.class public Lorg/wikipedia/edit/SyntaxHighlightableEditText;
.super Landroid/widget/EditText;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R*\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "Landroid/widget/EditText;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/text/Editable;",
        "getText",
        "()Landroid/text/Editable;",
        "Landroid/view/View;",
        "scrollView",
        "Landroid/view/View;",
        "getScrollView",
        "()Landroid/view/View;",
        "setScrollView",
        "(Landroid/view/View;)V",
        "Landroid/view/inputmethod/InputConnection;",
        "inputConnection",
        "Landroid/view/inputmethod/InputConnection;",
        "getInputConnection",
        "()Landroid/view/inputmethod/InputConnection;",
        "setInputConnection",
        "(Landroid/view/inputmethod/InputConnection;)V",
        "",
        "value",
        "showLineNumbers",
        "Z",
        "getShowLineNumbers",
        "()Z",
        "setShowLineNumbers",
        "(Z)V",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public actualLineFromRenderedLine:[I

.field public allowScrollToCursor:Z

.field public final gutterRect:Landroid/graphics/Rect;

.field public inputConnection:Landroid/view/inputmethod/InputConnection;

.field public final isRtl:Z

.field public final lineNumberBackgroundPaint:Landroid/graphics/Paint;

.field public final lineNumberGapWidth:I

.field public final lineNumberPaint:Landroid/text/TextPaint;

.field public final paddingWithLineNumbers:I

.field public final paddingWithoutLineNumbers:I

.field public prevLineCount:I

.field public scrollView:Landroid/view/View;

.field public showLineNumbers:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->prevLineCount:I

    .line 9
    .line 10
    new-instance p1, Landroid/text/TextPaint;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberPaint:Landroid/text/TextPaint;

    .line 16
    .line 17
    new-instance p2, Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberBackgroundPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->isRtl:Z

    .line 43
    .line 44
    const/high16 v2, 0x41400000    # 12.0f

    .line 45
    .line 46
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iput v2, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->paddingWithoutLineNumbers:I

    .line 51
    .line 52
    const/high16 v3, 0x42100000    # 36.0f

    .line 53
    .line 54
    invoke-static {v3}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput v3, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->paddingWithLineNumbers:I

    .line 59
    .line 60
    const/high16 v4, 0x41000000    # 8.0f

    .line 61
    .line 62
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iput v4, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberGapWidth:I

    .line 67
    .line 68
    new-instance v4, Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->gutterRect:Landroid/graphics/Rect;

    .line 74
    .line 75
    iput-boolean v1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    iget-boolean v4, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->showLineNumbers:Z

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    move v2, v3

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 112
    .line 113
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const v1, 0x3f4ccccd    # 0.8f

    .line 121
    .line 122
    .line 123
    mul-float/2addr v0, v1

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0404fb

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const p1, 0x7f040094

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    .line 160
    .line 161
    :cond_3
    return-void
.end method


# virtual methods
.method public final getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScrollView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShowLineNumbers()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->showLineNumbers:Z

    .line 2
    .line 3
    return p0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    if-nez p0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v1, 0x20000

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 23
    .line 24
    and-int/lit8 v2, v1, 0x6

    .line 25
    .line 26
    const/4 v3, 0x6

    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const v0, -0x40000001    # -1.9999999f

    .line 32
    .line 33
    .line 34
    and-int/2addr v0, v1

    .line 35
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 36
    .line 37
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 38
    .line 39
    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->prevLineCount:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "actualLineFromRenderedLine"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v0, v1, :cond_a

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->prevLineCount:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-array v7, v0, [Z

    .line 39
    .line 40
    if-eqz v6, :cond_9

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-nez v8, :cond_0

    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_0
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_1
    new-array v8, v0, [Z

    .line 53
    .line 54
    new-array v9, v0, [I

    .line 55
    .line 56
    iput-object v9, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->actualLineFromRenderedLine:[I

    .line 57
    .line 58
    move v9, v4

    .line 59
    :goto_0
    if-ge v9, v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v1, v9}, Landroid/text/Layout;->getLineEnd(I)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    sub-int/2addr v10, v5

    .line 66
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const/16 v11, 0xa

    .line 71
    .line 72
    if-ne v10, v11, :cond_2

    .line 73
    .line 74
    move v10, v5

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v10, v4

    .line 77
    :goto_1
    aput-boolean v10, v7, v9

    .line 78
    .line 79
    if-eqz v10, :cond_4

    .line 80
    .line 81
    add-int/lit8 v10, v9, -0x1

    .line 82
    .line 83
    :goto_2
    if-ltz v10, :cond_3

    .line 84
    .line 85
    aget-boolean v11, v7, v10

    .line 86
    .line 87
    if-nez v11, :cond_3

    .line 88
    .line 89
    add-int/lit8 v10, v10, -0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 93
    .line 94
    aput-boolean v5, v8, v10

    .line 95
    .line 96
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    add-int/lit8 v1, v0, -0x2

    .line 100
    .line 101
    :goto_3
    if-ltz v1, :cond_6

    .line 102
    .line 103
    aget-boolean v6, v7, v1

    .line 104
    .line 105
    if-nez v6, :cond_6

    .line 106
    .line 107
    add-int/lit8 v1, v1, -0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    add-int/2addr v1, v5

    .line 111
    aput-boolean v5, v8, v1

    .line 112
    .line 113
    move v1, v4

    .line 114
    move v6, v1

    .line 115
    :goto_4
    if-ge v1, v0, :cond_a

    .line 116
    .line 117
    aget-boolean v7, v8, v1

    .line 118
    .line 119
    if-eqz v7, :cond_7

    .line 120
    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    :cond_7
    iget-object v7, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->actualLineFromRenderedLine:[I

    .line 124
    .line 125
    if-eqz v7, :cond_8

    .line 126
    .line 127
    aput v6, v7, v1

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v2

    .line 136
    :cond_9
    :goto_5
    new-array v0, v5, [I

    .line 137
    .line 138
    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->actualLineFromRenderedLine:[I

    .line 139
    .line 140
    aput v5, v0, v4

    .line 141
    .line 142
    :cond_a
    iget-boolean v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->showLineNumbers:Z

    .line 143
    .line 144
    if-eqz v0, :cond_10

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_10

    .line 151
    .line 152
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 153
    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    :cond_b
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 174
    .line 175
    if-eqz v0, :cond_c

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    iget-object v5, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    add-int/2addr v5, v1

    .line 200
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    goto :goto_6

    .line 205
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    sub-int/2addr v0, v5

    .line 214
    :goto_6
    iget-object v1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->gutterRect:Landroid/graphics/Rect;

    .line 215
    .line 216
    iget-object v5, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberBackgroundPaint:Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    if-gt v4, v0, :cond_10

    .line 222
    .line 223
    const/4 v1, -0x1

    .line 224
    :goto_7
    iget-object v5, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->actualLineFromRenderedLine:[I

    .line 225
    .line 226
    if-eqz v5, :cond_f

    .line 227
    .line 228
    aget v5, v5, v4

    .line 229
    .line 230
    if-eq v1, v5, :cond_e

    .line 231
    .line 232
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-boolean v6, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->isRtl:Z

    .line 237
    .line 238
    iget v7, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberGapWidth:I

    .line 239
    .line 240
    iget v8, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->paddingWithLineNumbers:I

    .line 241
    .line 242
    if-eqz v6, :cond_d

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    sub-int/2addr v6, v8

    .line 249
    add-int/2addr v6, v7

    .line 250
    goto :goto_8

    .line 251
    :cond_d
    sub-int v6, v8, v7

    .line 252
    .line 253
    :goto_8
    int-to-float v6, v6

    .line 254
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineBottom(I)I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    int-to-float v7, v7

    .line 263
    iget-object v8, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberPaint:Landroid/text/TextPaint;

    .line 264
    .line 265
    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    .line 267
    .line 268
    move v1, v5

    .line 269
    :cond_e
    if-eq v4, v0, :cond_10

    .line 270
    .line 271
    add-int/lit8 v4, v4, 0x1

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v2

    .line 278
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->lineNumberGapWidth:I

    .line 5
    .line 6
    iget p2, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->paddingWithLineNumbers:I

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    iget-boolean p4, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->isRtl:Z

    .line 10
    .line 11
    iget-object p5, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->gutterRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    sub-int/2addr p4, p2

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    add-int/2addr p1, p4

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {p5, p1, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 36
    .line 37
    sub-int/2addr p2, p1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p5, p3, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Landroidx/core/graphics/TypefaceCompat$$ExternalSyntheticApiModelOutline0;->m$1()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/view/ContentInfo$Builder;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    move-object p1, v0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public final requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    return-void
.end method

.method public final setScrollView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->scrollView:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowLineNumbers(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->showLineNumbers:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->paddingWithLineNumbers:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->paddingWithoutLineNumbers:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
