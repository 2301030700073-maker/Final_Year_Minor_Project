.class public final Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;
.super Ljava/lang/Object;
.source "AppCompatActivityAware.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
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


# instance fields
.field final synthetic $listener:Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;

.field final synthetic $this_withActivityAvailable:Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;->$this_withActivityAvailable:Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;

    iput-object p2, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;->$listener:Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;->$this_withActivityAvailable:Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;

    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;->$listener:Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;

    check-cast v0, Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;->removeOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V

    return-void
.end method
