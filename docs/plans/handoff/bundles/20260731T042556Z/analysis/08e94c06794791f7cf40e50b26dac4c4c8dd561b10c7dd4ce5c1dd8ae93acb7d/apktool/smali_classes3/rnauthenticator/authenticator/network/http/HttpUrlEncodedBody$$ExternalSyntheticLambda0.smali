.class public final synthetic Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;


# direct methods
.method public synthetic constructor <init>(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody$$ExternalSyntheticLambda0;->f$0:Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody$$ExternalSyntheticLambda0;->f$0:Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->$r8$lambda$fkaSThnnq1JbE5bQn2eZIQ7vGns(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
