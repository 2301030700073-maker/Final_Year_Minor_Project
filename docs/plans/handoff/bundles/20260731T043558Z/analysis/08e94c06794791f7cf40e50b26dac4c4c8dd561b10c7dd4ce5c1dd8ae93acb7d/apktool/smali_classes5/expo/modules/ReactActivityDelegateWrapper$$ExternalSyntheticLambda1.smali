.class public final synthetic Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/ReactActivityDelegateWrapper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/ReactActivityDelegateWrapper;

    check-cast p1, Lexpo/modules/core/interfaces/ReactActivityHandler;

    invoke-static {v0, p1}, Lexpo/modules/ReactActivityDelegateWrapper;->$r8$lambda$6Z5xP6WsUpnYmnqTVsG5ckH5Ya0(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p1

    return-object p1
.end method
