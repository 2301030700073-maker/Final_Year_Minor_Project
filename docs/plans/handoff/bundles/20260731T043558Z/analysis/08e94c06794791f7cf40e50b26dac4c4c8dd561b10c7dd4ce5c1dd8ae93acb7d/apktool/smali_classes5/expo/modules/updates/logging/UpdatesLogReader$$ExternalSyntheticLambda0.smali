.class public final synthetic Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/updates/logging/UpdatesLogReader;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/updates/logging/UpdatesLogReader;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/updates/logging/UpdatesLogReader;

    iput-wide p2, p0, Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/updates/logging/UpdatesLogReader;

    iget-wide v1, p0, Lexpo/modules/updates/logging/UpdatesLogReader$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lexpo/modules/updates/logging/UpdatesLogReader;->$r8$lambda$emgtxngls_ujC9f_JxrByBoEuFM(Lexpo/modules/updates/logging/UpdatesLogReader;JLjava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
