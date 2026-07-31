.class final Lexpo/modules/updates/UpdatesModule$definition$1$3;
.super Ljava/lang/Object;
.source "UpdatesModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/UpdatesModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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
.field public static final INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/updates/UpdatesModule$definition$1$3;

    invoke-direct {v0}, Lexpo/modules/updates/UpdatesModule$definition$1$3;-><init>()V

    sput-object v0, Lexpo/modules/updates/UpdatesModule$definition$1$3;->INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesModule$definition$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 57
    sget-object v0, Lexpo/modules/updates/UpdatesController;->INSTANCE:Lexpo/modules/updates/UpdatesController;

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesController;->removeUpdatesEventManagerObserver$expo_updates_release()V

    return-void
.end method
