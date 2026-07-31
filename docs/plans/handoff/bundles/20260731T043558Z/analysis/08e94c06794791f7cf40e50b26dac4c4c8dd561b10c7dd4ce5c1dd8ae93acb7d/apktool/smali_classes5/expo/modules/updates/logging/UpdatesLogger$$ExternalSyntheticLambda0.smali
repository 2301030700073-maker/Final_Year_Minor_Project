.class public final synthetic Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/updates/logging/UpdatesLogger;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/updates/logging/UpdatesLogger;

    iput-object p2, p0, Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/updates/logging/UpdatesLogger;

    iget-object v1, p0, Lexpo/modules/updates/logging/UpdatesLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->$r8$lambda$WLTPOK9R5r3b5T08MbvZ_mYL2Gs(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
