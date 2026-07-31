.class public final Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$$inlined$UseBorderStyleProp$1;
.super Ljava/lang/Object;
.source "CSSProps.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseBorderStyleProp(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCSSProps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt\n*L\n1#1,176:1\n1#2:177\n119#3,2:178\n118#3,5:180\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$$inlined$UseBorderStyleProp$1;->invoke(Landroid/view/View;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 110
    sget-object v0, Lcom/facebook/react/uimanager/style/BorderStyle;->Companion:Lcom/facebook/react/uimanager/style/BorderStyle$Companion;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/style/BorderStyle$Companion;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 180
    :goto_0
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    return-void
.end method
