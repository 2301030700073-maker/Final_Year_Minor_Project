.class final Lexpo/modules/image/ExpoImageModule$definition$1$9$14;
.super Ljava/lang/Object;
.source "ExpoImageModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/image/ExpoImageViewWrapper;",
        "Ljava/lang/String;",
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
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$9$14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/ExpoImageModule$definition$1$9$14;

    invoke-direct {v0}, Lexpo/modules/image/ExpoImageModule$definition$1$9$14;-><init>()V

    sput-object v0, Lexpo/modules/image/ExpoImageModule$definition$1$9$14;->INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$9$14;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    check-cast p1, Lexpo/modules/image/ExpoImageViewWrapper;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ExpoImageModule$definition$1$9$14;->invoke(Lexpo/modules/image/ExpoImageViewWrapper;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/image/ExpoImageViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setRecyclingKey(Ljava/lang/String;)V

    return-void
.end method
