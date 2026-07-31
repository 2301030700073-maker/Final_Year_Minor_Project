.class public final synthetic Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ReactNativeHostWrapperBase;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ReactNativeHostWrapperBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/ReactNativeHostWrapperBase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/ReactNativeHostWrapperBase;

    check-cast p1, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    invoke-static {v0, p1}, Lexpo/modules/ReactNativeHostWrapperBase;->$r8$lambda$ysnhkFs1f5VQP7k0jLthMrsiGjI(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
