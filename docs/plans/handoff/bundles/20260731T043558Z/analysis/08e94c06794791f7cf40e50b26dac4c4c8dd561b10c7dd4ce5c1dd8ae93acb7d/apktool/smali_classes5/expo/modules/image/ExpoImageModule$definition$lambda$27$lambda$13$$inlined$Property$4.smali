.class public final Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$4;
.super Ljava/lang/Object;
.source "PropertyComponentBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$get$1$1\n+ 2 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n*L\n1#1,46:1\n129#2,10:47\n*E\n"
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
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$4;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    aget-object p1, p1, v0

    check-cast p1, Lexpo/modules/image/Image;

    .line 47
    invoke-virtual {p1}, Lexpo/modules/image/Image;->getRef()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/github/penfeizhou/animation/gif/GifDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/image/Image;->getRef()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/github/penfeizhou/animation/apng/APNGDrawable;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/image/Image;->getRef()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/github/penfeizhou/animation/webp/WebPDrawable;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
