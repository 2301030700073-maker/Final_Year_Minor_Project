.class public final synthetic Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    invoke-static {p1}, Lexpo/modules/ReactNativeHostWrapperBase;->$r8$lambda$cFJV46KmMuKD7Ma8f8N62Liw-iw(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
