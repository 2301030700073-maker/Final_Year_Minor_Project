.class final Lexpo/modules/image/ExpoImageModule$definition$1$9$13;
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
        "Lexpo/modules/image/records/CachePolicy;",
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
.field public static final INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$9$13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/ExpoImageModule$definition$1$9$13;

    invoke-direct {v0}, Lexpo/modules/image/ExpoImageModule$definition$1$9$13;-><init>()V

    sput-object v0, Lexpo/modules/image/ExpoImageModule$definition$1$9$13;->INSTANCE:Lexpo/modules/image/ExpoImageModule$definition$1$9$13;

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

    .line 250
    check-cast p1, Lexpo/modules/image/ExpoImageViewWrapper;

    check-cast p2, Lexpo/modules/image/records/CachePolicy;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ExpoImageModule$definition$1$9$13;->invoke(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/records/CachePolicy;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/image/records/CachePolicy;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 251
    sget-object p2, Lexpo/modules/image/records/CachePolicy;->DISK:Lexpo/modules/image/records/CachePolicy;

    :cond_0
    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setCachePolicy$expo_image_release(Lexpo/modules/image/records/CachePolicy;)V

    return-void
.end method
