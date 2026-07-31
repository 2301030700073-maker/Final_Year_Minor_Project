.class public final Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$PropGroup$1;
.super Ljava/lang/Object;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseBorderWidthProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function3;

.field final synthetic $index:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$PropGroup$1;->$body:Lkotlin/jvm/functions/Function3;

    iput p2, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$PropGroup$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$PropGroup$1;->invoke(Landroid/view/View;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$PropGroup$1;->$body:Lkotlin/jvm/functions/Function3;

    iget v1, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$PropGroup$1;->$index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
