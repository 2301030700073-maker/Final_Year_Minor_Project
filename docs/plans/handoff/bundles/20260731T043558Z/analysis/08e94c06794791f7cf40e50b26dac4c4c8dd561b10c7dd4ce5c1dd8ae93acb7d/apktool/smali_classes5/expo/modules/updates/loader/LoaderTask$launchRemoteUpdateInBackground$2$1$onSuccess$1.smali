.class final Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1;
.super Ljava/lang/Object;
.source "LoaderTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->onSuccess(Lexpo/modules/updates/loader/Loader$LoaderResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "Ljava/lang/Boolean;",
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
.field final synthetic this$0:Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1;->this$0:Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p1, Lexpo/modules/updates/db/entity/UpdateEntity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1;->invoke(Lexpo/modules/updates/db/entity/UpdateEntity;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/updates/db/entity/UpdateEntity;Z)V
    .locals 0

    .line 418
    iget-object p2, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1;->this$0:Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;

    invoke-static {p2, p1}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->access$launchUpdate(Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    return-void
.end method
