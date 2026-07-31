.class public final Lexpo/modules/image/YogaUtilsKt;
.super Ljava/lang/Object;
.source "YogaUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a3\u0010\u0003\u001a\u00020\u0001*\u00020\u00012!\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0086\u0008\u00f8\u0001\u0000\u001a\u000e\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\n"
    }
    d2 = {
        "ifYogaUndefinedUse",
        "",
        "value",
        "ifYogaDefinedUse",
        "transformFun",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "current",
        "makeYogaUndefinedIfNegative",
        "expo-image_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ifYogaDefinedUse(FLkotlin/jvm/functions/Function1;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    const-string v0, "transformFun"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static final ifYogaUndefinedUse(FF)F
    .locals 1

    .line 6
    invoke-static {p0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final makeYogaUndefinedIfNegative(F)F
    .locals 1

    .line 20
    invoke-static {p0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    :cond_0
    return p0
.end method
