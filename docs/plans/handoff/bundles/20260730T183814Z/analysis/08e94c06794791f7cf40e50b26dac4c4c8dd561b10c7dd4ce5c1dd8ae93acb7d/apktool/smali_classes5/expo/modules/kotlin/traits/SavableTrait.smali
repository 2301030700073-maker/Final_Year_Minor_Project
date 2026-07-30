.class public final Lexpo/modules/kotlin/traits/SavableTrait;
.super Ljava/lang/Object;
.source "SavableTrait.kt"

# interfaces
.implements Lexpo/modules/kotlin/traits/Trait;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/traits/SavableTrait$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/traits/Trait<",
        "TInputType;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \r*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\rB\u001d\u0008\u0001\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0005H\u0016R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/kotlin/traits/SavableTrait;",
        "InputType",
        "Lexpo/modules/kotlin/traits/Trait;",
        "exportImpl",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getExportImpl",
        "()Lkotlin/jvm/functions/Function1;",
        "export",
        "appContext",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/kotlin/traits/SavableTrait$Companion;


# instance fields
.field private final exportImpl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/kotlin/AppContext;",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/traits/SavableTrait$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/traits/SavableTrait;->Companion:Lexpo/modules/kotlin/traits/SavableTrait$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/AppContext;",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exportImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lexpo/modules/kotlin/traits/SavableTrait;->exportImpl:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public export(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/traits/SavableTrait;->exportImpl:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    return-object p1
.end method

.method public final getExportImpl()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/kotlin/AppContext;",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/traits/SavableTrait;->exportImpl:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
