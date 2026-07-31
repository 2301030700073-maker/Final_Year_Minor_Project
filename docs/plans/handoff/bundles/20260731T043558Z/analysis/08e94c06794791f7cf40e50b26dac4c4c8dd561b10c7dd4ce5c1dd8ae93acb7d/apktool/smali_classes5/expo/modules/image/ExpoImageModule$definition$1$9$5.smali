.class final Lexpo/modules/image/ExpoImageModule$definition$1$9$5;
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
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoImageModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule$definition$1$9$5\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,303:1\n1#2:304\n*E\n"
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
.field public static final INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$9$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/ExpoImageModule$definition$1$9$5;

    invoke-direct {v0}, Lexpo/modules/image/ExpoImageModule$definition$1$9$5;-><init>()V

    sput-object v0, Lexpo/modules/image/ExpoImageModule$definition$1$9$5;->INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$9$5;

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

    .line 218
    check-cast p1, Lexpo/modules/image/ExpoImageViewWrapper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ExpoImageModule$definition$1$9$5;->invoke(Lexpo/modules/image/ExpoImageViewWrapper;Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/image/ExpoImageViewWrapper;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 219
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setBlurRadius$expo_image_release(Ljava/lang/Integer;)V

    return-void
.end method
