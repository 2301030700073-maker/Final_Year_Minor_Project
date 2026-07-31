.class public final Lcom/google/android/material/resources/TextAppearance$1;
.super Landroidx/core/content/res/CamUtils;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/resources/TextAppearance;

.field public final synthetic val$callback:Lkotlin/ExceptionsKt;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/TextAppearance;Lkotlin/ExceptionsKt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Lkotlin/ExceptionsKt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Lkotlin/ExceptionsKt;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lkotlin/ExceptionsKt;->onFontRetrievalFailed(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Lkotlin/ExceptionsKt;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lkotlin/ExceptionsKt;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
