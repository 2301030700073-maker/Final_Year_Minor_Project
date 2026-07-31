.class public final synthetic Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lexpo/modules/updates/db/entity/UpdateEntity;

    check-cast p2, Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-static {p1, p2}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;->$r8$lambda$2Ci5nawOxUV7ON4_6GGFMljUW1k(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
