.class public final synthetic Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

.field public final synthetic f$1:Lexpo/modules/updates/procedures/FetchUpdateProcedure;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/procedures/FetchUpdateProcedure;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    iput-object p2, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    iget-object v1, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    check-cast p1, Lexpo/modules/updates/db/entity/UpdateEntity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->$r8$lambda$yMWzjRCPQyl38MudQi6xtVamOVE(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/procedures/FetchUpdateProcedure;Lexpo/modules/updates/db/entity/UpdateEntity;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
