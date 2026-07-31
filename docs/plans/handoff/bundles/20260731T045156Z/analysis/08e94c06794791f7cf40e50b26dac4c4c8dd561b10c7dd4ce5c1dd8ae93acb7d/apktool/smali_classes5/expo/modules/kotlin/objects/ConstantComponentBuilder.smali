.class public Lexpo/modules/kotlin/objects/ConstantComponentBuilder;
.super Ljava/lang/Object;
.source "ConstantComponentBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstantComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantComponentBuilder.kt\nexpo/modules/kotlin/objects/ConstantComponentBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u000e\u001a\u00020\u0000\"\u0006\u0008\u0000\u0010\u000f\u0018\u00012\u000e\u0008\u0004\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\tH\u0086\u0008\u00f8\u0001\u0000J\u0006\u0010\u0011\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/ConstantComponentBuilder;",
        "",
        "name",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "getter",
        "Lkotlin/Function0;",
        "getGetter",
        "()Lkotlin/jvm/functions/Function0;",
        "setGetter",
        "(Lkotlin/jvm/functions/Function0;)V",
        "get",
        "R",
        "body",
        "build",
        "Lexpo/modules/kotlin/objects/ConstantComponent;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private getter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lexpo/modules/kotlin/objects/ConstantComponent;
    .locals 3

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->getter:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    new-instance v2, Lexpo/modules/kotlin/objects/ConstantComponent;

    invoke-direct {v2, v0, v1}, Lexpo/modules/kotlin/objects/ConstantComponent;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The constant \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' doesn\'t have getter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final synthetic get(Lkotlin/jvm/functions/Function0;)Lexpo/modules/kotlin/objects/ConstantComponentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)",
            "Lexpo/modules/kotlin/objects/ConstantComponentBuilder;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder$get$1$1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder$get$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->setGetter(Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public final getGetter()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->getter:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setGetter(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->getter:Lkotlin/jvm/functions/Function0;

    return-void
.end method
